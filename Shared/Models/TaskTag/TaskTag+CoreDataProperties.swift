//
//  TaskTag+CoreDataProperties.swift
//  taskDemo
//
//  Created by Misael Landero on 26/09/21.
//
//

import Foundation
import CoreData
import SwiftUI

extension TaskTag {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<TaskTag> {
        return NSFetchRequest<TaskTag>(entityName: "TaskTag")
    }

    @NSManaged public var id: UUID?
    @NSManaged public var name: String?
    @NSManaged public var color: Int16
    @NSManaged public var task: NSSet?
    
    // Wrapped id
    public var wrappedId: UUID {
        id ?? UUID()
    }
    // Wrapped name
    public var wrappedName: String {
        name ?? "Unknown"
    }
    
    // Wrapped Color
    public var wrappedColor: Color {
        let colorId = Int(color)
        return AppStyles.AppColors[colorId].color
    }
    
    // MARK: - Array task
        public var taskArray: [Task] {
            let set = task as? Set<Task> ?? []
            
            return set.sorted {
                $0.wrappedName > $1.wrappedName
            }
        }

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
