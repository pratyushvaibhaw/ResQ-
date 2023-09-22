import "./App1.css";
import {
  BrowserRouter as Router,
  Routes,
  Route
} from "react-router-dom";
import Navbar from './Components/Navbar1'
import Edit from './Components/Edit'
import Homepage from './Components/Homepage'
import List from './Components/List'
import React,{useState} from "react";
import Chat from "./Components/Chat"
function App() {
  const[listhome,setListhome]=useState('Home')
  const[list,setList]=useState('Home')
  const toggleList=()=>{
    if(list==='List'){
      setList('Home')
      setListhome('Home')
    }
    else if(list==='Home'){
      setList('List')
      setListhome('Back To Home')
    }
  }
  return (
    <>
      <Navbar toggleList={toggleList} listhome={listhome} list={list}/>
      <Routes>
      <Route path="rescue" element={<Homepage toggleList={toggleList}/>}>
          </Route>
          <Route path="edit" element={<Edit />}>
          </Route>
          <Route path="list" element={<List toggleList={toggleList}/>}>
          </Route>
          <Route path="chat" element={<Chat />}>
          </Route>
          </Routes>
    </>
  );
}

export default App;
