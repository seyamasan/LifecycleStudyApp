//
//  ContentModel.swift
//  LifecycleStudyApp
//
//  Created by 瀬山皐太 on 2026/05/31.
//

class ContentModel {
    static func getData() async throws -> String {
        // 約5秒でSuspededになるみたいなので、6秒delayかける
        try await Task.sleep(for: .seconds(6))
        return "データを取得できました。"
    }
}
