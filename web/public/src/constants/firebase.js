// import { initializeApp } from "firebase/app";
// import { getAuth, GoogleAuthProvider } from "firebase/auth";


// const firebaseConfig = {
//   apiKey: "AIzaSyCAogx3ahEa-UJgqvg1Wh8CPGz_eU9EkXQ",
//   authDomain: "first-react-c4b55.firebaseapp.com",
//   projectId: "first-react-c4b55",
//   storageBucket: "first-react-c4b55.appspot.com",
//   messagingSenderId: "969697539602",
//   appId: "1:969697539602:web:96902f9052587d6344cacb"
// };

// // Initialize Firebase
// const app = initializeApp(firebaseConfig);
// export const auth = getAuth(app);
// export const provider = new GoogleAuthProvider();
// export default app;




// Import the functions you need from the SDKs you need
import { initializeApp } from "firebase/app";
import { getAuth ,GoogleAuthProvider} from "firebase/auth";
const firebaseConfig = {
  apiKey: "AIzaSyDo8luDomdPgV6LtkRe8LhhSxLBeBSSHLc",
  authDomain: "resq-a6c15.firebaseapp.com",
  databaseURL: "https://resq-a6c15-default-rtdb.firebaseio.com",
  projectId: "resq-a6c15",
  storageBucket: "resq-a6c15.appspot.com",
  messagingSenderId: "378031029451",
  appId: "1:378031029451:web:6921a2582cb39f73b0af4e",
  measurementId: "G-60RJPN60QR"
};

// Initialize Firebase
const app = initializeApp(firebaseConfig);
export const auth=getAuth(app);
export const provider = new GoogleAuthProvider();
export default app;