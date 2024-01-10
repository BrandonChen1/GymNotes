//
//  TrackView.swift
//  GymNotes
//
//  Created by Brandon Chen on 1/9/24.
//

import SwiftUI

struct TrackView: View {
    var body: some View {
        VStack (spacing: 0){
            // HEADER
            TrackHeaderView()
            // Date navigator
            TrackDateNavigatorView()
            // Workout Log
            Spacer()
            Text ("Some Workouts")
            Spacer()
        }
    }
}

#Preview {
    TrackView()
}
