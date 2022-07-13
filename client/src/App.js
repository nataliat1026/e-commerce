import { Routes, Route } from 'react-router-dom';
import Header from './Components/Header';
import Landing from './Components/Landing';
import Footer from './Components/Footer';

function App() {
  return (
    <div className='app'>
     <Header />
        <Routes>
          <Route path='/' element={<Landing />} />
        </Routes>
     <Footer />
    </div>
  );
}

export default App;
