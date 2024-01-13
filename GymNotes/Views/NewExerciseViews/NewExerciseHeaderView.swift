//
//  NewExerciseHeaderView.swift
//  GymNotes
//
//  Created by Brandon Chen on 1/13/24.
//
import SwiftUI

struct NewExerciseHeaderView: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 0).foregroundStyle(.mint);
            
            HStack {
                Text("")
                Text ("All Exercises").foregroundStyle(.black).bold()
                Spacer()
                Text("")
                NavigationLink(destination: NewExerciseMainView(), label: {
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
    NewExerciseHeaderView()
}
