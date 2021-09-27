//
//  TaskTagAddNew.swift
//  taskDemo
//
//  Created by Misael Landero on 26/09/21.
//

import SwiftUI


struct dumbTagModel {
    var name = ""
    var color = 0
}

struct TaskTagAddNew: View {
    
    //Model View de Coredate
    @Environment(\.managedObjectContext) var moc
    
    //Data
    @State private var dumbTag = dumbTagModel(name: "", color: 0)
     
    //Sheet presentation
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        #if os(macOS)
        VStack{
            Text("New Tag")
                .font(.largeTitle)
            TaskTagForm(dumbModel: $dumbTag)
            HStack{
                Button(action: closeModal){
                    Label("Cancel", systemImage: "xmark.circle")
                }
                Spacer()
                Button(action: saveTag){
                    Label("Save", systemImage: "plus.circle")
                }
            }
        }
        .padding()
        #else
        NavigationView(){
            TaskTagForm(dumbModel: $dumbTag)
                .navigationTitle("New Tag")
                .toolbar(){
                    ToolbarItem(placement: .confirmationAction){
                        Button(action: saveTag){
                            Label("Save", systemImage: "plus.circle")
                        }
                    }
                    ToolbarItem(placement: .cancellationAction){
                        Button(action: closeModal){
                            Label("Cancel", systemImage: "xmark.circle")
                        }
                    }
                }
        }
        #endif
    }
    
    func saveTag(){
        let newTag = TaskTag(context: self.moc)
        newTag.id = UUID()
        newTag.name =  dumbTag.name
        newTag.color = Int16(dumbTag.color)
        
        try? self.moc.save()
        closeModal()
    }
    
    func closeModal(){
        presentationMode.wrappedValue.dismiss()
    }
}


struct TaskTagForm: View {
    
    @Binding var dumbModel : dumbTagModel
    
    var colors = AppStyles.AppColors
    
    var body: some View {
        Form{
            TextField("Name", text: $dumbModel.name)
            Picker("Chose a color", selection: $dumbModel.color){
                ForEach(0..<colors.count){ index in
                    Text(colors[index].name)
                        .foregroundColor(colors[index].color)
                }
            }
        }
    }
}

struct TaskTagAddNew_Previews: PreviewProvider {
    static var previews: some View {
        TaskTagAddNew()
    }
}
