import "./App.css";


// import Preparedness from "./Components/Preparedness";
import Navbar from "./Components/Navbar";

import { Route,Routes } from "react-router-dom";
import Iconstemplate from "./Components/Iconstemplate";

import Home from "./pages/Home";
import Login from "./pages/Login";
import Signup from "./pages/Signup";
import Dashboard from "./pages/Dashboard";
import Chatbot from "./pages/Chatbot";
import Alert from "./pages/Alert";
import Download from "./pages/Download";
import Amblogo from "./pages/Amblogo";
import Floodlogo from "./pages/Floodlogo"
import FireEXtinguisherlogo from "./pages/FireEXtinguisherlogo";
import Hospital from "./pages/Hospital"
import Emergencydropdown from "./pages/Emergencydropdown";
// import post from "./pages/post"
function App() {

  return (
    <div className="bg-gradient-to-t from-gray-700 via-gray-900 to-black">
      <>
      <Navbar/>
      <Routes>
        <Route path="/" element={<Home/>} />
        <Route path="/chatbot" element={<Chatbot/>} />
        <Route path="/login" element={<Login/>} />
        <Route path="/signup" element={<Signup/>} />
        <Route path="/Dashboard" element={<Dashboard/>} />
        <Route path="/download" element={<Download/>} />
        <Route path="/alert" element={<Alert/>} />
        {/* <Route path='/post' element={<Post/>}/> */}
        <Route exact path="/Amblogo" element={<Amblogo/>} />
        <Route exact path="/FireEXtinguisherlogo" element={<FireEXtinguisherlogo/>} />
        <Route exact path="/Floodlogo" element={<Floodlogo/>} />
        <Route exact path="/Hospital" element={<Hospital/>} />
        <Route exact path="/Emergencydropdown" element={<Emergencydropdown/>}/>
      </Routes>   
      </>

      
    </div>
  );
}

export default App;
