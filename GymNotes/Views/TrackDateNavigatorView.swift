//
//  DateNavigatorHeaderView.swift
//  GymNotes
//
//  Created by Brandon Chen on 1/9/24.
//

import SwiftUI

struct TrackDateNavigatorView: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 0).foregroundStyle(.gray);
            
            HStack {
                Text("")
                Image ("arrow").resizable().frame(width:40, height:40)
                Spacer()
                Text("Date")
                Spacer()
                Image("arrow").resizable().frame(width:40, height:40).rotationEffect(Angle(degrees: 180) )
                Text("")
            }
            
        }.frame(height: 70)
    }
}

#Preview {
    TrackDateNavigatorView()
}
