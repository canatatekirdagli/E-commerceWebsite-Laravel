<?php

namespace App\Http\Controllers\Yonetim;

use App\Http\Controllers\Controller;
use App\Models\Kategori;
use App\Models\Urun;
use App\Models\UrunDetay;
use App\Models\Siparis;
use File;

class SiparisController extends Controller
{
    public function index()
    {
        if (request()->filled('aranan')) {
            request()->flash();
            $aranan = request('aranan');
            $list = Urun::where('adsoyad', 'like', "%$aranan%")
                ->orWhere('banka', 'like', "%$aranan%")
                ->orderByDesc('id')
                ->paginate(8)
                ->appends('aranan', $aranan);
        } else {
            $list = Siparis::orderByDesc('id')->paginate(8);
        }

        return view('yonetim.siparis.index', compact('list'));
    }

    public function form($id = 0)
    {
        if ($id > 0) {
            $entry = Siparis::with('sepet.sepet_urunler.urun')->find($id);
        }

        return view('yonetim.siparis.form', compact('entry'));
    }

    public function kaydet($id = 0)
    {
        $this->validate(request(), [
            'adsoyad' => 'required',
            'adres'   => 'required',
            'telefon' => 'required',
            'durum'   => 'required'
        ]);

        $data = request()->only('adsoyad', 'adres', 'telefon', 'ceptelefonu', 'durum');

        if ($id > 0) {
            $entry = Siparis::where('id', $id)->firstOrFail();
            $entry->update($data);
        }

        return redirect()
            ->route('yonetim.siparis.duzenle', $entry->id)
            ->with('mesaj', 'Güncellendi')
            ->with('mesaj_tur', 'success');
    }

    public function sil($id)
    {
        Siparis::destroy($id);

        return redirect()
            ->route('yonetim.siparis')
            ->with('mesaj', 'Kayıt silindi')
            ->with('mesaj_tur', 'success');
    }
}
