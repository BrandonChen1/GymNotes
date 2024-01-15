//
//  Workout+CoreDataProperties.swift
//  GymNotes
//
//  Created by Brandon Chen on 1/14/24.
//
//

import Foundation
import CoreData


extension Workout {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Workout> {
        return NSFetchRequest<Workout>(entityName: "Workout")
    }

    @NSManaged public var date: Date?
    @NSManaged public var exerciseSet: NSSet?
    
    public var exerciseSetArray: [ExerciseSet] {
        let set = exerciseSet as? Set<ExerciseSet> ?? [];
        return Array(set);
    }

}

// MARK: Generated accessors for exerciseSet
extension Workout {

    @objc(addExerciseSetObject:)
    @NSManaged public func addToExerciseSet(_ value: ExerciseSet)

    @objc(removeExerciseSetObject:)
    @NSManaged public func removeFromExerciseSet(_ value: ExerciseSet)

    @objc(addExerciseSet:)
    @NSManaged public func addToExerciseSet(_ values: NSSet)

    @objc(removeExerciseSet:)
    @NSManaged public func removeFromExerciseSet(_ values: NSSet)

}

extension Workout : Identifiable {

}
