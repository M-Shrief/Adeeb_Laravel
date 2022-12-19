<?php

namespace App\Http\Controllers;

use App\Models\ChosenVerses;
use Illuminate\Http\Request;

class ChosenVersesController extends Controller
{
    public function indexWithPoetAndPoem()
    {
        return ChosenVerses::with(['poet:id,name'])->where('reviewed', true)->get(['id', 'verse', 'tags', 'poet_id', 'poem_id']);
    }

    public function indexOneWithPoet($id)
    {
        $chosenVerse = ChosenVerses::with(['poet:id,name,bio,time_period'])->where('reviewed', true)->find($id, ['id', 'verse', 'tags', 'poet_id', 'poem_id']);

        if ($chosenVerse) {
            return $chosenVerse;
        }
        return 'Not Found';
    }

    public function store(Request $request)
    {
        // security: we can pass another parameters and it ignores them
        $newChosenVerses = new ChosenVerses;
        $newChosenVerses->poet_id = $request->chosen_verse['poet_id'];
        $newChosenVerses->poem_id = $request->chosen_verse['poem_id'];
        $newChosenVerses->tags = $request->chosen_verse['tags'];
        $newChosenVerses->verse = $request->chosen_verse['verse'];

        $newChosenVerses->save();
        return $newChosenVerses;
    }
    public function update(Request $request, $id)
    {
        $existingChosenVerses = ChosenVerses::find($id);
        if ($existingChosenVerses) {
            $existingChosenVerses->reviewed = $request->chosen_verse['reviewed'];
            // $existingChosenVerses->verse = $request->chosen_verse['verse'];

            $existingChosenVerses->save();
            return $existingChosenVerses;
        }
        return 'Not Found';
    }
    public function destroy($id)
    {
        $existingChosenVerses = ChosenVerses::find($id);
        if ($existingChosenVerses) {
            $existingChosenVerses->delete();
            return "Deleted";
        }
        return "Not Found";
    }
}
