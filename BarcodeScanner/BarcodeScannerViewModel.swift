//
//  BarcodeScannerViewModel.swift
//  BarcodeScanner
//
//  Created by Dmytro Nimchynskyi on 21/09/2023.
//

import SwiftUI

final class BarcodeScannerViewModel: ObservableObject {
    
    @Published var scannedCode = ""
    @Published var alertItem: AlertItem?
    
    var statusText: String {
        // if one-line you can ommit return
        scannedCode.isEmpty ? "Not yet scanned" : scannedCode
    }
    
    var statusTextColor: Color {
        scannedCode.isEmpty ? .red : .green
    }
}
