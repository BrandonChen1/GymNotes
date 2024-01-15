//
//  MuscleGroupExercises+CoreDataProperties.swift
//  GymNotes
//
//  Created by Brandon Chen on 1/14/24.
//
//

import Foundation
import CoreData


extension MuscleGroupExercises {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<MuscleGroupExercises> {
        return NSFetchRequest<MuscleGroupExercises>(entityName: "MuscleGroupExercises")
    }

    @NSManaged public var name: String?
    @NSManaged public var exercises: NSSet?

    public var exerciseArray: [Exercise] {
        let set = exercises as? Set<Exercise> ?? []
        return Array(set);
    }
}

// MARK: Generated accessors for exercises
extension MuscleGroupExercises {

    @objc(addExercisesObject:)
    @NSManaged public func addToExercises(_ value: Exercise)

    @objc(removeExercisesObject:)
    @NSManaged public func removeFromExercises(_ value: Exercise)

    @objc(addExercises:)
    @NSManaged public func addToExercises(_ values: NSSet)

    @objc(removeExercises:)
    @NSManaged public func removeFromExercises(_ values: NSSet)

}

extension MuscleGroupExercises : Identifiable {

}
