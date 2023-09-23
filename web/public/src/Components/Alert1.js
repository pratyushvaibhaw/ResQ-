import React from 'react'

export default function Alert(props) {
  return (
    <div style={{height:'40px'}}>
    {props.alert && <div className="alertsent" role="alert">
    <strong>{props.alert.msg}</strong>
    </div>}
    </div>
  )
}
