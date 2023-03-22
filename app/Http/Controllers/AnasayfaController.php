<?php

namespace App\Http\Controllers;

use App\Models\Kategori;
use App\Models\Urun;

class AnasayfaController extends Controller
{
    public function index()
    {
        $kategoriler=Kategori::whereRaw('ust_id is null')->get();
        return view('anasayfa',compact('kategoriler'));
    }
}
