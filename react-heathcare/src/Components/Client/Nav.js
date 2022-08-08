import React from 'react';
import {Link} from 'react-router-dom';

import Container from 'react-bootstrap/Container';
import { Button } from 'react-bootstrap';

const Nav=()=>{
    return(
        <div>
            <Container>
            <Link to="/client/login"><Button>Login</Button></Link> &nbsp;
            <Link to="/client/registration"><Button>Registration</Button></Link> &nbsp;
            <Link to="/client/home"><Button>Home</Button></Link> &nbsp;
            <a href="/doctors/book"><Button>Doctors</Button></a> &nbsp;
            <Link to="/client/logout"><Button variant="danger">Logout</Button></Link> &nbsp;
            </Container>
        </div>
        
    )
}

export default Nav;