import React,{useState} from "react"
import { HiBellAlert } from "react-icons/hi2";
import { FiDownload } from "react-icons/fi";
import { BiSolidUserCircle } from "react-icons/bi";
import { Link } from "react-router-dom";
import Alert from './Alert1'
import { toast } from "react-hot-toast";
import "../App.css";




// import { Link } from "react-router-dom";
import { auth } from "../constants/firebase";
import { useAuthState } from "react-firebase-hooks/auth";
import { signOut } from "firebase/auth";



const Navbar = (props) => {

  const[alert,setAlert]=useState(null)
  const [user] = useAuthState(auth);
  const showAlert=(message)=>{
    setAlert({
      msg:message
    })
    setTimeout(() => {
      setAlert(null);
    }, 1500);
  }
  const signUserOut = async () => {
    await signOut(auth);
  };
 
  const popAlert=()=>{
    if(!user)
    showAlert("Logged In Successfully!")
  else
  showAlert("Logged Out Successfully!")
  }

  


  let isLoggedIn = props.isLoggedIn;
  let SetIsLoggedIn = props.SetIsLoggedIn;
  return (
    <>
    <div className="flex  justify-between p-4   bg-black text-white"> 
    
    
      
      {
        user ?<div className="hovername"><img src={user?.photoURL} width="20" height="20" className=" pt-2 w-12 ml-5 rounded-full"/><div className=""><p className="absolute pt-0"> {user?.displayName} </p></div></div>:<BiSolidUserCircle size={40} className="flex mr-8 mt-2 ml-2" />
      }
       <Link to="/" className="flex items-center justify-center "><p className="ml-8 text-xl font-bold antialiased tracking-[.5em] text-white"><span className="text-5xl  ">R</span>esQ+</p></Link> 
       
      
      <nav className="flex items-center ">
        <ul className="flex gap-5 ">
          <li className="flex flex-col">
            <Link to="/"><h1>Home</h1></Link>
          </li>
          <li>
            <Link to="/chatbot"> <h1>Chatbot</h1></Link>
          </li>
          <li >
          <Link to="/Emergencydropdown"> <h1>Emergency-Contacts</h1></Link>
          </li>

        </ul>
      </nav>
      <div className="flex justify-between items-center">

        <div className="flex justify-center items-center gap-3 mr-3 ">
          {
            !user && <Link to="/login"><button className="bg-white hover:bg-blue-700 text-black font-bold py-2 px-4 rounded">Login</button></Link>}
           {
            <div className="user flex ">
              {user && (
                <>
                   {/* <p> {user?.displayName} </p>
                <img src={user?.photoURL || ""} width="20" height="20" className="absolute object-left" />  */}
                  <button className="bg-white hover:bg-black-200 text-black font-bold py-2 px-4 rounded" onClick={() => {signUserOut();popAlert();}}> Log Out</button>
                </>
              )}
            </div>



            // isLoggedIn && <Link to="/"><button onClick={() => {
            //   SetIsLoggedIn(false);
            //   toast.success("Logged Out");
            // }}>
            //   Log Out</button></Link> 
          }
          {
            !isLoggedIn && <Link to="/signup"><button className="bg-white  hover:bg-black-700 text-black font-bold py-2 px-4 rounded">Sign up</button></Link>}
         
        </div>
        <div className="flex items-center  justify-between gap-3">
          {

            // 
          }
          <Link to="/download"><button className="flex bg-white hover:bg-blue-700 text-black font-bold py-2 px-4 rounded"><FiDownload className="justify-center items-center mt-1 gap-1" />Download</button></Link>
          <Link to="/alert"><button disabled={!user} className=" flex bg-white hover:bg-blue-700 text-black font-bold py-2 px-4 rounded"><HiBellAlert className="justify-center items-center mt-1 gap-1" />Alerts</button></Link>
        </div>
      </div>
    </div>
          <div className="homealert">
      <Alert alert={alert}/>
      </div>
    </>
  )
}
export default Navbar;

