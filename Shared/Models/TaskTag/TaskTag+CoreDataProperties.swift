//
//  TaskTag+CoreDataProperties.swift
//  taskDemo
//
//  Created by Misael Landero on 26/09/21.
//
//

import Foundation
import CoreData


extension TaskTag {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<TaskTag> {
        return NSFetchRequest<TaskTag>(entityName: "TaskTag")
    }

    @NSManaged public var id: UUID?
    @NSManaged public var name: String?
    @NSManaged public var completed: Bool
    @NSManaged public var task: NSSet?

}

// MARK: Generated accessors for task
extension TaskTag {

    @objc(addTaskObject:)
    @NSManaged public func addToTask(_ value: Task)

    @objc(removeTaskObject:)
    @NSManaged public func removeFromTask(_ value: Task)

    @objc(addTask:)
    @NSManaged public func addToTask(_ values: NSSet)

    @objc(removeTask:)
    @NSManaged public func removeFromTask(_ values: NSSet)

}

extension TaskTag : Identifiable {

}
