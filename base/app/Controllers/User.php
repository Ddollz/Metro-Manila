<?php

namespace App\Controllers;

use App\Models\UserModel;
use CodeIgniter\API\ResponseTrait;
use CodeIgniter\RESTful\ResourceController;

class User extends ResourceController
{

    use ResponseTrait;
    /**
     * Return an array of resource objects, themselves in array format
     *
     * @return mixed
     */
    public function index()
    {

        $model = new UserModel();
        
        $builder = $model->builder();
        $builder->select('id, username,firstname,lastname,email,mobileno,age,gender,address,city_id,barangay_id');

        $data = $model->findAll();
        return $this->respond($data);
    }

    /**
     * Return the properties of a resource object
     *
     * @return mixed
     */
    public function show($id = null)
    {
        //

    }

    public function login()
    {

        $rules = [
            'username' => 'required',
            'password' => 'required'
        ];

        if (!$this->validate($rules)) {
            return $this->fail($this->validator->getErrors());
        } else {
            $user = new UserModel();
            $username = $this->request->getVar('username');
            $password = $this->request->getVar('password');
            $is_username = $user->where('username', $username)->first();
            if ($is_username) {
                if (password_verify($password, $is_username['password'])) {
                    return $this->respondCreated(['status' => 1, 'message' => 'Login Success', 'data' => $is_username]);
                } else {
                    return $this->respondCreated(['status' => 0, 'message' => 'Wrong Password']);
                }
            }else{
                return $this->respondCreated(['status' => 0, 'message' => 'Username does not exist!']);
            }
        }
    }
    /**
     * Return a new resource object, with default properties
     *
     * @return mixed
     */
    public function new()
    {
        // $data = [
        //     'username' => $this->request->getVar('username'),
        //     'password' => $this->request->getVar('password'), PASSWORD_DEFAULT,
        // ];

    }

    /**
     * Create a new resource object, from "posted" parameters
     *
     * @return mixed
     */
    public function create()
    {
        $rules = [
            'username' => 'required',
            'password' => 'required|min_length[5]|max_length[20]',
            'firstname' => 'required',
            'lastname' => 'required',
            'email' => 'required|valid_email',
            'mobileno' => 'required|numeric',
            'age' => 'required|numeric',
            'gender' => 'required|min_length[1]|max_length[1]',
            'address' => 'required',
            'city_id' => 'required|numeric',
            'barangay_id' => 'required|numeric'
        ];
        if (!$this->validate($rules)) {
            return $this->fail($this->validator->getErrors());
        } else {
            $data = [
                'username' => $this->request->getVar('username'),
                'password' => password_hash($this->request->getVar('password'), PASSWORD_DEFAULT),
                'firstname' => $this->request->getVar('firstname'),
                'lastname' => $this->request->getVar('lastname'),
                'email' => $this->request->getVar('email'),
                'mobileno' => $this->request->getVar('mobileno'),
                'age' => $this->request->getVar('age'),
                'gender' => $this->request->getVar('gender'),
                'address' => $this->request->getVar('address'),
                'city_id' => $this->request->getVar('city_id'),
                'barangay_id' => $this->request->getVar('barangay_id'),
            ];
            // return $data;
            $model = new UserModel();
            $model->save($data);
            return $this->respondCreated($data);
        }
    }

    /**
     * Return the editable properties of a resource object
     *
     * @return mixed
     */
    public function edit($id = null)
    {
        //
    }

    /**
     * Add or update a model resource, from "posted" properties
     *
     * @return mixed
     */
    public function update($id = null)
    {
        //
    }

    /**
     * Delete the designated resource object from the model
     *
     * @return mixed
     */
    public function delete($id = null)
    {
        //
    }
}
