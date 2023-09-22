import React from 'react'
import {Link} from "react-router-dom"
export default function List() {
  return (
    <div className="listitem">
        <div className="listmenu"><Link to="/rescue/chat">Chat</Link></div>
        <div className="filter">
         <label>
       Filter:&nbsp;
       <select name="selectedOption" defaultValue="Location">
         <option value="Need">Need</option>
         <option value="Availability">Availability</option>
         <option value="Location">Location</option>
       </select>
     </label>
      </div>
    </div>
  )
}
