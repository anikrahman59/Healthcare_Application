import React, {useState, useEffect} from 'react';
import Container from 'react-bootstrap/Container';
import axios from 'axios';
import { Button } from 'react-bootstrap';
import {useNavigate} from 'react-router-dom';
import Form from 'react-bootstrap/Form';

const Registration=()=>{

    let[client_name, setName] = useState("");
    let[client_email, setEmail] = useState("");
    let[client_password, setPassword] = useState("");
    let[client_dob, setDob] = useState("");
    let[client_gender, setGender] = useState("");
    let[client_bg, setBg] = useState("");
    let[client_phone, setPhone] = useState("");
    let[client_address, setAddress] = useState("");

    const navigate  = useNavigate("");

    const registrationSubmit = (e) =>{
        e.preventDefault();
 
        var obj = {client_name: client_name, client_email: client_email, client_password: client_password, client_dob: client_dob, client_gender: client_gender, client_bg: client_bg, client_phone: client_phone, client_address: client_address};
        console.log(obj);
        axios.post("http://127.0.0.1:8000/api/client/registration",obj)
        .then(resp=>{
            var token = resp.data;
            console.log(token);
            var user = {name: token.client_name, email:token.client_email};
            localStorage.setItem('user',JSON.stringify(user));

            navigate('/client/login');


        }).catch(err=>{
            console.log(err);
        });
    }



    return(
<div>
            <Container>

            <br></br>

             <Form>
                {/* <span>Name :</span> &nbsp; &nbsp; &nbsp; &nbsp;
                <input type="text" value={client_name} onChange={(e)=>setName(e.target.value)}></input>

                <br></br>

                <span>Email :</span> &nbsp;
                <input type="text" value={client_email} onChange={(e)=>setEmail(e.target.value)}></input>
                <br></br>
                
                <span>Password :</span> &nbsp;
                <input type="password" value={client_password} onChange={(e)=>setPassword(e.target.value)}></input>
                <br></br>

                <span>DOB :</span> &nbsp;
                <input type="text" value={client_dob} onChange={(e)=>setDob(e.target.value)}></input>
                <br></br>
                
                <span>Gender :</span> &nbsp;
                <input type="text" value={client_gender} onChange={(e)=>setGender(e.target.value)}></input>
                <br></br>
                
                <span>BG :</span> &nbsp;
                <input type="text" value={client_bg} onChange={(e)=>setBg(e.target.value)}></input>
                <br></br>
                
                <span>Phone :</span> &nbsp;
                <input type="text" value={client_phone} onChange={(e)=>setPhone(e.target.value)}></input>
                <br></br>

                <span>Address :</span> &nbsp;
                <input type="text" value={client_address} onChange={(e)=>setAddress(e.target.value)}></input> */}

<Form.Group className="mb-0" >
        <Form.Label>Name</Form.Label>
        <Form.Control className="w-50" type="text"  value={client_name} onChange={(e)=>setName(e.target.value)}/>
</Form.Group>

<Form.Group className="mb-0" >
        <Form.Label>Email </Form.Label>
        <Form.Control className="w-50" type="text" value={client_email} onChange={(e)=>setEmail(e.target.value)}/>
</Form.Group>

<Form.Group className="mb-0" >
        <Form.Label>Password</Form.Label>
        <Form.Control className="w-50" type="password" value={client_password} onChange={(e)=>setPassword(e.target.value)}/>
</Form.Group>

<Form.Group className="mb-0" >
        <Form.Label>Date of Birth</Form.Label>
        <Form.Control className="w-50" type="text" value={client_dob} onChange={(e)=>setDob(e.target.value)}/>
</Form.Group>

<Form.Group className="mb-0" >
        <Form.Label>Gender</Form.Label>
        <Form.Control className="w-50" type="text" value={client_gender} onChange={(e)=>setGender(e.target.value)}/>
</Form.Group>

<Form.Group className="mb-0" >
        <Form.Label>Blood Group</Form.Label>
        <Form.Control className="w-50" type="text" value={client_bg} onChange={(e)=>setBg(e.target.value)}/>
</Form.Group>

<Form.Group className="mb-0" >
        <Form.Label>Phone</Form.Label>
        <Form.Control className="w-50" type="text" value={client_phone} onChange={(e)=>setPhone(e.target.value)}/>
</Form.Group>

<Form.Group className="mb-0" >
        <Form.Label>Address</Form.Label>
        <Form.Control className="w-50" type="text" value={client_address} onChange={(e)=>setAddress(e.target.value)}/>
</Form.Group>

            </Form>
            <Button variant="success" onClick={registrationSubmit}>Registration</Button>
            </Container>
        </div>

    )
    
}

export default Registration;