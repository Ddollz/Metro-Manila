import React, { useEffect, useState } from 'react'
import axios from "axios";
import './welcome.css';

const url = "http://localhost:8080/"
export default function Welcome() {

    const username = localStorage.getItem("user");
    const [users, setUsers] = useState([]);
    const [cities, setCities] = useState([]);
    const [city_idFilter, setCity_idFilter] = useState('');
    const [barangays, setBaragays] = useState([]);
    const [barangays_idFilter, setbarangays_idFilter] = useState('');
    const [search, setSearch] = useState("");
    const [filteredBarangay, setfilteredBarangay] = useState([]);

    const fetchUser = () => {

        axios.get(url + "user").then(function (response) {
            setUsers(response.data)
        })
    }

    const fetchCity = () => {

        axios.get(url + "city").then(function (response) {
            setCities(response.data)
        })
    }

    const fetchBarangay = () => {
        axios.get(url + "barangay").then(function (response) {
            setBaragays(response.data)
            setfilteredBarangay(response.data.filter(b => b.city_id === '1'))
        })
    }

    const gender = (g) => {
        if (g === 'M') {
            return 'Male'
        } else {
            return 'Femail'
        }
    }

    const barangay = (b) => {
        if (barangays.filter(br => br.id === b)[0]) {
            return barangays.filter(br => br.id === b)[0].barangay_name;
        }
    }
    const city = (c) => {
        if (cities.filter(ct => ct.id === c)[0]) {
            return cities.filter(ct => ct.id === c)[0].city_name;
        }
    }
    const searchUser = (e) => {
        return e.filter(user => {
            return user.username.toLowerCase().includes(search.toLowerCase()) ||
                user.firstname.toLowerCase().includes(search.toLowerCase()) ||
                user.lastname.toLowerCase().includes(search.toLowerCase()) ||
                user.email.toLowerCase().includes(search.toLowerCase()) ||
                user.age.toLowerCase().includes(search.toLowerCase())
        })
    }


    const handleCityFilter = (event, e) => {
        setfilteredBarangay(barangays.filter(b => b.city_id === event.target.value))
        setCity_idFilter(event.target.value)
    };
    
    const handleBarangayFilter = (event, e) => {
        setbarangays_idFilter(event.target.value)
    };
    useEffect(() => {
        fetchUser();
        fetchCity();
        fetchBarangay();
    }, [])
    return (
        <div className='card border-black drop-shadow-lg w-3/4  rounded-lg py-7'>
            <div className='text-center font-bold text-lg border-b-2 pb-5'>
                <span className='text-3xl'>Hello <span className='text-sky-500'>{username}!</span>,</span> <br /> Welcome to my Test Page
            </div>
            <div className="">
                <div className='my-5 mx-5 flex gap-5 control'>
                    <div>
                        <label htmlFor="search" className='font-semibold mr-3'>Search: </label><input type="text" id="search" placeholder='Search...' className='p-1' onChange={(e) => setSearch(e.target.value)} />
                    </div>
                    <div>
                        <label htmlFor="Barangay" className='font-semibold mr-3'>Cities:</label>
                        <select name="Barangay" id="Barangay" className='p-1' required onChange={event => handleCityFilter(event, users)}>
                            <option defaultValue=''>All</option>
                            {cities.map((city, key) =>
                                <option key={key} value={city.id}>{city.city_name}</option>
                            )}
                        </select>
                    </div>
                    <div>
                        <label htmlFor="Barangay" className='font-semibold mr-3'>Barangay:</label>
                        <select name="Barangay" id="Barangay" className='p-1' required onChange={event => handleBarangayFilter(event, users)}>
                            <option defaultValue=''>All</option>
                            {filteredBarangay.map((baragay, key) =>
                                <option key={key} value={baragay.id}>{baragay.barangay_name}</option>
                            )}
                        </select>
                    </div>
                </div>
                <div className='overflow-x-auto relative'>
                    <table className="w-full text-sm text-left ">
                        <thead className="text-xs 0">
                            <tr>
                                <th scope="col" className="py-3 px-6">
                                    Username
                                </th>
                                <th scope="col" className="py-3 px-6">
                                    Name
                                </th>
                                <th scope="col" className="py-3 px-6">
                                    Email
                                </th>
                                <th scope="col" className="py-3 px-6">
                                    Contact Number
                                </th>
                                <th scope="col" className="py-3 px-6">
                                    Gender
                                </th>
                                <th scope="col" className="py-3 px-6">
                                    Age
                                </th>
                                <th scope="col" className="py-3 px-6">
                                    Barangay
                                </th>
                                <th scope="col" className="py-3 px-6">
                                    Municipality
                                </th>
                            </tr>
                        </thead>
                        <tbody>
                            {searchUser(users).filter(user => {
                                if (city_idFilter !== '') {
                                    if (user.city_id === city_idFilter) {
                                        return user
                                    }
                                    return false
                                }else{
                                    return user
                                }
                            }).filter(user => {
                                if (barangays_idFilter !== '') {
                                    if (user.barangay_id === barangays_idFilter) {
                                        return user
                                    }
                                    return false
                                }else{
                                    return user
                                }
                            }).map((user, key) =>
                                <tr className=" border-b " key={key}>
                                    <th scope="row" className="py-4 px-6 ">
                                        {user.username}
                                    </th>
                                    <td className="py-4 px-6">
                                        {user.firstname} {user.lastname}
                                    </td>
                                    <td className="py-4 px-6">
                                        {user.email}
                                    </td>
                                    <td className="py-4 px-6">
                                        {user.mobileno}
                                    </td>
                                    <td className="py-4 px-6">
                                        {gender(user.gender)}
                                    </td>
                                    <td className="py-4 px-6">
                                        {user.age}
                                    </td>
                                    <td className="py-4 px-6">
                                        {barangay(user.barangay_id)}
                                    </td>
                                    <td className="py-4 px-6">
                                        {city(user.city_id)}
                                    </td>
                                </tr>
                            )}
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    )
}
