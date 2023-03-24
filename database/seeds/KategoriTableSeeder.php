<?php

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class KategoriTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('kategori')->truncate();
        $id=DB::table('kategori')->insertGetId(['kategori_adi'=>'Kadın Saat','slug'=>'kadınsaat']);
        DB::table('kategori')->insert(['kategori_adi'=>'Kadın Klasik Saat','slug'=>'kadin-klasik','ust_id'=>$id]);
        DB::table('kategori')->insert(['kategori_adi'=>'Kadın Spor Saat','slug'=>'kadin-spor','ust_id'=>$id]);
        DB::table('kategori')->insert(['kategori_adi'=>'Çocuk','slug'=>'cocuk','ust_id'=>$id]);


        $id=DB::table('kategori')->insertGetId(['kategori_adi'=>'Erkek Saat','slug'=>'erkeksaat']);
        DB::table('kategori')->insert(['kategori_adi'=>'Erkek Klasik Saat','slug'=>'erkek-klasik','ust_id'=>$id]);
        DB::table('kategori')->insert(['kategori_adi'=>'Erkek Spor Saat','slug'=>'erkek-klasik','ust_id'=>$id]);
        DB::table('kategori')->insert(['kategori_adi'=>'Çocuk Saat','slug'=>'cocuk','ust_id'=>$id]);


        $id=DB::table('kategori')->insertGetId(['kategori_adi'=>'Akıllı Saat ve Bileklik','slug'=>'akilli-saat-bileklik']);
        DB::table('kategori')->insert(['kategori_adi'=>'Akıllı Saat','slug'=>'akilli-saat','ust_id'=>$id]);
        DB::table('kategori')->insert(['kategori_adi'=>'Akıllı Bileklik','slug'=>'akilli-bileklik','ust_id'=>$id]);


        $id=DB::table('kategori')->insertGetId(['kategori_adi'=>'Takı ve Aksesuar','slug'=>'takıveaksesuar']);
        DB::table('kategori')->insert(['kategori_adi'=>'Parfüm','slug'=>'parfum','ust_id'=>$id]);
        DB::table('kategori')->insert(['kategori_adi'=>'Kolye','slug'=>'kolye','ust_id'=>$id]);
        DB::table('kategori')->insert(['kategori_adi'=>'Küpe','slug'=>'kupe','ust_id'=>$id]);
        DB::table('kategori')->insert(['kategori_adi'=>'Yüzük','slug'=>'yuzuk','ust_id'=>$id]);
        DB::table('kategori')->insert(['kategori_adi'=>'Charm','slug'=>'charm','ust_id'=>$id]);
        DB::table('kategori')->insert(['kategori_adi'=>'Anahtarlık','slug'=>'anahtarlik','ust_id'=>$id]);
    }
}
