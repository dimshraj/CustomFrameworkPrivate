//
//  Worker.swift
//  CustomFrameworkPrivate
//
//  Created by Dmitriy Shrayber on 12.08.2023.
//

import Foundation
import CoreBluetooth

class BTWorker: NSObject, CBCentralManagerDelegate {
    func centralManagerDidUpdateState(_ central: CBCentralManager) {
        var devState = ""
        switch central.state {
        case .unknown:
            devState = "central.state is .unknown"
        case .resetting:
            devState = "central.state is .resetting"
        case .unsupported:
            devState = "central.state is .unsupported"
        case .unauthorized:
            devState = "central.state is .unauthorized"
        case .poweredOff:
            devState = "central.state is .poweredOff"
        case .poweredOn:
            devState = "central.state is .poweredOn \(central)"
        @unknown default:
            devState = "central.state is unnknown"
        }
        print(devState)
    }
    

    private var centralManager: CBCentralManager?
    private var apiKey: String?

    init(apiKey: String) {
        super.init()
        self.apiKey = apiKey
        self.centralManager = CBCentralManager(delegate: self, queue: nil)
    }

    func start() {
        print("start")
    }

    func stop() {
        print("stop")
    }

    // Другие функции и методы делегата CBCentralManagerDelegate
}
