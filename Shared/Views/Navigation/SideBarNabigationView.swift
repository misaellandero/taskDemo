//
//  SideBarNabigationView.swift
//  taskDemo
//
//  Created by Misael Landero on 26/09/21.
//

import SwiftUI

struct SideBarNabigationView: View {
    var body: some View {
        NavigationView{
            List{
                // MARK: - tags
                NavigationLink(destination: TaskTagList()){
                    Label("Tags", systemImage: "tag")
                }
                // MARK: - task
                NavigationLink(destination: Text("Tags")){
                    Label("Tasks", systemImage: "checkmark.circle")
                }
                // MARK: - settings
                NavigationLink(destination: Text("Tags")){
                    
                        Label("Settings", systemImage: "gear")
                }
            }
            .navigationTitle("Task")
            
            Text("Detail view")
            
            //Text("SubDetail view")
        }
       
        
    }
}

struct SideBarNabigationView_Previews: PreviewProvider {
    static var previews: some View {
        SideBarNabigationView()
    }
}
