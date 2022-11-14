<?php

namespace App\Models;

use CodeIgniter\Model;

class BarangayModel extends Model
{
    protected $table            = 'barangay';
    protected $primaryKey       = 'id';
    protected $allowedFields    = ["barangay_name","city_id"];

}
