//
//  ContentView.swift
//  CoreBluetoothBLE-iOS
//
//  Created by Tahir Mac aala on 29/05/2024.
//

import SwiftUI

struct ContentView: View {
    var bluetoothManager = BLEPeripheralManager()
    @State private var currentDate = Date.now
    let timer = Timer.publish(every: 60, on: .main, in: .common).autoconnect()
    var body: some View {
        VStack {
            Text("Peripherals Device")
            Button {
                bluetoothManager.sendMessage("Hello!!!@#")
            } label: {
                Text("Send")
            }


        }
        .padding()
        .onReceive(timer) { _ in
            bluetoothManager.sendMessage("Hello!!!@#")
        }
    }
}

#Preview {
    ContentView()
}
