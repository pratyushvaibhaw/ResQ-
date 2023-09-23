import React from 'react'
import {Link} from 'react-router-dom'
export default function Homepage(props) {
  return (
    <>
    <div className="homesection">
      <div><i class="fa fa-th-list"></i>Tap on services and ask to collab</div>
    </div>
    <Link to="/rescue/list" className="homeitem" onClick={props.toggleList}>
    FIRE SERVICES<i class="fa fa-fire-extinguisher"></i>
    </Link>
    <Link to="/rescue/list" className="homeitem"onClick={props.toggleList}>
    MEDICAL SERVICES<i class="fa fa-plus-square"></i>
    </Link>
    <Link to="/rescue/list" className="homeitem" onClick={props.toggleList}>
    TRANSPORTS<i class="fa fa-truck"></i>
    </Link>
    <Link to="/rescue/list" className="homeitem" onClick={props.toggleList}>
    POLICE<i class="fa fa-shield"></i>
    </Link>
    <Link to="/rescue/list" className="homeitem" onClick={props.toggleList}>
    NDRF<i class="fa fa-user-md"></i>
    </Link>
    <Link to="/rescue/list" className="homeitem" onClick={props.toggleList}>
    SDRF<i class="fa fa-credit-card"></i>
    </Link>
     {/* <div className="filter">
         <label>
       Filter:&nbsp;
       <select name="selectedOption" defaultValue="Location">
         <option value="Need">Need</option>
         <option value="Availability">Availability</option>
         <option value="Location">Location</option>
       </select>
     </label>
      </div> */}
    </>
  )
}
