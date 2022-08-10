import React from 'react';
import {Link} from 'react-router-dom';

import Container from 'react-bootstrap/Container';
import { Button } from 'react-bootstrap';

import Navbar from 'react-bootstrap/Navbar';


const Nav2=()=>{
    return(
        <div>
            {/* <Container>
            <Link to="/client/login"><Button>Login</Button></Link> &nbsp;
            <Link to="/client/registration"><Button>Registration</Button></Link> &nbsp;
            <Link to="/client/home"><Button>Home</Button></Link> &nbsp;
            <a href="/doctors/book"><Button>Doctors</Button></a> &nbsp;
            <Link to="/client/logout"><Button variant="danger">Logout</Button></Link> &nbsp;
            </Container> */}

<style type="text/css">
        {`
    .navItem {
        color: black;
      }

      .navItem2 {
        background-color: #A8B6D1;
      }

      
    `}
      </style>



    <Container>
      <Navbar expand="sm"  className="navItem2">

      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  
          <Navbar.Brand className="navItem"><Link to="/client/login" style={{ textDecoration: 'none', color:'black' }}>Login</Link> </Navbar.Brand>&nbsp;
          <Navbar.Brand className="navItem"><Link to="/client/registration" style={{ textDecoration: 'none', color:'black' }}>Registration</Link></Navbar.Brand> &nbsp;
          <Navbar.Brand className="navItem"><Link to="/client/home" style={{ textDecoration: 'none', color:'black' }}>Home</Link> </Navbar.Brand>&nbsp;
          <Navbar.Brand className="navItem"><a href="/doctors/book" style={{ textDecoration: 'none', color:'black' }}>Doctors</a></Navbar.Brand> &nbsp;

          &nbsp;&nbsp;
          <Navbar.Brand className="navItem"><Link to="/client/logout"><Button variant="danger">Logout</Button></Link> </Navbar.Brand>&nbsp;

   
      </Navbar>
    </Container>

        </div>
        
    )
}

export default Nav2;