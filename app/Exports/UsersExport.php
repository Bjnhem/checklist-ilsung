<?php
namespace App\Exports;
use App\Models\User;
use App\Models\Study;
use Maatwebsite\Excel\Concerns\FromCollection;
use Maatwebsite\Excel\Concerns\WithHeadings;
class UsersExport implements FromCollection, WithHeadings
{
    /**
 
    */
    public function collection()
    {
        return Study::get();
    }
    public function headings(): array
    {
        return ["Factory", "Total Person Days", "Avr.Hour","Date Time"];
    }
    public function map($row): array
    {
        return [
            $row->factorys,
            $row->Person,
            $row->Ave,
            $row->created_at
        ];
    }
}