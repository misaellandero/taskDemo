//
//  TabBarNavigationView.swift
//  taskDemo
//
//  Created by Misael Landero on 26/09/21.
//

import SwiftUI

struct TabBarNavigationView: View {
    var body: some View {
        
        TabView{
            // MARK: - tags
                NavigationView{
                    TaskTagList()
                }
                .tabItem{
                    Label("Tags", systemImage: "tag")
                }
            // MARK: - task
            Text("Hello, World!")
                .tabItem{
                    Label("Tasks", systemImage: "checklist")
                }
            // MARK: - settings
            Text("Hello, World!")
                .tabItem{
                    Label("Settings", systemImage: "gear")
                }
        }
    }
}

struct TabBarNavigationView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarNavigationView()
    }
}
