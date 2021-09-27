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
    @NSManaged public var completed: Bool
    @NSManaged public var tag: TaskTag?
    
    
    // Wrapped id
    public var wrappedId: UUID {
        id ?? UUID()
    }
    // Wrapped name
    public var wrappedName: String {
        name ?? "Unknown"
    }

}

extension Task : Identifiable {

}
