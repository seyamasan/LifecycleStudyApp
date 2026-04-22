//
//  ContentView.swift
//  LifecycleStudyApp
//
//  Created by 瀬山皐太 on 2026/04/21.
//

import SwiftUI

struct ContentView: View {
    @Environment(\.scenePhase) private var scenePhase
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
        .onChange(of: self.scenePhase) {
            switch self.scenePhase {
            case .inactive:
                print("🟡 inactive")
            case .active:
                print("🟢 active")
            case .background:
                print("🔴 background")
            @unknown default:
                print("❓ unknown")
            }
        }
    }
}

#Preview {
    ContentView()
}
