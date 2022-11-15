import React from 'react'
import '../card.css';
import './Login.css';
import { useNavigate } from "react-router-dom"
import axios from "axios";

const url = "http://localhost:8080/"
export default function Login() {
    const navigate = useNavigate();

    const handleSubmit = (event) => {
        event.preventDefault();
        let data = {
            "username": event.target.username.value,
            "password": event.target.password.value,
        }
        console.log(data)
        axios.post(url + "user/login", data).then(function (response) {
            if (response.data.status === 0) {
                alert(response.data.message)
            } else {
                console.log(response.data.data)
                localStorage.setItem("user", response.data.data.username)
                navigate('../welcome')
            }
        }).catch(function (error) {
            console.log(error);
        });
    }
    return (
        <div className='card border-black drop-shadow-lg min-w-1/3  rounded-lg py-7'>
            <div className="font-semibold text-5xl text-center">
                LOGIN
            </div>
            <form method='POST' onSubmit={handleSubmit}>

                <div className="inputWrapper row mt-5">
                    <div>
                        <label htmlFor="Usernmame">Username</label>
                        <input type="text" placeholder="Username" id="Username" name="username" required />
                    </div>
                    <div>
                        <label htmlFor="Password">Password</label>
                        <input type="password" placeholder="Password" id="Password" name="password" required />
                    </div>
                </div>

                <div className="flex px-10 mt-5 justify-end items-end">
                    <button className="bg-sky-500 hover:bg-sky-700 px-5 py-2 text-sm leading-5 rounded-full font-semibold text-white">LOG IN</button>
                </div>
            </form>
        </div>
    )
}
