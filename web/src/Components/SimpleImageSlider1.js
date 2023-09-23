import React from 'react'
import { Route, Routes } from "react-router-dom";

import SearchLocationInput from "./GooglePlacesApi";
import MapComponent from "./Map";




import SimpleImageSlider from "react-simple-image-slider";
import { useState } from "react";
import { Link } from 'react-router-dom';
export default function SimpleImageSlider1() {
    const [imageNum, setImageNum] = useState(1);
  const sliderImages = [
     {
        url: "https://img.safetysignsupplies.co.uk/images/product_imgs/full/A702.jpg",
     },
     {
        url: "https://img.safetysignsupplies.co.uk/images/product_imgs/full/A623.jpg",
     },
     {
        url: "https://communityengagementhub.org/wp-content/uploads/sites/2/2020/04/051217_AnitguaBarbudaRC_Be-Prepared.jpg",
     },
     {
        url: "https://cdn11.bigcommerce.com/s-10c6f/images/stencil/1280x1280/products/15657/146203/BAN221-MD__35473.1648218873.jpg?c=2",
     },
     {
        url: "https://emd.wv.gov/Preparedness/SiteAssets/Pages/default/12%20ways%20to%20prepare.png",
     },
  ];



  const [selectedLocation, setSelectedLocation] = useState({
   lat: 28.7041,
   lng: 77.1025,
 });



  return (
    <div className='flex'>
      <div className=''>

    
        <h1 className=' text-center p-4  from-gray-900 to-gray-600 bg-gradient-to-r text-white rounded-md mb-3'>S T A Y &nbsp;&nbsp;&nbsp;&nbsp; P R E P A R E D &nbsp;&nbsp;&nbsp;&nbsp;S T A Y &nbsp;&nbsp;&nbsp; &nbsp;S A F E</h1>
       
       <SimpleImageSlider
        
        width={900}
        height={600}
        padding={220}
        images={sliderImages}
        showBullets={true}
        showNavs={true}
        autoPlay={true} 
        onStartSlide = {(index, length) => {
           setImageNum(index);
        }}
           autoPlayDelay = {3}
     /> 
     </div>
        <div style={{ margin:"0px",paddingLeft:"20px", height:"700px", width:"650px"}}>
      <SearchLocationInput setSelectedLocation={setSelectedLocation} />
      <MapComponent selectedLocation={selectedLocation}/>
    </div>
      
    </div>
    
  )
}
