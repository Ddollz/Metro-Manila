import React from 'react'
import { useEffect } from 'react'
import { useParams } from "react-router-dom";
import { useNavigate } from "react-router-dom"
import axios from "axios";

const url = "http://localhost:8080/"
export default function ActivationMail() {
    const navigate = useNavigate();

    const { code, id } = useParams();
    useEffect(() => {

        let data = {
            "code": code,
            "id": id
        }
        axios.post(url + "user/activate", data).then(function (response) {
            console.log(response.data)
            navigate('../login')
        }).catch(function (error) {
            console.log(error);
        });
    }, [code,id,navigate])
    return (
        <div>Activation Sucess! {code} --- {id}</div>
    )
}
