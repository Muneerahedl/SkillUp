//
//  TrainerProfile.swift
//  Skillup-muneerah
//
//  Created by Muneerah Aledaily on 18/12/2022.
//

import SwiftUI
import CloudKit


struct TrainerProfile: View {
    
    @StateObject private var vm2: NewServiceViewViewModel
    @State var TFirstName:String = ""
    @State var TLastName:String = ""
    @State var TBio:String = ""
    @State var TLocation:String = ""
    @State var Linkedin:String = ""
    @State var Instagram:String = ""
    @State private var  gander = 1
    
//    init(){
//
//        UISegmentedControl.appearance().selectedSegmentTintColor =  .init(Color("SGreen"))
//        UISegmentedControl.appearance().setTitleTextAttributes([.foregroundColor: UIColor.white], for: .selected)
//
//    }
    
    init(vm2: NewServiceViewViewModel) {
        _vm2 = StateObject(wrappedValue: vm2)
        UISegmentedControl.appearance().selectedSegmentTintColor =  .init(Color("SGreen"))
        UISegmentedControl.appearance().setTitleTextAttributes([.foregroundColor: UIColor.white], for: .selected)
    }
    
    var body: some View {
        //NavigationView{
            ScrollView{
                VStack{
                    
                    
                    Image("Image1")
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
                        TextField("Firat name", text: $TFirstName)
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
                        
                        TextField("Last name", text: $TLastName)
                            .foregroundColor(Color.black)
                            .padding()
                            .frame(width: 232.0, height: 40.0)
                            .cornerRadius(17)
                            .overlay(RoundedRectangle(cornerRadius: 17)
                                .stroke(Color("Slightgray"), lineWidth:1))
                    }//hstack
                    
                    HStack(spacing : 70){
                        
                        Text("Gender")
                            .foregroundColor(Color("SPurple"))
                        //                            .foregroundColor(.black)
                        
                            .font(Font.headline.weight(.bold))
                        
                        HStack{
                            
                            Picker("gender", selection: $gander) { Text("Male")
                                    .tag(0)
                                Text("Female")
                                .tag(1)}
                            .pickerStyle(SegmentedPickerStyle())
                        } //hstack
                    }//hstack
                    
                    .cornerRadius(8)
                    .frame(width: 360.0, height: 50.0)
                    
                    HStack(spacing : 100){
                        
                        Text("Bio")
                            .foregroundColor(Color("SPurple"))
                            .font(Font.headline.weight(.bold))
                        
                        
                        TextEditor(text: $TBio)
                            .frame(width: 230.0, height: 100.0)
                            .cornerRadius(17)
                        
                            .overlay(RoundedRectangle(cornerRadius: 17)
                                .stroke(Color("Slightgray"), lineWidth:1))
                    }//hstack
                    HStack(spacing : 50){
                        Text("Location")
                            .foregroundColor(Color("SPurple"))
                            .font(Font.headline.weight(.bold))
                        TextField("Location", text: $TLocation)
                            .foregroundColor(Color.black)
                            .padding()
                            .frame(width: 232.0, height: 40.0)
                            .cornerRadius(17)
                            .overlay(RoundedRectangle(cornerRadius: 17)
                                .stroke(Color("Slightgray"), lineWidth:1))
                        
                    }//hstack
                    HStack(spacing : 50){
                        Text("Linkedin")
                            .foregroundColor(Color("SPurple"))
                            .font(Font.headline.weight(.bold))
                        TextField("Linkedin profile URL", text: $Linkedin)
                            .foregroundColor(Color.black)
                            .padding()
                            .frame(width: 232.0, height: 40.0)
                            .cornerRadius(17)
                            .overlay(RoundedRectangle(cornerRadius: 17)
                                .stroke(Color("Slightgray"), lineWidth:1))
                        
                    }//hstack
                    HStack(spacing : 40){
                        Text("Instagram")
                            .foregroundColor(Color("SPurple"))
                            .font(Font.headline.weight(.bold))
                        // .padding()
                        TextField("Instagram profile URL", text: $Instagram)
                            .foregroundColor(Color.black)
                            .padding()
                            .frame(width: 232.0, height: 40.0)
                            .cornerRadius(17)
                            .overlay(RoundedRectangle(cornerRadius: 17)
                                .stroke(Color("Slightgray"), lineWidth:1))
                    } //hstack
                  
                    Button("Save") {
                        vm2.saveItem2(TFirstName: TFirstName, TLastName: TLastName, TBio: TBio, TLocation: TLocation)
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
                .navigationBarItems(leading: NavigationLink(destination: SettingPage().navigationBarBackButtonHidden(true), label:{}), trailing: NavigationLink(destination: SettingPage()
                    /*.navigationBarBackButtonHidden(true)*/, label:{ Image(systemName: "slider.horizontal.3")}))
                
                .accentColor(Color("SPurple"))
                
            }
            .navigationBarBackButtonHidden(true)
        
            //.navigationBarHidden(true)
            
            
        }//body
        
    }//ContView
    
//}
    struct ToggleCheckboxStyle: ToggleStyle{
        func makeBody(configuration: Configuration) -> some View {
            Button{
                configuration.isOn.toggle()
            }label:{
                Image(systemName: configuration.isOn ? "checkmark.square": "square")
                    .resizable()
                    .frame(width: 24, height: 24)
                // .foregroundColor(configuration.isOn ? .accentColor : .red)
                
                    .onTapGesture {
                        configuration.isOn.toggle()
                    }
                // .accentColor(Color("SGreen"))
        }
        
        }
    }
    
 //toggle

struct TrainerProfile_Previews: PreviewProvider {
    static var previews: some View {
        TrainerProfile(vm2: NewServiceViewViewModel(container: CKContainer.default()))
    }
}
