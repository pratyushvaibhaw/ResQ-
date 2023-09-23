import React from 'react'
import {Link} from 'react-router-dom'
export default function Chat() {
  return (
    <>
    <div className="chatitem">
        <div className="chatmenu"></div>
        </div>
        <div className="send">
            <form action="" >
                <div className="forminput">
                <input type="text" placeholder="Enter the message"/>
                <Link to="/rescue/chat" className='bg-white text-black'>Send</Link>
                </div>
            </form>
          </div>
            </>
  )
}
