import React, {useState, useEffect} from 'react';
import axios from 'axios';
import {useNavigate} from 'react-router-dom';

import { Button } from 'react-bootstrap';
import Container from 'react-bootstrap/Container';
import Form from 'react-bootstrap/Form';
import Nav from './Nav';


const Login=()=>{

    let [token,setToken]=useState("");
    let[client_email, setName] = useState("");
    let[client_password, setPassword] =useState("");
    const navigate  = useNavigate("");

    const loginSubmit=()=>{

        var obj = {client_email: client_email, client_password: client_password};
        axios.post("http://127.0.0.1:8000/api/client/login",obj)
        .then(resp=>{
            var token = resp.data;
            var user = {userId: token.userid, access_token:token.token};
            localStorage.setItem('user',JSON.stringify(user));
            console.log(localStorage.getItem('user'));


            if(token == "No user found"){
                navigate('/client/login');
            }
            else
            {
                navigate('/client/home');
            }

 
         }).catch(err=>{
             console.log(err);
 
         });

    }


    return(
        <div>
            <Container>
                <Nav/>

            <br></br>

             <Form>
                {/* <span>Email :</span> &nbsp; &nbsp; &nbsp; &nbsp;
                <input type="text" value={client_email} onChange={(e)=>setName(e.target.value)}></input> */}
<Form.Group className="mb-3" controlId="formBasicEmail">
        <Form.Label>Email address</Form.Label>
            <Form.Control className="w-50" type="email" placeholder="Enter email" value={client_email} onChange={(e)=>setName(e.target.value)}/>
            <Form.Text className="text-muted">
                 We'll never share your email with anyone else.
            </Form.Text>
</Form.Group>
                

                {/* <br></br> */}

                {/* <span>Password :</span> &nbsp;
                <input type="password" value={client_password} onChange={(e)=>setPassword(e.target.value)}></input> */}

<Form.Group className="mb-3" controlId="formBasicPassword">
            <Form.Label>Password</Form.Label>
            <Form.Control className="w-50" type="password" placeholder="Password" value={client_password} onChange={(e)=>setPassword(e.target.value)} />
</Form.Group>


            </Form>
            <Button variant="success" onClick={loginSubmit}>Submit</Button>
            </Container>
        </div>
    )
}

export default Login;