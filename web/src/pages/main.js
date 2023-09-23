

import { getDocs, collection } from "firebase/firestore";
import { useEffect, useState } from "react";
import { db } from "../constants/firebase";
import { Post } from "./post";

export default function Main ()  {
  const [postsList, setPostsList] = useState(null);
  const postsRef = collection(db, "f");

  const getPosts = async () => {
    const data = await getDocs(postsRef);
    setPostsList(
      data.docs.map((doc) => ({ ...doc.data(), id: doc.id }))
    );
  };

  useEffect(() => {
    getPosts();
  }, []);

  return (
    <div>
      {postsList?.map((post) => (
        <Post post={post} key={post.id} />
      ))}
    </div>
  );
};
