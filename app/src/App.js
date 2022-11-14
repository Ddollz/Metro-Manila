import './App.css';
import Register from './components/register/Register'
import Login from './components/login/Login'
import Welcome from './components/Welcome'
import {Route, Routes} from "react-router-dom"

function App() {
  return (
    <div className="App container mx-auto">
      <div className="content w-full h-full flex items-center justify-center">
        <Routes>
          <Route path='/' element={<Register></Register>}></Route>
          <Route path='login' element={<Login></Login>}></Route>
          <Route path='welcome' element={<Welcome></Welcome>}></Route>
        </Routes>
        {/* <Register></Register> */}
        {/* <Login></Login> */}
        {/* <Welcome></Welcome> */}
      </div>
    </div>
  );
}

export default App;
