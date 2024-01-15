//
//  Exercise+CoreDataProperties.swift
//  GymNotes
//
//  Created by Brandon Chen on 1/14/24.
//
//

import Foundation
import CoreData


extension Exercise {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Exercise> {
        return NSFetchRequest<Exercise>(entityName: "Exercise")
    }

    @NSManaged public var name: String?
    @NSManaged public var weight: Int16
    @NSManaged public var rep: Int16
    @NSManaged public var muscleGroup: MuscleGroupExercises?

}

extension Exercise : Identifiable {

}
