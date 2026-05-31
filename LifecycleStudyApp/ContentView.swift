//
//  ContentView.swift
//  LifecycleStudyApp
//
//  Created by 瀬山皐太 on 2026/04/21.
//

import SwiftUI

struct ContentView: View {
    @Environment(\.scenePhase) private var scenePhase
    @State private var resultText: String? = nil
    @State private var resultCount: Int = 0
    
    var body: some View {
        VStack {
            Button(action: {
                Task {
                    do {
                        resultCount = try await ContentModel.getData(count: resultCount)
                        resultText = "\(resultCount)回データを取得できました。"
                    } catch {
                        resultText = error.localizedDescription
                    }
                }
            }) {
                HStack {
                    Image(systemName: "network")
                    Text("非同期処理を開始")
                }
            }
            .buttonStyle(.borderedProminent)
            
            Text(resultText ?? "処理結果はここに表示されます。")
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
