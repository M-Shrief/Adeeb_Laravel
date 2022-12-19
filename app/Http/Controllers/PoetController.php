<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Poet;
use App\Models\Poem;
use App\Models\ChosenVerses;
use App\Models\Prose;

class PoetController extends Controller
{
    public function index()
    {
        return Poet::all(['id', 'name', 'time_period']);
    }

    public function indexOneWithPoemsAndChosenVersesAndProses($id)
    {
        $details = Poet::find($id, ['id', 'name', 'bio', 'time_period']);
        $poems =  Poem::where('poet_id', $id)->where('reviewed', true)->get(['id', 'intro', 'poet_id']);
        $chosenVerses = ChosenVerses::where('poet_id', $id)->where('reviewed', true)->get(['id', 'verse', 'poet_id', 'poem_id']);
        $proses = Prose::where('poet_id', $id)->where('reviewed', true)->get(['id', 'qoute', 'tags', 'poet_id']);
        if ($details) {
            $poet =  [$details, $poems, $chosenVerses, $proses];
            return $poet;
        }
        return 'Not Found';
    }

    public function store(Request $request)
    {
        $newPoet = new Poet;
        $newPoet->name = $request->poet['name'];
        $newPoet->time_period = $request->poet['time_period'];
        $newPoet->bio = $request->poet['bio'];
        $newPoet->save();
        return $newPoet;
    }

    public function update(Request $request, $id)
    {
        $poet = Poet::find($id);

        if ($poet) {
            $poet->bio = $request->poet['bio'];
            $poet->save();

            return $poet;
        }
        return 'Not Found';
    }

    public  function destroy($id)
    {
        $existingPoet = Poet::find($id);

        if ($existingPoet) {
            $existingPoet->delete();
            return "Deleted!";
        }
        return "Not Found";
    }
}
