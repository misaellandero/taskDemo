//
//  TaskTagRow.swift
//  taskDemo
//
//  Created by Misael Landero on 26/09/21.
//

import SwiftUI
import CoreData

struct TaskTagRow: View {
    @ObservedObject var tag : TaskTag
    var body: some View {
        HStack{
            Text(tag.wrappedName)
                .bold()
                .foregroundColor(.white)
                .font(.largeTitle)
            Spacer()
        }
        .padding()
        .background(tag.wrappedColor)
        .listRowBackground(tag.wrappedColor)
    }
}

struct TaskTagRow_Previews: PreviewProvider {
 
    static let moc =  PersistentCloudKitContainer().persistentContainer.viewContext
   
    static var previews: some View {
        let tasktag = TaskTag(context: moc)
        tasktag.id = UUID()
        tasktag.name = "Test"
        tasktag.color = Int16(2)
        
       return  TaskTagRow(tag: tasktag)
    }
}
