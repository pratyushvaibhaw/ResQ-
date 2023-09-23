import React from 'react'
import { Link } from "react-router-dom"
import { collection } from "firebase/firestore";
import { db, auth } from "../constants/firebase";
import { useCollectionData } from "react-firebase-hooks/firestore";
import { useAuthState } from 'react-firebase-hooks/auth';

export default function List() {
  const [user] =useAuthState(auth)
  const query = collection(db, "sdrf");

  const [docs, loading, error] = useCollectionData(query);

  const filteredDocs = docs ? docs.filter(doc => doc.email !== user.email) : [];
  return (
    <div className="listitem flex flex-col">
      <div className="listmenu h-[420px]">


        <div className='data mr-14'>


          {loading && "loading.."}

          <ul className='listcontainer'>

            {filteredDocs?.map((doc) => (
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



        </div>
        <Link to="/rescue/chat" className=' pd-3 rounded-md bg-white m-3 text-black w-48 items-center text-center'>Chat</Link>
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
