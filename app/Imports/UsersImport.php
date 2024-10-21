<?php
namespace App\Imports;
use App\Models\User;
use App\Models\Study;
use Maatwebsite\Excel\Concerns\ToModel;
use Maatwebsite\Excel\Concerns\WithHeadingRow;
use Hash;
class UsersImport implements ToModel, WithHeadingRow
{
   
    public function model(array $row)
    {
        return new Study([
          
            'factorys'     => $row['factorys'],
            'Person'     => $row['person'],
            'Ave'     => $row['ave'],
            // 'created_at'     => $row['date'],
            
        ]);
    }
}