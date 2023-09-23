import React, { useState } from 'react'
import { Link } from "react-router-dom"
import Alert from "./Alert1"

import { useForm } from "react-hook-form";
import * as yup from "yup";
import { yupResolver } from "@hookform/resolvers/yup";
import { addDoc, collection } from "firebase/firestore";
import { auth, db } from "../constants/firebase";
import { useAuthState } from "react-firebase-hooks/auth";
import { useNavigate } from "react-router-dom";




const CreateFormData = {
  description: "",
};

 export  default function Alertsend(){


  const [user] = useAuthState(auth);
  const navigate = useNavigate();

  const schema = yup.object().shape({
    description: yup.string().required("You must add a description."),
  });

  const {
    register,
    handleSubmit,
    formState: { errors },
  } = useForm({
    resolver: yupResolver(schema),
  });

  const postsRef = collection(db, "f");

  const onCreatePost = async (data) => {
    await addDoc(postsRef, {
      ...data,
      userId: user?.uid,
    });

    navigate("/rescue/alert");
  };




    const [alert, setAlert] = useState(null)
    const showAlert = (message) => {
      setAlert({
        msg: message
      })
      setTimeout(() => {
        setAlert(null);
      }, 1500);
    }
    const popAlert = () => {
      showAlert("Alert Sent Successfully!")
    }
    return (
      <div>
      <Alert alert={alert} />
        <form className="alertsend" onSubmit={handleSubmit(onCreatePost)} >
          <div className='flex justify-center items-center'>
            <textarea type="text" className="box" placeholder="Enter the alert message" {...register("description")}/>
            <p style={{ color: "red" }}>{errors.description?.message}</p>
          </div>
          <div className="p-2 bg-white text-black rounded-md items-center mt-2 ml-28 cursor-default">
            {/* <Link to="/rescue/alert" onClick={popAlert} type='submit'>
              Send
            </Link> */}
             <button className='w-60 '><input type="submit" className=" " onClick={popAlert}  /></button>
          </div>
        </form>  

        {/* <form onSubmit={handleSubmit(onCreatePost)} >
        <textarea placeholder="Description..." {...register("description")} />
        <p style={{ color: "red" }}>{errors.description?.message}</p>
        <input type="submit" className="submitForm" />
      </form> */}
      </div>
    )
  }

  