//
//  audio_recordingApp.swift
//  audio_recording
//
//  Created by Jaewon Oh on 7/1/25.
//

import SwiftUI
import SwiftData

@main
struct audio_recordingApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(audio: AudioRecorder())
        }
    }
}
