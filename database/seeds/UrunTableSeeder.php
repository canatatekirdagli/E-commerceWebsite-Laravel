<?php

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use App\Models\Urun;
class UrunTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run(Faker\Generator $faker)
    {
        DB::table('urun')->truncate();

        for ($i=0; $i<30; $i++)
        {
            $urun_adi = $faker->streetName;
            Urun::create([
                'urun_adi' => $urun_adi,
                'slug'     => str_slug($urun_adi),
                'aciklama' => $faker->paragraph(20),
                'fiyati'   => $faker->randomFloat(3, 1, 20)
            ]);
        };
    }
}
