<?php

namespace App\Http\Controllers;

use App\Models\Phonebook;
use Illuminate\Http\Request;

class ContactsController extends Controller
{
    public function index()
    {
        $contactsData = Phonebook::orderBy('name')->paginate(9);
        return view ('contacts', compact('contactsData'));
    }

    public function search(Request $request)
    {
        $s = $request->s;
        $contactsData = Phonebook::where('name', "LIKE", "%{$s}%")->paginate(3);
        return view ('contacts', compact('contactsData'));
    }
}
