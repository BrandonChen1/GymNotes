//
//  GymNotesApp.swift
//  GymNotes
//
//  Created by Brandon Chen on 1/8/24.
//

import SwiftUI
import FirebaseCore

@main
struct GymNotesApp: App {
    init() {
        FirebaseApp.configure();
    }
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
