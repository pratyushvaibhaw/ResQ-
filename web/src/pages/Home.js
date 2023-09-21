import React from 'react'
import Iconstemplate from "../Components/Iconstemplate";
import SimpleImageSlider1 from "../Components/SimpleImageSlider1";
import Amblogo from './Amblogo';
import { Route,Routes } from "react-router-dom";
import PanicButton from '../Components/PanicButton';
export default function Home() {
  return (
    <div>
        <div className="p-4 m-4"><SimpleImageSlider1 /></div>

      <div className="flex items-center justify-center  "><PanicButton /></div>
     
      <Iconstemplate/>
      {/* <Routes>
     
      <Route exact path="/Amblogo" element={<Amblogo/>} />
     
      </Routes> */}
   
    </div>
  )
}
