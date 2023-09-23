import React from 'react';

export default function Hospital() {
    return(
        
            <div className="bg-gray-100 p-6">
                <h1 className="text-3xl text-center mb-6 text-black">Disaster Medical Facilities and Care</h1>

                <div className="flex flex-wrap justify-between">
                    <div className="w-full sm:w-1/2 mb-8">
                        <h2 className="text-xl text-green-600">Medical Facility Guidelines:</h2>
                        <ul className="list-disc list-inside text-green-700">
                            <li>Identify and know the location of the nearest medical facilities in your area.</li>
                            <li>Ensure that your family members are aware of these locations as well.</li>
                            <li>If you have medical conditions, make sure to keep a record of your medications and allergies.</li>
                            <li>During a disaster, call emergency services immediately if someone is injured or requires urgent medical attention.</li>
                            <li>If you are able to safely do so, provide basic first aid to those in need while waiting for professional medical help.</li>
                        </ul>
                    </div>

                    <div className="w-full sm:w-1/2">
                        <h2 className="text-xl text-red-600">Medical Care Precautions:</h2>
                        <ul className="list-disc list-inside text-red-700">
                            <li>Don't attempt to provide medical care beyond your level of training or expertise.</li>
                            <li>Don't use expired medications or medical supplies.</li>
                            <li>Don't waste valuable time searching for medical supplies during an emergency; have a well-organized first aid kit ready.</li>
                            <li>Don't delay in seeking professional medical assistance if it's available; time is crucial in emergencies.</li>
                        </ul>
                    </div>
                </div>
<div className="text-black">
                <p className="mt-6">
                    In times of disaster, access to medical care and facilities is essential. Here are some additional considerations for disaster medical care:
                </p>

                <p className="mt-2">
                    - <strong>Emergency Contacts:</strong> Make a list of emergency contacts, including local hospitals and medical professionals.
                </p>

                <p className="mt-2">
                    - <strong>Medical Supplies:</strong> Keep a well-stocked first aid kit and necessary medications in your emergency supplies.
                </p>

                <p className="mt-2">
                    - <strong>Emergency Plans:</strong> Include medical needs in your family's emergency plans and ensure that everyone is aware of them.
                </p>

                <p className="mt-2">
                    - <strong>Stay Informed:</strong> Listen to local authorities and healthcare professionals for guidance on medical care during disasters.
                </p>

                <p className="mt-6">Remember, having a plan for medical care and facilities can make a significant difference in ensuring the health and safety of you and your loved ones during a disaster.</p>
                </div>
            </div>
        
    )
}
