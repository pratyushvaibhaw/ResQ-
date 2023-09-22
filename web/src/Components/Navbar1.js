import React,{useState} from 'react'
import {Link} from "react-router-dom"
import Alert from './Alert1'
export default function Navbar(props) {
  const[alert,setAlert]=useState(null)
  //  const[home,setHome]=useState('Home')
  //  const[edit,setEdit]=useState('Home')
  const showAlert=(message)=>{
    setAlert({
      msg:message
    })
    setTimeout(() => {
      setAlert(null);
    }, 1500);
  }
  const popAlert=()=>{
    showAlert("Alert Sent Successfully!")
    //  setEdit('Home')
    //  setHome('Home')
}
// const toggleHome=()=>{
//   if(edit==='Home'){
//     setEdit('Form')
//     setHome('Back To Home')
//   }
//   else if(edit==='Form'){
//     setEdit('Home')
//     setHome('Home')
//   }
//   }
  return (
    <>
      <div className="sidebar">
        <header>
          <div className="adminlogo">
            <i className="fa fa-user"></i>
          </div>

          <h1>Agency Head</h1>
        </header>
        <div className="menu">
          <div className="item"><i className="fa fa-info-circle"></i>Agency's Information
            <div className="submenu">
              <ul>
                <li>Location:</li>
                <li>Rescuers:</li>
                <li>Other Details:</li>
              </ul>
            </div>
          </div>
          <hr className="whiteline"/>
          <div className="item"><i className="fa fa-ambulance"></i>
            Available Resources
            <div className="submenu">
              <ul>
                <li>Vehicles:</li>
                <li>Emergency Kit:</li>
                <li>Other Details:</li>
              </ul>
            </div>
          </div>
          <hr />
          <div className="item"><Link to="/rescue/edit" classname="submenu editbtn" onClick={props.toggleList} style={{pointerEvents:props.list==='List'?'none':'auto'}}><i className="fa fa-th-large"></i>Edit Details</Link>
          </div>
          <hr/>
          <div className="item"><Link to="/" className="submenu logout"><i className="fa fa-sign-out"></i>Logout</Link>
          </div>
        </div>
      </div>
      <div className="navbar">
        <ul className="btnnav">
        <li><Link to="/rescue/rescue" style={{pointerEvents:props.list==='Home'?'none':'auto'}} className="hmbtn" onClick={props.toggleList}><i className="fa fa-home" ></i>{props.listhome}</Link></li>
          <li className="logo"><h1>R</h1>esQ+</li>
          <li><Link to="/rescue/rescue" style={{pointerEvents:props.list==='Home'?'auto':'none'}}><i className="fa fa-download"></i>Download App</Link></li>
          <li><Link to="/rescue/rescue" style={{pointerEvents:props.list==='Home'?'auto':'none'}} onClick={popAlert}><i className="fa fa-exclamation-triangle"></i>Send Alert</Link></li>
        <li><Link to="/rescue/rescue" style={{pointerEvents:props.list==='Home'?'auto':'none'}}><i className="fa fa-comment"></i>Help Requests</Link></li>
          </ul>
      </div>
      <Alert alert={alert}/>
    </>
  )
}
