import "./App1.css";
import {
  BrowserRouter as Router,
  Routes,
  Route
} from "react-router-dom";
import Navbar from './Components/Navbar1'
import Edit from './Components/Edit'
import Homepage from './Components/Homepage'
import ListFir from './Components/ListFir'
import ListMed from './Components/ListMed'
import ListTrans from './Components/ListTrans'
import Listndrf from './Components/Listndrf'
import ListSdrf from './Components/ListSdrf'
import React, { useState } from "react";
import Chat from "./Components/Chat"
import Alertsend from "./Components/Alertsend"

function App() {
  const [listhome, setListhome] = useState('Home')
  const [list, setList] = useState('Home')
  const toggleList = () => {
    if (list === 'List') {
      setList('Home')
      setListhome('Home')
    }
    else if (list === 'Home') {
      setList('List')
      setListhome('Back To Home')
    }
  }
  return (
    <>
      <Navbar toggleList={toggleList} listhome={listhome} list={list} />
      <Routes>
        <Route path="rescue" element={<Homepage toggleList={toggleList} />}></Route>

        <Route path="edit" element={<Edit />}> </Route>

        <Route path="listFir" element={<ListFir toggleList={toggleList} />}> </Route>
        <Route path="listMed" element={<ListMed toggleList={toggleList} />}> </Route>
        <Route path="listndrf" element={<Listndrf toggleList={toggleList} />}> </Route>
        <Route path="listTrans" element={<ListTrans toggleList={toggleList} />}></Route>
        <Route path="listSdrf" element={<ListSdrf toggleList={toggleList} />}></Route>
        <Route path="chat" element={<Chat />}> </Route>


        <Route path="alert" element={<Alertsend toggleList={toggleList} />}> </Route>

      </Routes>
    </>
  );
}

export default App;
