<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class ProductSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        //
        DB::table('products')->insert([
            [
            'name'=>'Samsung Bottom Mount Refrigerator 218L RB21KMFH5SK/D2 – Gold',
            'price'=>'2000',
            'description'=>'Some description regarding the fridge...',
            'category'=>'fridge',
            'gallery'=>'https://diamu.com.bd/wp-content/uploads/2020/06/Samsung-Bottom-Mount-Freezer-RB21KMFH5SK-D2-GOLD.jpg'
            ],
            [
            'name'=>'Samsung AR24FC2TAUR 2 Ton Split Air Conditioner',
            'price'=>'3000',
            'description'=>'Some description regarding the AC...',
            'category'=>'ac',
            'gallery'=>'https://acmartbd.com/wp-content/uploads/2015/03/Samsung-AR24FC2TAUR-2-Ton-Split-Ac1.jpg'
            ],
            [
            'name'=>'Samsung 1.5 Ton 3 Star Inverter Split AC (Copper, AR18TY3QBBU, White)',
            'price'=>'2500',
            'description'=>'Some description regarding the AC...',
            'category'=>'ac',
            'gallery'=>'https://images-na.ssl-images-amazon.com/images/I/610GPoo7JFL._SX679_.jpg'
            ]
        ]);
    }
}
