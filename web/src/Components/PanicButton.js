import React, { useState } from 'react';

const PanicButton = () => {
  const [isPanicMode, setPanicMode] = useState(false);

  const handleClick = () => {
    // Toggle panic mode on button click
    setPanicMode(!isPanicMode);

    // You can add your panic action or code here
    // For now, we'll just log a message
    console.log('Panic mode activated!');
  };

  return (
    <button
      className={`py-4 px-8 rounded-lg shadow-lg ${
        
        isPanicMode ? 'bg-red-600' : 'bg-red-500'
      } text-white font-semibold hover:bg-red-700 transition-all`}
      onClick={handleClick}
    >
      {isPanicMode ? 'Alert Send' : 'EMERGENCY | SOS'}
      
    </button>
  );
};

export default PanicButton;
