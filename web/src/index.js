import React from "react";
import ReactDOM from "react-dom/client";
import App from "./App";
import App1 from "./App1"
import {BrowserRouter,Routes,Route} from "react-router-dom";
import {Toaster} from "react-hot-toast";
import "./index.css";

const root = ReactDOM.createRoot(document.getElementById("root"));
root.render(
  //  <React.StrictMode>
    <BrowserRouter>
      <Routes>
        <Route exact path="*" element={<App/>}/>
        <Route exact path="rescue/*" element={<App1/>}/>
      </Routes>
      </BrowserRouter>
  //  {/* <BrowserRouter> */}
  // {/* <App/> */}
  // {/* <Routes>
  //   <Route path="/" element={<App />}/>
  //   <Route path="/rescue" element={<App1 />}/>
  //   </Routes> */}
  //   {/* <Toaster/> */}
  //   {/* </BrowserRouter> */}
  //   {/* <App1/> */}
  //   // </React.StrictMode>
);
