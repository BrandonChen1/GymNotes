//
//  NewExerciseView.swift
//  GymNotes
//
//  Created by Brandon Chen on 1/9/24.
//

import SwiftUI

struct NewExerciseMainView: View {
    @State private var exerciseSearch = "";
    var body: some View {
        NavigationStack {
            // Load Header
            NewExerciseHeaderView()
            
            // Exercise Categories 
            
        }
        
        //    var searchResults: [String] {
        //        if searchText.isEmpty {
        //            return names
        //        } else {
        //            return names.filter { $0.contains(searchText) }
        //        }
        //    }
    }
}

#Preview {
    NewExerciseMainView()
}
