import { initializeApp } from "firebase/app";
import { getAuth, GoogleAuthProvider } from "firebase/auth";


const firebaseConfig = {
  apiKey: "AIzaSyCAogx3ahEa-UJgqvg1Wh8CPGz_eU9EkXQ",
  authDomain: "first-react-c4b55.firebaseapp.com",
  projectId: "first-react-c4b55",
  storageBucket: "first-react-c4b55.appspot.com",
  messagingSenderId: "969697539602",
  appId: "1:969697539602:web:96902f9052587d6344cacb"
};

// Initialize Firebase
const app = initializeApp(firebaseConfig);
export const auth = getAuth(app);
export const provider = new GoogleAuthProvider();
