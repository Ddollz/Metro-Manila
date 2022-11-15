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
        $builder->select('id, username,firstname,lastname,email,mobileno,age,gender,address,status,city_id,barangay_id');

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
                if ($is_username['status'] == 1) {
                    if (password_verify($password, $is_username['password'])) {
                        return $this->respondCreated(['status' => 1, 'message' => 'Login Success', 'data' => $is_username]);
                    } else {
                        return $this->respondCreated(['status' => 0, 'message' => 'Wrong Password']);
                    }
                } else {
                    return $this->respondCreated(['status' => 0, 'message' => 'Account is not activated!']);
                }
            } else {
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
        $chars = array(
            'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm',
            'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z',
            'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M',
            'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z',
            '0', '1', '2', '3', '4', '5', '6', '7', '8', '9'
        );

        shuffle($chars);

        $num_chars = count($chars) - 1;
        $token = '';

        for ($i = 0; $i < $num_chars; $i++) { // <-- $num_chars instead of $len
            $token .= $chars[mt_rand(0, $num_chars)];
        }

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
                'activation_link' => $this->request->getVar('ActivationMail'),
            ];


            $model = new UserModel();
            $model->save($data);


            $message = "Please activate the account " . anchor($data['activation_link'] . '/' . $model->getInsertID(), 'Activate Now', '');
            $email = \Config\Services::email();

            $email->setFrom('harudavy@gmail.com', 'harudavy');
            $email->setTo($this->request->getVar('email'));

            $email->setSubject('Activate the account');
            $email->setMessage($message);

            $email->send();
            $email->printDebugger(['headers']);
            return $this->respondCreated($data);
        }
    }

    public function activate()
    {

        $data = [
            'status' => 1,
        ];
        $id = $this->request->getVar('id');

        $model = new UserModel();
        $model->update($id, $data);

        return $this->respondCreated($data);
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
