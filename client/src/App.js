import { useEffect, useState } from 'react';
import { Routes, Route } from 'react-router-dom';
import Header from './Components/Header';
import Landing from './Components/Landing';
import Footer from './Components/Footer';

function App() {
  const [products, setProducts] = useState([]);

  useEffect(() => {
    fetch('/products')
    .then((resp) => resp.json())
    .then(setProducts)
  }, [])

  return (
    <div className='app'>
     <Header />
        <Routes>
          <Route path='/' element={<Landing products={products} />} />
        </Routes>
     <Footer />
    </div>
  );
}

export default App;
