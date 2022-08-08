import React from 'react';
import ReactDOM from 'react-dom/client';
import './index.css';
import App from './App';
import reportWebVitals from './reportWebVitals';

import { BrowserRouter as Router , Route, Routes} from 'react-router-dom';
import Nav from './Components/Client/Nav';
import Login from './Components/Client/Login';
import axios from 'axios';
import Home from './Components/Client/Home';
import Doctors from './Components/Client/Doctors';

import 'bootstrap/dist/css/bootstrap.min.css';
import Registration from './Components/Client/Registration';
import SignOut from './Components/Client/SignOut';


var token=null;
if(localStorage.getItem('user')){
  var obj=JSON.parse(localStorage.getItem('user'));
  token=obj.access_token;
}
axios.defaults.headers.common["Authorization"]= token;

const root = ReactDOM.createRoot(document.getElementById('root'));
root.render(
  <React.StrictMode>

  <Router>
    <Nav/>

    <Routes>
       <Route exact path='/client/login' element={<Login/>} />
       <Route exact path='/client/home' element={<Home/>} />
       <Route exact path='/doctors/book' element={<Doctors/>} /> 
       <Route exact path='/client/registration' element={<Registration/>} /> 
       <Route exact path='/client/logout' element={<SignOut/>} />

    </Routes>
  </Router>

  </React.StrictMode>
);

// If you want to start measuring performance in your app, pass a function
// to log results (for example: reportWebVitals(console.log))
// or send to an analytics endpoint. Learn more: https://bit.ly/CRA-vitals
reportWebVitals();
