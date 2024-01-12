//
//  DateNavigatorHeaderView.swift
//  GymNotes
//
//  Created by Brandon Chen on 1/9/24.
//

import SwiftUI

struct TrackDateNavigatorView: View {
    // static variables
    var oneDayInSeconds:Double = 86400;
    
    // selected date
    @State var currentDate: Date;
    
    init(currentDate: Date) {
        _currentDate = State(initialValue: Date.now)
    }
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 0).foregroundStyle(.gray);
            
            HStack {
                Text("")
                Button {
                    previousDay()
                } label: {Image ("arrow").resizable().frame(width:40, height:40)
                }
                Spacer()
                Text(currentDate.formatted(date: .complete, time:.omitted))
                Spacer()
                Button {
                    nextDay()
                } label: {Image("arrow").resizable().frame(width:40, height:40).rotationEffect(Angle(degrees: 180))
                }
                Text("")
            }
            
        }.frame(height: 70)
    }
    func previousDay() {
        currentDate = currentDate.addingTimeInterval(oneDayInSeconds * -1);
        print(currentDate.formatted(date: .complete, time:.omitted));
    }
    func nextDay() {
        currentDate = currentDate.addingTimeInterval(oneDayInSeconds);
        print(currentDate.formatted(date: .complete, time:.omitted));
    }
}

#Preview {
    TrackDateNavigatorView(currentDate: Date.now)
}
