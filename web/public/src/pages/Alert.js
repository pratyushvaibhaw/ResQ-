
    import React from 'react'
import { ReactDialogBox } from 'react-js-dialog-box'
import 'react-js-dialog-box/dist/index.css'

class Alert extends React.Component {
  constructor() {
    super()
    this.state = {
      isOpen: false
    }
  }

  openBox = () => {
    this.setState({
      isOpen: true
    })
  }

  closeBox = () => {
    this.setState({
      isOpen: false
    })
  }
  render() {
    return (
      <div className='h-screen flex  items-center justify-center bg-gradient-to-t from-gray-700 via-gray-900 to-black'>
        <button className=" items-center justify-center text-white bg-[#24292F] hover:bg-[#24292F]/90 focus:ring-4 focus:outline-none focus:ring-[#24292F]/50 font-medium rounded-lg text-sm px-5 py-2.5 text-center inline-flex items-center dark:focus:ring-gray-500 dark:hover:bg-[#050708]/30 mr-2 mb-2" onClick={this.openBox}>Alert Notification!</button>

        {this.state.isOpen && (
          <>
            <ReactDialogBox
              closeBox={this.closeBox}
              modalWidth='60%'
              headerBackgroundColor='grey'
              headerTextColor='white'
              headerHeight='45'
              closeButtonColor='white'
              bodyBackgroundColor='white'
              bodyTextColor='black'
              bodyHeight='200px'
              headerText='Important Notifications!'
              
            >
              <div>
                <h1>No Alerts</h1>
              </div>
            </ReactDialogBox>
          </>
        )}
      </div>
    )
  }
}

export default Alert;
  


// {
//   user ?<img src={user?.photoURL} width="20" height="20" className="absolute pt-2 w-12 rounded-sm"/>:<BiSolidUserCircle size={40} className="flex mr-8" />
//   }

// flex items-center justify-center 