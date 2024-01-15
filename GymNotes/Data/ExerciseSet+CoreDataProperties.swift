//
//  ExerciseSet+CoreDataProperties.swift
//  GymNotes
//
//  Created by Brandon Chen on 1/14/24.
//
//

import Foundation
import CoreData


extension ExerciseSet {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<ExerciseSet> {
        return NSFetchRequest<ExerciseSet>(entityName: "ExerciseSet")
    }

    @NSManaged public var date: Date?
    @NSManaged public var exerciseName: String?
    @NSManaged public var exercise: Exercise?
    @NSManaged public var workout: Workout?

}

extension ExerciseSet : Identifiable {

}
