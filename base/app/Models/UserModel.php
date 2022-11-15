<?php

namespace App\Models;

use CodeIgniter\Model;

class UserModel extends Model
{
    protected $DBGroup          = 'default';
    protected $table            = 'user';
    protected $primaryKey       = 'id';
    protected $allowedFields    = [
        "username", "password",
        'firstname', 'lastname',
        'email','mobileno',
        'age','gender',
        'address','status'
        ,'city_id','barangay_id','activation_link'
    ];
}
