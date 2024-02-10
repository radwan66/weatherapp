//
//  ConnectionsHandler.swift
//  weatherapp
//
//  Created by radwan on 10/02/2024.
//

import Foundation
import Network
import SwiftUI


enum NetworkStatus: String {
    case connected
    case disconnected
}

class networkcheck: ObservableObject {
    private let networkchecker = NWPathMonitor()
    private let queue = DispatchQueue(label: "network")

    @Published var status: NetworkStatus = .connected

    init() {
        networkchecker.pathUpdateHandler = { [weak self] path in
            guard let self = self else { return }

        
            DispatchQueue.main.async {
                if path.status == .satisfied {
                    self.status = .connected

                } else {
                   
                    self.status = .disconnected
                }
            }
        }
        networkchecker.start(queue: queue)
    }
    
    func isConnected()->Bool{
        return self.status.rawValue == "connected"
    }
}


