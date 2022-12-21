//
//  LearnerProfile.swift
//  Skillup-muneerah
//
//  Created by Muneerah Aledaily on 18/12/2022.
//

import SwiftUI
import CloudKit

struct LearnerProfile: View {
    @StateObject private var vm: LearnerListViewModel
    
    @State var FirstName:String = ""
    @State var LastName:String = ""
    @State var Bio:String = ""
    @State var Location:String = ""
    @State var Occupation:String = ""

    init(vm: LearnerListViewModel) {
        _vm = StateObject(wrappedValue: vm)
    }
    
    var body: some View {
       
            ScrollView{
                VStack{
                    
                    
                    Image("Image4")
                        .resizable()
                        .frame(width: 140, height: 140)
                        .clipShape(Circle())
                        .padding()
                    Text("Edit Photo")
                        .foregroundColor(Color("Sblue"))
                    
                    HStack (spacing : 40){
                        
                        Text("First Name")
                            .foregroundColor(Color("SPurple"))
                            .font(Font.headline.weight(.bold))
                        TextField("Firat name", text: $FirstName)
                            .foregroundColor(Color.black)
                            .padding()
                            .frame(width: 232.0, height: 40.0)
                            .overlay(RoundedRectangle(cornerRadius: 17)
                                .stroke(Color("Slightgray"), lineWidth:1))
                    }//hstack
                    
                    HStack(spacing : 40){
                        Text("Last Name")
                            .foregroundColor(Color("SPurple"))
                            .font(Font.headline.weight(.bold))
                        
                        TextField("Last name", text: $LastName)
                            .foregroundColor(Color.black)
                            .padding()
                            .frame(width: 232.0, height: 40.0)
                            .cornerRadius(17)
                            .overlay(RoundedRectangle(cornerRadius: 17)
                                .stroke(Color("Slightgray"), lineWidth:1))
                    }//hstack
                    
                    
                    
                    .cornerRadius(8)
                    .frame(width: 360.0, height: 50.0)
                    
                    HStack(spacing : 100){
                        
                        Text("Bio")
                            .foregroundColor(Color("SPurple"))
                            .font(Font.headline.weight(.bold))
                        
                        
                        TextEditor(text: $Bio)
                            .frame(width: 230.0, height: 100.0)
                            .cornerRadius(17)
                        
                            .overlay(RoundedRectangle(cornerRadius: 17)
                                .stroke(Color("Slightgray"), lineWidth:1))
                    }//hstack
                    
                    HStack(spacing : 30){
                        Text("Occupation")
                            .foregroundColor(Color("SPurple"))
                            .font(Font.headline.weight(.bold))
                        TextField("Type your occupation", text: $Occupation)
                            .foregroundColor(Color.black)
                            .padding()
                            .frame(width: 232.0, height: 40.0)
                            .cornerRadius(17)
                            .overlay(RoundedRectangle(cornerRadius: 17)
                                .stroke(Color("Slightgray"), lineWidth:1))
                        
                    }//hstacka
                    
                    HStack(spacing : 50){
                        Text("Location")
                            .foregroundColor(Color("SPurple"))
                            .font(Font.headline.weight(.bold))
                        TextField("Location", text: $Location)
                            .foregroundColor(Color.black)
                            .padding()
                            .frame(width: 232.0, height: 40.0)
                            .cornerRadius(17)
                            .overlay(RoundedRectangle(cornerRadius: 17)
                                .stroke(Color("Slightgray"), lineWidth:1))
                        
                    }//hstack
                  
                    Button("Save") {
                        vm.saveItem(FirstName: FirstName, LastName: LastName, Bio: Bio, Location: Location, Occupation: Occupation)
                    }
                    .frame(width: 170, height: 60)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .background(Color("SGreen"))
                    .cornerRadius(20)
                    .padding(50)
                    
                    
                }//vstack
                
                .navigationTitle("Profile")
                .navigationBarTitleDisplayMode(.inline)
                //               .toolbarBackground(Color("SPurple"), for: .navigationBar)
                .toolbarBackground(.visible, for: .navigationBar)
                .navigationBarItems(leading: NavigationLink(destination: SettingPage(), label:{}), trailing: NavigationLink(destination: SettingPage()
                                                                                                                            /*.navigationBarBackButtonHidden(true)*/, label:{ Image(systemName: "slider.horizontal.3")}))
                .accentColor(Color("SPurple"))
                //.navigationBarItems(leading: NavigationLink(destination: Profile(), label:{}), trailing: NavigationLink(destination: profileView() , label:{ Image(systemName: "gearshape")}))
                //.foregroundColor(.white)
                // }//navView
                
            } .navigationBarHidden(true)
            .navigationBarBackButtonHidden(true)
        
            //.foregroundColor(.white)
            // .accentColor(.white)
        
}//body
    
}//ContView


struct LearnerProfile_Previews: PreviewProvider {
    static var previews: some View {
        LearnerProfile(vm: LearnerListViewModel(container: CKContainer.default()))
    }
}
