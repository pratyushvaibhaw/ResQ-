import React,{useState} from 'react'
import {Link} from "react-router-dom"
import Alert from "./Alert1"
export default function Alertsend() {
    const[alert,setAlert]=useState(null)
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
      }
  return (
    <><Alert alert={alert}/>
    <div className="alertsend">
        <div>
            <textarea type="text" className="box" placeholder="Enter the alert message"/>
        </div>
        <div className="sendalertbtn">
        <Link to="/rescue/alert" onClick={popAlert}>
            Send
        </Link>
        </div>
    </div>
    </>
  )
}
