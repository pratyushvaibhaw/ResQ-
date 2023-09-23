import React from 'react'
import { Link } from "react-router-dom"
import { collection } from "firebase/firestore";
import { db, auth } from "../constants/firebase";
import { useCollectionData } from "react-firebase-hooks/firestore";
export default function List() {

  const query = collection(db, "sdrf");

  const [docs, loading, error] = useCollectionData(query);


  return (
    <div className="listitem">
      <div className="listmenu">


        <div className='data'>


          {loading && "loading.."}

          <ul className='listcontainer'>

            {docs?.map((doc) => (
              <div key={Math.random()} >
                 <li>Agency Name: {doc.agency_name}</li>
                <li>Email: {doc.email}</li>
               
                <li>Manpower: {doc.manpower}</li>
               
                <li>Phone: {doc.phone}</li>
               
                <li>Team Head: {doc.team_head}</li>

                <li>Vehicles: {doc.vehicles}</li>
                <li>Zone: {doc.zone}</li>

                <hr></hr>



              </div>
            ))}

          </ul>
        </div>



        <Link to="/rescue/chat">Chat</Link></div>
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
