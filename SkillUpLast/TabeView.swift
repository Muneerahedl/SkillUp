//
//  TabeView.swift
//  Skillup-muneerah
//
//  Created by Muneerah Aledaily on 12/12/2022.
//

import SwiftUI
import CloudKit

struct TabeView: View {
   // @State private var quary = ""

    var body: some View {
        
        TabView(selection: .constant(4)) {
            NavigationView{
                RequestslistView()
                
            }
            .navigationBarHidden(true)
            .tabItem { Text("Requests")
            Image(systemName: "calendar") }
            .tag(1)
                    
            NavigationView{
                CodeScanningTest()
                
            }
            .navigationBarHidden(true)
            .tabItem { Text("Scan")
                            Image(systemName: "qrcode.viewfinder")}
                .tag(2)
            
                
            NavigationView{
                ServicesListView()
            }
            .navigationBarHidden(true)
            .tabItem {
                    Text("Services List")
                    Image(systemName: "list.bullet")
                }.navigationBarHidden(true)
                .tag(3)
                
            NavigationView{
                //ContentView()
                TrainerProfile(vm2: NewServiceViewViewModel(container: CKContainer.default()))
            }
            .navigationBarHidden(true)
            .tabItem { Text("Profile")
                    Image(systemName: "person.fill")}
                .tag(4)
       }
        
        
    }
}

struct TabeView_Previews: PreviewProvider {
    static var previews: some View {
        TabeView()
    }
}
