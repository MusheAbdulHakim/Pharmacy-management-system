<?php

namespace Database\Seeders;

use App\Models\User;
use Illuminate\Support\Str;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;

class UserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        /** @var User $user */
       $user = User::factory()->create([
            'name' => "Jamal Admin",
            'email' => "admin@admin.com",
            'password' => Hash::make('admin'),
        ]);
        $user->assignRole('super-admin');
    }
}
