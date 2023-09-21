import React from 'react'

export default function Floodlogo() {
    return (
        <div className="bg-gray-100 p-6">
            <h1 className="text-3xl text-center mb-6">Flood Safety Measures</h1>

            <div className="flex flex-wrap justify-between">
                <div className="w-full sm:w-1/2 mb-8">
                    <h2 className="text-xl text-green-600">Safety Measures (DOs):</h2>
                    <ul className="list-disc list-inside text-green-700">
                        <li>Stay informed about flood warnings and alerts from local authorities.</li>
                        <li>Create an emergency kit with essential supplies (food, water, flashlight, first aid kit).</li>
                        <li>Have a communication plan with your family members.</li>
                        <li>Elevate important documents and valuables to prevent water damage.</li>
                        <li>If flooding is imminent, move to higher ground or a safe location.</li>
                        <li>Turn off utilities (gas, electricity, water) before evacuating your home.</li>
                        <li>Listen to emergency broadcasts for updates and instructions.</li>
                        <li>If trapped, signal for help using a flashlight or by waving from a high point.</li>
                        <li>Cooperate with emergency responders and follow their guidance.</li>
                    </ul>
                </div>

                <div className="w-full sm:w-1/2">
                    <h2 className="text-xl text-red-600">Precautions (DON'Ts):</h2>
                    <ul className="list-disc list-inside text-red-700">
                        <li>Don't walk or drive through flooded areas; it's often deeper and more dangerous than it appears.</li>
                        <li>Don't ignore evacuation orders; they are issued for your safety.</li>
                        <li>Don't use electrical appliances in a flooded area.</li>
                        <li>Don't enter flowing water on foot; it can easily sweep you away.</li>
                        <li>Don't camp near rivers or streams during heavy rainfall.</li>
                        <li>Don't rely on your car as a safe shelter during floods; abandon it if water rises.</li>
                        <li>Don't attempt to cross a bridge covered by fast-moving water.</li>
                        <li>Don't allow children or pets to play near floodwaters.</li>
                        <li>Don't drink or use contaminated water; use only safe, bottled, or treated water.</li>
                    </ul>
                </div>
            </div>

            <p className="mt-6">
                Flooding can be a devastating natural disaster. In addition to the dos and don'ts listed above, here are some more important safety tips to keep in mind:
            </p>

            <p className="mt-2">
                - <strong>Stay on High Ground:</strong> When floods are expected, stay on high ground and avoid low-lying areas, as water tends to accumulate in these areas first.
            </p>

            <p className="mt-2">
                - <strong>Monitor Weather Updates:</strong> Keep an eye on weather updates and emergency alerts. Modern technology can provide early warnings.
            </p>

            <p className="mt-2">
                - <strong>Practice Evacuation Drills:</strong> Familiarize yourself and your family with evacuation routes and conduct evacuation drills.
            </p>

            <p className="mt-2">
                - <strong>Secure Your Home:</strong> Consider flood-proofing your home by installing barriers and sealing entry points.
            </p>

            <p className="mt-2">
                - <strong>Have a Rescue Plan:</strong> If you have to evacuate, have a plan for how to signal for help and where to go for safety.
            </p>

            <p className="mt-6">Remember, being prepared and informed is crucial to staying safe during a flood. Always prioritize your safety and the safety of your loved ones.</p>
        </div>

    )
}
