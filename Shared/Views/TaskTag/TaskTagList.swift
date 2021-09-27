//
//  TaskTagListView.swift
//  taskDemo
//
//  Created by Misael Landero on 26/09/21.
//

import SwiftUI

struct TaskTagList: View {
    
    //Model View de Coredate
     @Environment(\.managedObjectContext) var moc
   
     @FetchRequest(entity: TaskTag.entity(), sortDescriptors: [NSSortDescriptor(keyPath: \TaskTag.name, ascending: true)]) var tags: FetchedResults<TaskTag>
    
    @State private var showAddSheet = false
     
    var body: some View {
        List{
            ForEach(tags){ tag in
                TaskTagRow(tag: tag)
            }
            .onDelete(perform: deleteItem)
        }
        .navigationTitle("Tags List")
        .toolbar(){
            ToolbarItem(placement: .confirmationAction){
                Button(action:addTag){
                    Label("Add", systemImage: "plus.circle")
                }
            }
        }
        .sheet(isPresented: $showAddSheet){
            TaskTagAddNew()
        }
    }
    
    
    func deleteItem(at offsets: IndexSet) {
        
        for offset in offsets {
            let tag =  self.tags[offset]
            self.moc.delete(tag)
        }
        
        DispatchQueue.main.async{
            do {
              // guardar cambios
              try moc.save()
              
            } catch {
              // The context couldn't be saved.
              // You should add your own error handling here.
              let nserror = error as NSError
              fatalError("Unresolved error \(nserror), \(nserror.userInfo)")
            }
        }
        
    }
    
    func addTag(){
        showAddSheet.toggle()
    }
}

struct TaskTagListView_Previews: PreviewProvider {
     
    static var previews: some View {
        TaskTagList()
    }
}
