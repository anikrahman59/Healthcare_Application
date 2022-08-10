import React, {useState,useEffect} from 'react';
import axios from 'axios';

import Table from 'react-bootstrap/Table';
import Container from 'react-bootstrap/Container';
import { Button } from 'react-bootstrap';
import Nav2 from './Nav2';



const Doctors=()=>{

    const [doctors,setDoctors]= useState([]);

    useEffect(()=>{
        axios.get("http://127.0.0.1:8000/api/doctors/book")
        .then(resp=>{
           console.log(resp.data);
           setDoctors(resp.data);

        }).catch(err=>{
            console.log(err);

        });
    },[]);

    return(
        <div>
            
            <Container>
                <Nav2/> <br></br>
            <h3>Here All Our Specialized Doctors</h3> <br></br>
            <Table striped bordered hover>
            <thead>
                <tr>
                    <th>Name</th>
                    <th>Email</th>
                    <th>Phone</th>
                    <th>Gender</th>
                    <th>Specialized</th>
                    <th>Appointment</th>
                </tr>
            </thead>
            <tbody>
                {
                    doctors.map(p=>(
                        <tr key={p.id}>
                            <td>{p.doctor_name}</td>
                            <td>{p.doctor_email}</td>
                            <td>{p.doctor_phone}</td>
                            <td>{p.doctor_gender}</td>
                            <td>{p.doctor_specialized}</td>
                            <td><Button variant="outline-success">Book Appointment</Button></td>

                        </tr>
                    ))
                }
            </tbody>
            </Table>
            </Container>

        </div>
        
    )

}

export default Doctors;