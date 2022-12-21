//
//  SettingPage.swift
//  Skillup-muneerah
//
//  Created by Muneerah Aledaily on 12/12/2022.
//

import SwiftUI

struct SettingPage: View {
    var body: some View {
        NavigationView{
            ScrollView{
                VStack(alignment: .leading, spacing: 10){
                    HStack{
                        Image(systemName: "creditcard")
                        Text("Payment Settings")
                    }//hstack
                    HStack{
                        Image(systemName: "clock.arrow.circlepath")
                        Text("Your History")
                    }//hstack
                    HStack{
                        Image(systemName: "exclamationmark.circle")
                        Text("Online Support")
                    }//hstack
                    HStack{
                        Image(systemName: "star.bubble")
                        Text("Reviews")
                    }//hstack
                    HStack{
                        Image(systemName: "rectangle.portrait.and.arrow.right")
                        Text("LogOut")
                    }//hstack
                }//vstac
                .foregroundColor(Color("Sblue"))
                .fontWeight(.bold)
                .frame(
                    maxWidth: .infinity,
                    maxHeight: .infinity,
                    alignment: .leading  )
                
                // .frame(width: 300, height: 5)
                .padding(30)
                .navigationTitle("Settings")
                .navigationBarTitleDisplayMode(.inline)
                //  .toolbarBackground(Color("SPurple"), for: .navigationBar)
                //.toolbarBackground(.visible, for: .navigationBar)
                
                
            }//navview
            //.accentColor(Color("SPurple"))
            //.foregroundColor(Color("SPurple"))
            //  }
            
        }
        
    }
}
struct SettingPage_Previews: PreviewProvider {
    static var previews: some View {
        SettingPage()
    }
}
