//
//  Alert.swift
//  BarcodeScanner
//
//  Created by Dmytro Nimchynskyi on 21/09/2023.
//

import SwiftUI

struct AlertItem: Identifiable {
    let id = UUID()
    let title: String
    let message: String
    let dismissButton: Alert.Button
}

struct AlertContext {
    static let invalidDeviceInput = AlertItem(
        title: "Invalid Device Input",
        message: "Something is wrong with camera. Unable to captiure the input.",
        dismissButton: .default(Text("OK"))
    )
    
    static let invalidScannedType = AlertItem(
        title: "Invalid Scan Type",
        message: "The value scanned is not valid. This app scans EAN-8, EAN-13 and QR Codes.",
        dismissButton: .default(Text("OK"))
    )
}
