//
//  ContentView.swift
//  audio_recording
//
//  Created by Jaewon Oh on 7/1/25.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @ObservedObject var audio: AudioRecorder
    
    var body: some View {
        Button {
            if audio.recording {
                audio.stopRecording()
            } else {
                audio.startRecording()
            }
        } label: {
            VStack {
                Image(systemName: "mic.fill.badge.plus")
                    .resizable()
                    .scaledToFill()
                    .foregroundStyle(audio.recording ? .red : .green)
                    .frame(width: 70, height: 70)
                Text(audio.recording ? "Recording" : "Click to Record")
                    .bold()
            }
        }
            
    }
}

#Preview {
    ContentView(audio: AudioRecorder())
}
