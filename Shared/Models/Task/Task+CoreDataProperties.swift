//
//  Task+CoreDataProperties.swift
//  taskDemo
//
//  Created by Misael Landero on 26/09/21.
//
//

import Foundation
import CoreData


extension Task {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Task> {
        return NSFetchRequest<Task>(entityName: "Task")
    }

    @NSManaged public var id: UUID?
    @NSManaged public var name: String?
    @NSManaged public var color: Int16
    @NSManaged public var tag: TaskTag?

}

extension Task : Identifiable {

}
