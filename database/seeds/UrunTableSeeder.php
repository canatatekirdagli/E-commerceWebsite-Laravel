<?php

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use App\Models\Urun;
use App\Models\UrunDetay;
class UrunTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run(Faker\Generator $faker)
    {
        DB::statement('SET FOREIGN_KEY_CHECKS=0;');
        Urun::truncate();
        UrunDetay::truncate();

        for ($i=0; $i<30; $i++)
        {
            $urun_adi = $faker->streetName;
            $urun=Urun::create([
                'urun_adi' => $urun_adi,
                'slug'     => str_slug($urun_adi),
                'aciklama' => $faker->paragraph(20),
                'fiyati'   => $faker->randomFloat(3, 1, 20)
            ]);

            $detay=$urun->detay()->create([
                'goster_one_cikan'=>rand(0,1),
                'goster_cok_satan'=>rand(0,1),
                'goster_indirimli'=>rand(0,1),
            ]);
        };
        DB::statement('SET FOREIGN_KEY_CHECKS=0;');
    }
}
