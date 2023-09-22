import React from 'react'
import {Link} from "react-router-dom"
export default function List() {
  return (
    <div className="listitem">
        <div className="listmenu"><Link to="/rescue/chat">Chat</Link></div>
    </div>
  )
}
