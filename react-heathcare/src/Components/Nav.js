import React from 'react';
import {Link} from 'react-router-dom';

import Container from 'react-bootstrap/Container';
import { Button } from 'react-bootstrap';

const Nav=()=>{
    return(
        <div>
            <Container>
            <Link to="/login"><Button>Login</Button></Link> &nbsp;
            <Link to="/registration"><Button>Registration</Button></Link> &nbsp;
            <Link to="/home"><Button>Home</Button></Link> &nbsp;
            <a href="/doctors"><Button>Doctors</Button></a> &nbsp;
            <Link to="/logout"><Button variant="danger">Logout</Button></Link> &nbsp;
            </Container>
        </div>
        
    )
}

export default Nav;