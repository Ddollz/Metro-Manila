import axios from "axios";
import React, { useEffect, useState } from 'react';
import { useNavigate } from "react-router-dom";
import '../card.css';
import './Register.css';

const url = "http://localhost:8080/"
export default function Register() {
    const navigate = useNavigate();
    const [cities, setcities] = useState();
    const [baragays, setBaragays] = useState();
    const [filteredBarangay, setfilteredBarangay] = useState();
    const [error, setError] = useState({});

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
            "ActivationMail": window.location.href + "activate/" + result
        }
        console.log(data)
        axios.post(url + "user/create", data).then(function (response) {
            console.log(response.data)
            navigate('login')
        }).catch(function (e) {
            setError(e.response.data.messages)
            console.log(error)
        });
    }
    useEffect(() => {
        fetchCity();
        fetchBarangay();
    }, [])
    return (
        <div className='card border-black drop-shadow-lg min-w-1/3  rounded-lg py-7'>
            <div className="font-semibold text-5xl text-center">
                SIGN-UP
            </div>
            <form method='POST' onSubmit={handleSubmit}>
                <div className="inputWrapper mt-5">
                    <div>
                        <label htmlFor="Usernmame" className={error['username'] ? 'text-rose-500' : ''} >Username</label>
                        <input type="text" placeholder="Username" id="Username" name="username" className={error['username'] ? 'text-rose-500' : ''} required onChange={handleChange} />
                    </div>
                    <div>
                        <label htmlFor="Password" className={error['password'] ? 'text-rose-500' : ''}>Password</label>
                        <input type="password" placeholder="Password" id="Password" name="password" className={error['password'] ? 'text-rose-500' : ''} required onChange={handleChange} />
                    </div>
                </div>

                <div className="inputWrapper mt-5">
                    <div>
                        <label htmlFor="Firstname" className={error['firstname'] ? 'text-rose-500' : ''}>First name</label>
                        <input type="text" placeholder="Firstname" id="Firstname" name="firstname" className={error['firstname'] ? 'text-rose-500' : ''} required onChange={handleChange} />
                    </div>
                    <div>
                        <label htmlFor="Lastname" className={error['lastname'] ? 'text-rose-500' : ''}>Last name</label>
                        <input type="text" placeholder="Lastname" id="Lastname" name="lastname" className={error['lastname'] ? 'text-rose-500' : ''} required onChange={handleChange} />
                    </div>
                </div>

                <div className="inputWrapper mt-5">
                    <div>
                        <label htmlFor="Email" className={error['email'] ? 'text-rose-500' : ''}>Email address</label>
                        <input type="email" placeholder="Email" id="Email" name="email" className={error['email'] ? 'text-rose-500' : ''} required onChange={handleChange} />
                    </div>
                    <div>
                        <label htmlFor="Mobileno" className={error['mobileno'] ? 'text-rose-500' : ''}>Mobile number</label>
                        <input type="number" placeholder="09286120906" className={error['mobileno'] ? 'text-rose-500' : ''} id="Mobileno" name="mobileno" required onChange={handleChange} />
                    </div>
                </div>

                <div className="inputWrapper mt-5">
                    <div>
                        <label htmlFor="Age" className={error['age'] ? 'text-rose-500' : ''}>Age</label>
                        <input type="text" placeholder="Age" id="Age" name="age" className={error['age'] ? 'text-rose-500' : ''} required onChange={handleChange} />
                    </div>
                    <div>
                        <label htmlFor="Gender" className={error['gender'] ? 'text-rose-500' : ''}>Gender</label>
                        <select name="gender" id="Gender" required className={error['gender'] ? 'text-rose-500' : ''} onChange={handleChange} >
                            <option value='M'>Male</option>
                            <option value='F'>Female</option>
                        </select>
                    </div>
                </div>

                <div className="inputWrapper mt-5">
                    <div>
                        <label htmlFor="Address" className={error['address'] ? 'text-rose-500' : ''}>Address 1 (House, Street, Village):</label>
                        <input type="text" placeholder="TEI Center, 3536 Hilario Street" id="Address" name="address" className={error['address'] ? 'text-rose-500' : ''} required onChange={handleChange} />
                    </div>
                </div>

                <div className="inputWrapper mt-5">
                    <div>
                        <label htmlFor="Municipality">Municipality</label>
                        <select name="city_id" id="Municipality" className={error['city_id'] ? 'text-rose-500' : ''} required onChange={event => handleChange(event, true)}>
                            {cities?.map((city, key) =>
                                <option key={key} value={city.id}>{city.city_name}</option>
                            )}
                        </select>
                    </div>
                    <div>
                        <label htmlFor="Barangay">Barangay</label>
                        <select name="barangay_id" id="Barangay" className={error['barangay_id'] ? 'text-rose-500' : ''} required onChange={handleChange}>

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
