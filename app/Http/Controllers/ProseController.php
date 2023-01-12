<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Prose;

class ProseController extends Controller
{
    public function indexWithPoet()
    {
        return Prose::inRandomOrder()->with('poet:id,name')->get(['id', 'tags', 'qoute', 'reviewed', 'poet_id']);
    }

    public function indexRandom($num)
    {
        return Prose::inRandomOrder()->limit($num)->where('reviewed', true)->get(['id', 'tags', 'qoute', 'reviewed', 'poet_id']);
    }
    public function indexOneWithPoet($id)
    {
        $prose = Prose::with(['poet:id,name,bio,time_period'])->where('reviewed', true)->find($id, ['id', 'tags', 'qoute', 'reviewed', 'poet_id']);

        if ($prose) {
            return $prose;
        }
        return 'Not Found';
    }

    public function store(Request $request)
    {
        $newProse = new Prose;
        $newProse->poet_id = $request->prose['poet_id'];
        $newProse->tags = $request->prose['tags'];
        $newProse->qoute = $request->prose['qoute'];
        $newProse->reviewed = $request->prose['reviewed'];

        $newProse->save();
        return $newProse;
    }

    public function update(Request $request, $id)
    {
        $existingProse = Prose::find($id);

        $existingProse->tags = $request->prose['tags'];

        $existingProse->save();
        return $existingProse;
    }
    public function destroy($id)
    {
        $existingProse = Prose::find($id);
        if ($existingProse) {
            $existingProse->delete();
            return "Deleted";
        }
        return "Not Found";
    }
}
