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
          <div>
            <textarea type="text" className="box" placeholder="Enter the alert message" {...register("description")}/>
            <p style={{ color: "red" }}>{errors.description?.message}</p>
          </div>
          <div className="sbtn">
            {/* <Link to="/rescue/alert" onClick={popAlert} type='submit'>
              Send
            </Link> */}
             <input type="submit" className="text-white" onClick={popAlert}  />
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

  