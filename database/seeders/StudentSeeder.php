<?php

namespace Database\Seeders;

use App\Models\Student;
use Carbon\Carbon;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Schema;

class StudentSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Schema::disableForeignKeyConstraints();
        Student::truncate();
        Schema::enableForeignKeyConstraints();

        $data = [
            ['name' => 'Hayu', 'gender' => 'L', 'nis' => '001', 'class_id' => 1],
            ['name' => 'Haiya', 'gender' => 'P', 'nis' => '002', 'class_id' => 2],
            ['name' => 'Haih', 'gender' => 'L', 'nis' => '003', 'class_id' => 2],
            ['name' => 'Hayii', 'gender' => 'P', 'nis' => '004', 'class_id' => 1],
        ];

        foreach ($data as $value) {
            Student::insert([
                'name' => $value['name'],
                'gender' => $value['gender'],
                'nis' => $value['nis'],
                'class_id' => $value['class_id'],
                'created_at' => Carbon::now(),
                'updated_at' => Carbon::now(),
            ]);
        }

        Student::factory()->count(20)->create();
    }
}
