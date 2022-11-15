import React, { useEffect, useState } from 'react'
import './Register.css';
import '../card.css';
import { useNavigate } from "react-router-dom"
import axios from "axios";

const url = "http://localhost:8080/"
export default function Register() {
    const navigate = useNavigate();
    const [cities, setcities] = useState();
    const [baragays, setBaragays] = useState();
    const [filteredBarangay, setfilteredBarangay] = useState();

    const [inputs, setInputs] = useState({});
    const fetchCity = () => {

        axios.get(url + "city").then(function (response) {
            // console.log(response.data)
            setcities(response.data)
        })
    }

    const fetchBarangay = () => {
        axios.get(url + "barangay").then(function (response) {
            setBaragays(response.data)
            setfilteredBarangay(response.data.filter(b => b.city_id === '1'))
        })
    }
    const handleChange = (event, select = false) => {
        const name = event.target.name;
        const value = event.target.value;
        setInputs(values => ({ ...values, [name]: value }))
        if (select) {
            setfilteredBarangay(baragays.filter(b => b.city_id === event.target.value))
        }
        console.log(inputs)
    };
    const handleSubmit = (event) => {
        event.preventDefault();
        var result = '';
        var characters = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789';
        var charactersLength = characters.length;
        for (var i = 0; i < 20; i++) {
            result += characters.charAt(Math.floor(Math.random() * charactersLength));
        }
        let data = {
            "username": event.target.username.value,
            "password": event.target.password.value,
            "firstname": event.target.firstname.value,
            "lastname": event.target.lastname.value,
            "email": event.target.email.value,
            "mobileno": event.target.mobileno.value,
            "age": event.target.age.value,
            "gender": event.target.gender.value,
            "address": event.target.address.value,
            "city_id": event.target.city_id.value,
            "barangay_id": event.target.barangay_id.value,
            "ActivationMail": window.location.href+"activate/"+result
        }
        console.log(data)
        axios.post(url + "user/create", data).then(function (response) {
            console.log(response.data)
            navigate('login')
        }).catch(function (error) {
                console.log(data);
                console.log(error);
            });
    }
    useEffect(() => {
        fetchCity();
        fetchBarangay();
    }, [])
    return (
        <div className='card border-black drop-shadow-lg w-1/3  rounded-lg py-7'>
            <div className="font-semibold text-5xl text-center">
                SIGN-UP
            </div>
            <form method='POST' onSubmit={handleSubmit}>
                <div className="inputWrapper mt-5">
                    <div>
                        <label htmlFor="Usernmame">Username</label>
                        <input type="text" placeholder="Username" id="Username" name="username" required onChange={handleChange} />
                    </div>
                    <div>
                        <label htmlFor="Password">Password</label>
                        <input type="password" placeholder="Password" id="Password" name="password" required onChange={handleChange} />
                    </div>
                </div>

                <div className="inputWrapper mt-5">
                    <div>
                        <label htmlFor="Firstname">First name</label>
                        <input type="text" placeholder="Firstname" id="Firstname" name="firstname" required onChange={handleChange} />
                    </div>
                    <div>
                        <label htmlFor="Lastname">Last name</label>
                        <input type="text" placeholder="Lastname" id="Lastname" name="lastname" required onChange={handleChange} />
                    </div>
                </div>

                <div className="inputWrapper mt-5">
                    <div>
                        <label htmlFor="Email">Email address</label>
                        <input type="email" placeholder="Email" id="Email" name="email" required onChange={handleChange} />
                    </div>
                    <div>
                        <label htmlFor="Mobileno">Mobile number</label>
                        <input type="tel" placeholder="09286120906" id="Mobileno" name="mobileno" required onChange={handleChange} />
                    </div>
                </div>

                <div className="inputWrapper mt-5">
                    <div>
                        <label htmlFor="Age">Age</label>
                        <input type="text" placeholder="Age" id="Age" name="age" required onChange={handleChange} />
                    </div>
                    <div>
                        <label htmlFor="Gender">Gender</label>
                        <select name="gender" id="Gender" required onChange={handleChange} >
                            <option value='M'>Male</option>
                            <option value='F'>Female</option>
                        </select>
                    </div>
                </div>

                <div className="inputWrapper mt-5">
                    <div>
                        <label htmlFor="Address">Address 1 (House, Street, Village):</label>
                        <input type="text" placeholder="TEI Center, 3536 Hilario Street" id="Address" name="address" required onChange={handleChange} />
                    </div>
                </div>

                <div className="inputWrapper mt-5">
                    <div>
                        <label htmlFor="Municipality">Municipality</label>
                        <select name="city_id" id="Municipality" required onChange={event => handleChange(event, true)}>
                            {cities?.map((city, key) =>
                                <option key={key} value={city.id}>{city.city_name}</option>
                            )}
                        </select>
                    </div>
                    <div>
                        <label htmlFor="Barangay">Barangay</label>
                        <select name="barangay_id" id="Barangay" required onChange={handleChange}>

                            {filteredBarangay?.map((baragay, key) =>
                                <option key={key} value={baragay.id}>{baragay.barangay_name}</option>
                            )}
                        </select>
                    </div>
                </div>

                <div className="flex px-10 mt-5 justify-end items-end">
                    <button className="bg-sky-500 hover:bg-sky-700 px-5 py-2 text-sm leading-5 rounded-full font-semibold text-white">SIGN UP</button>
                </div>
            </form>
        </div>
    )
}
