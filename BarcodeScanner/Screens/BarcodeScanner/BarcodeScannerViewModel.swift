//
//  BarcodeScannerViewModel.swift
//  BarcodeScanner
//
//  Created by Curi on 27/12/24.
//

import SwiftUI


final class BarcodeScannerViewModel: ObservableObject {
    
    @Published var scannedCode = ""
    @Published var alertItem: AlertItem?
    
    var statusText: String {
        return scannedCode.isEmpty ? "Not Yet Scanned" : scannedCode
    }
    
    var statusTextColor: Color {
        scannedCode.isEmpty ? .red : .green
    }
}

