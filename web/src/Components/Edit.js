import React,{useState} from 'react'
import {Link} from "react-router-dom"
import Alert from './Alert1'
export default function Edit() {
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
    showAlert("Details Updated Successfully!")
}
  return (
    <>
    <div className="editform">
        <form action="">
            <h2>Agency Information</h2>
        <div className="formelm">
        <input type="text" placeholder='Edit Location'/>
        </div>
        <div className="formelm">
        <input type="text" placeholder='Edit Rescuers'/>
        </div>
        <div className="formelm">
        <input type="text" placeholder='Edit Other Details'/>
        </div>
        <h2>Resources Information</h2>
        <div className="formelm">
        <input type="text" placeholder='Edit Vehicles'/>
        </div>
        <div className="formelm">
        <input type="text" placeholder='Edit Emergency Kit'/>
        </div>
        <div className="formelm">
        <input type="text" placeholder='Edit Other Details'/>
        </div>
        <Link to="/edit" onClick={popAlert} className="submit">Submit</Link>
        </form>
    </div>
    <Alert alert={alert}/>
    </>
  )
}
