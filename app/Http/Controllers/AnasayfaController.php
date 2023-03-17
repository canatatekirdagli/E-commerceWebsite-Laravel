<?php

namespace App\Http\Controllers;

use App\Models\Kategori;
use App\Models\Urun;

class AnasayfaController extends Controller
{
    public function index()
    {
        return view('anasayfa');
    }
}
