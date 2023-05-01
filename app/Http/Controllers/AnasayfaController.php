<?php

namespace App\Http\Controllers;

use App\Models\Kategori;
use App\Models\Urun;
use App\Models\UrunDetay;

class AnasayfaController extends Controller
{
    public function index()
    {
        $kategoriler=Kategori::whereRaw('ust_id is null')->get();

        $urunler_one_cikan = Urun::select('urun.*')
            ->join('urun_detay', 'urun_detay.urun_id', 'urun.id')
            ->where('urun_detay.goster_one_cikan', 1)
            ->orderBy('guncelleme_tarihi', 'desc')
            ->take(8)->get();

        $urunler_cok_satan = Urun::select('urun.*')
            ->join('urun_detay', 'urun_detay.urun_id', 'urun.id')
            ->where('urun_detay.goster_cok_satan', 1)
            ->orderBy('guncelleme_tarihi', 'desc')
            ->take(8)->get();

        $urunler_indirimli = Urun::select('urun.*')
            ->join('urun_detay', 'urun_detay.urun_id', 'urun.id')
            ->where('urun_detay.goster_indirimli', 1)
            ->orderBy('guncelleme_tarihi', 'desc')
            ->take(8)->get();

        return view('anasayfa',compact('kategoriler','urunler_one_cikan','urunler_cok_satan','urunler_indirimli'));
    }
    public function fatura(){
        return view('fatura');
    }
    public function kargoveiade(){
        return view('kargoveiade');
    }
    public function nasilalirim(){
        return view('nasilalirim');
    }
    public function neden(){
        return view('neden');
    }
}
