import React from 'react'

export default function Amblogo() {
  return (
    <div className="bg-gray-100 p-6">
      <h1 className="text-3xl text-center mb-6 text-black">Disaster Ambulance Services and Care</h1>

      <div className="flex flex-wrap justify-between">
        <div className="w-full sm:w-1/2 mb-8">
          <h2 className="text-xl text-green-600">Ambulance Services:</h2>
          <ul className="list-disc list-inside text-green-700">
            <li>Know the emergency contact number for local ambulance services (e.g., 911 in the United States).</li>
            <li>Call for an ambulance immediately if someone is seriously injured or requires urgent medical attention.</li>
            <li>Provide clear information to the dispatcher about the location and nature of the emergency.</li>
            <li>Stay on the line with the dispatcher for further instructions while waiting for the ambulance to arrive.</li>
          </ul>
        </div>

        <div className="w-full sm:w-1/2">
          <h2 className="text-xl text-red-600">Ambulance Care Precautions:</h2>
          <ul className="list-disc list-inside text-red-700">
            <li>Don't call for an ambulance for non-emergencies; it should be reserved for life-threatening situations.</li>
            <li>Don't block the path of emergency vehicles when they are responding to a call.</li>
            <li>Don't try to transport seriously injured individuals to the hospital in your own vehicle unless it's absolutely necessary.</li>
            <li>Don't interfere with the work of emergency responders or ambulance personnel.</li>
          </ul>
        </div>
      </div>
<div className="text-black">
      <p className="mt-6">
        In disaster situations, quick access to ambulance services can be crucial. Here are some additional considerations for ambulance care during disasters:
      </p>

      <p className="mt-2">
        - <strong>Know Local Resources:</strong> Familiarize yourself with local ambulance providers and their contact information.
      </p>

      <p className="mt-2">
        - <strong>Communication:</strong> Ensure that your communication devices are charged and ready to use in case of an emergency.
      </p>

      <p className="mt-2">
        - <strong>Emergency Routes:</strong> Plan evacuation routes and be aware of any road closures or obstacles that may affect ambulance access.
      </p>

      <p className="mt-2">
        - <strong>Stay Calm:</strong> Keep a calm demeanor when dealing with emergency situations and provide clear information to responders.
      </p>

      <p className="mt-6">Remember, prompt and efficient use of ambulance services can save lives during disasters. Use them responsibly and only in true emergencies.</p>
      </div>
    </div>
  )
}
