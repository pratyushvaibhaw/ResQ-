import React from 'react';
import { FaPhone } from 'react-icons/fa'; // Import the desired React Icons

const Emergencydropdown = () => {
  const emergencyServices = [
    { name: 'Police', number: '100' },
    { name: 'Fire', number: '101' },
    { name: 'Ambulance', number: '102' },
    { name: 'Emergency Disaster Management', number: '1070' },
    { name: "Women's Helpline", number: '1091' },
    { name: 'Child Helpline', number: '1098' },
    { name: 'Senior Citizen Helpline', number: '14567' },
    { name: 'Railway Police (GRP)', number: '1512' },
    { name: 'Road Accident Emergency Services', number: '1033' },
    { name: 'Anti-Poison Helpline', number: '1800-111-155' },
    { name: 'COVID-19 Helpline', number: '1075' },
    { name: 'Natural Disaster Helpline', number: '108' }, // Natural Disasters
    { name: 'Flood Helpline', number: '1094' }, // Floods
    { name: 'Earthquake Helpline', number: '1092' }, // Earthquakes
    { name: 'Cyclone Helpline', number: '1078' }, // Cyclones
    { name: 'Tsunami Helpline', number: '1096' }, // Tsunamis
    { name: 'Forest Fire Helpline', number: '1097' }, // Forest Fires
  ];

  return (
    <div className="max-w-lg mx-auto mt-8">
      <h1 className="text-3xl font-semibold mb-4 text-white">Emergency Services in India</h1>
      <ul className="space-y-4">
        {emergencyServices.map((service, index) => (
          <li
            key={index}
            className="flex items-center bg-gray-100 p-4 rounded-md hover:bg-gray-200"
          >
            <span className="font-semibold text-blue-700">{service.name}:</span>
            <a href={`tel:${service.number}`} className="text-blue-500 hover:underline ml-2">
              {service.number}
            </a>
            <span className="ml-2 text-gray-600">
              <FaPhone />
            </span>
          </li>
        ))}
      </ul>
    </div>
  );
};

export default Emergencydropdown;


