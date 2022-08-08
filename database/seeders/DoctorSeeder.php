<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\doctor;

class DoctorSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        \App\Models\doctor::factory()->create([
            'doctor_name' => 'raha',
            'doctor_email' => 'raha@gmail.com',
            'doctor_name' => 'rahat',
            'doctor_email' => 'rahat@gmail.com',
            'doctor_password' => md5('abc5678'),
            'doctor_gender' => 'female',
            'doctor_bg' => 'A+',
            'doctor_phone' => '01711113333'
        ]);
    }
}
