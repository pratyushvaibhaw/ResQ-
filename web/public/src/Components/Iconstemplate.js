import React from 'react'
import {FaAmbulance} from 'react-icons/fa'
import {FaFireExtinguisher} from 'react-icons/fa6'
import {FaHouseFloodWater} from 'react-icons/fa6'
import {GiHospital} from 'react-icons/gi'
import { Link } from "react-router-dom";

export default function Iconstemplate() {
  return (
    <div className='flex justify-between p-20 m-10'>
       <Link to="/Amblogo"> <FaAmbulance size={150} color='white'/> </Link>
        <Link to="/FireExtinguisherlogo"><FaFireExtinguisher size={150} color='white'/></Link>
        <Link to="/Floodlogo"><FaHouseFloodWater size={150} color='white'/></Link>
        <Link to="/Hospital"> <GiHospital size={150} color='white'/></Link>
        
       
    </div>
    
  )
}
