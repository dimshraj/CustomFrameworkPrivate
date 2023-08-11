//
//  Manager.swift
//  CustomFrameworkPrivate
//
//  Created by Dmitriy Shrayber on 12.08.2023.
//

import Foundation
import Foundation

public class BTManager {

    private var btCentralManager: BTWorker?

    public init(apiKey: String) {
        self.btCentralManager = BTWorker(apiKey: apiKey)
    }

    public func start() {
        self.btCentralManager?.start()
    }

    public func stop() {
        self.btCentralManager?.stop()
    }
}
