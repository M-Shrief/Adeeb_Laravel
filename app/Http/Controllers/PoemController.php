<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Poem;

class PoemController extends Controller
{
    public function indexWithPoet()
    {
        return Poem::with('poet:id,name')->get(['id', 'intro', 'verses', 'poet_id']);
    }

    public function indexIntrosWithPoetName()
    {
        $poem = Poem::with('poet:id,name')->get(['id', 'intro', 'poet_id']);
        if ($poem) {
            return $poem;
        } else {
            return 'Not Found';
        }
    }


    public function indexOneWithPoet($id)
    {
        $poem = Poem::with('poet:id,name,bio,time_period')->find($id, ['id', 'intro', 'verses', 'poet_id']);
        if ($poem) {
            return $poem;
        }
        return 'Not Found';
    }

    public function store(Request $request)
    {
        $newPoem = new Poem;
        $newPoem->poet_id = $request->poet_id;
        $newPoem->intro = $request->intro;
        $newPoem->verses  = $request->verses;
        $newPoem->save();
        return $newPoem;
    }

    public function update(Request $request, $id)
    {
        $existingPoem = Poem::find($id);

        $existingPoem->reviewed = $request->poem['reviewed'];

        $existingPoem->save();
        return $existingPoem;
    }

    public function destroy($id)
    {
        $existingPoem = Poem::find($id);
        if ($existingPoem) {
            $existingPoem->delete();
            return "Deleted";
        }
        return "Not Found";
    }
}
