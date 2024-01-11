//
//  TrackHeaderView.swift
//  GymNotes
//
//  Created by Brandon Chen on 1/9/24.
//

import SwiftUI

struct TrackHeaderView: View {
    var body: some View {     
        ZStack {
            RoundedRectangle(cornerRadius: 0).foregroundStyle(.mint);
            
            HStack {
                Text("")
                Text ("GymNotes").foregroundStyle(.black).bold()
                Spacer()
                NavigationLink(destination: CalendarView(calendar: .current), label: {
                    Image("calendar").resizable().frame(width:40, height:40)
                })
                NavigationLink(destination: NewExerciseView(), label: {
                    Image("plus").resizable().frame(width:40, height:40)
                })
                NavigationLink(destination: SettingsView(), label: {
                    Image("settings").resizable().frame(width:40, height:40)
                })
                Text("")
            }
            
        }.frame(height: 70)
    }
}

#Preview {
    TrackHeaderView()
}
