import { Routes, Route } from 'react-router-dom';
// import { useState, useEffect } from "react";
import NavBar from './Components/NavBar';
import Landing from './Components/Landing';
import Footer from './Components/Footer';



function App() {


  return (
    <div>
     <NavBar />
        <Routes>
          <Route path='/' element={<Landing />} />
        </Routes>
     <Footer />
    </div>
  );
}

export default App;
