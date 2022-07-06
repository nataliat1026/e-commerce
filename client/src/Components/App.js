import { Routes, Route } from 'react-router-dom';
// import { useState, useEffect } from "react";
import NavBar from './NavBar';
import Landing from './Landing';
import Footer from './Footer';



function App() {


  return (
    <>
      <NavBar />
        <Routes>
          <Route path='/' element={<Landing />} />
        </Routes>
      <Footer />
    </>
  );
}

export default App;