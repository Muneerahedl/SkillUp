//
//  AddNewService.swift
//  Skillup-muneerah
//
//  Created by Muneerah Aledaily on 17/12/2022.
//

import SwiftUI



struct AddNewService: View {
   

    @State private var isSelected = false
    @State private var isSelected2 = false
    @State private var isSelected3 = false
    @State private var isSelected4 = false
    @State private var isSelected5 = false
    @State private var isSelected6 = false
    @State private var showAlert = false
    @State private var alertText = ""
    @State var Prof:String = ""
    @State var Note:String = ""
    @State var Lcount:Int = 0
    @State var Scount:Int = 1
    @State var Pht:String = ""
    @State var Certificate:String = ""
    @State private var  Tools = 1
    
    
    init(){

        UISegmentedControl.appearance().selectedSegmentTintColor =  .init(Color("SGreen"))
        UISegmentedControl.appearance().setTitleTextAttributes([.foregroundColor: UIColor.white], for: .selected)
       
        }
    
    
    var body: some View {
            ScrollView{
        VStack(alignment: .leading , spacing: 15) {
            Text("Choose the service category:")
                .fontWeight(.bold)
            HStack {
                SelectButton(
                    isSelected: $isSelected, color: Color("Sblue") ,  text: "Art")
                .onTapGesture {
                    isSelected.toggle()
                    if isSelected {
                        isSelected2 = false
                        isSelected3 = false
                        isSelected4 = false
                        isSelected5 = false
                        isSelected6 = false
                    }
                }
                SelectButton(
                    isSelected: $isSelected2, color:  Color("Sblue"), text: "Music")
                .onTapGesture {
                    isSelected2.toggle()
                    if isSelected2 {
                        isSelected = false
                        isSelected3 = false
                        isSelected4 = false
                        isSelected5 = false
                        isSelected6 = false
                    }
                }
                SelectButton(
                    isSelected: $isSelected3, color:  Color("Sblue"), text: "Sports")
                .onTapGesture {
                    isSelected3.toggle()
                    if isSelected3 {
                        isSelected = false
                        isSelected2 = false
                        isSelected4 = false
                        isSelected5 = false
                        isSelected6 = false
                    }
                }
                
            }
            HStack{
                SelectButton(
                    isSelected: $isSelected4, color:  Color("Sblue"), text: "Crafts")
                .onTapGesture {
                    isSelected4.toggle()
                    if isSelected4 {
                        isSelected = false
                        isSelected2 = false
                        isSelected3 = false
                        isSelected5 = false
                        isSelected6 = false
                    }
                }
                SelectButton(
                    isSelected: $isSelected5, color:  Color("Sblue"), text: "Makeup")
                .onTapGesture {
                    isSelected5.toggle()
                    if isSelected5 {
                        isSelected = false
                        isSelected2 = false
                        isSelected3 = false
                        isSelected4 = false
                        isSelected6 = false
                        
                    }
                }
                SelectButton(
                    isSelected: $isSelected6, color:  Color("Sblue"), text: "Other")
                .onTapGesture {
                    isSelected6.toggle()
                    if isSelected6 {
                        isSelected = false
                        isSelected2 = false
                        isSelected3 = false
                        isSelected4 = false
                        isSelected5 = false
                    }
                }
                
            }//hstack
            VStack(alignment: .leading, spacing: 15){
                Text("Profession:")
                    .fontWeight(.bold)
                TextField("Add profession", text: $Prof)
                    .foregroundColor(Color.black)
                    .padding()
                    .frame(width: 360.0, height: 40.0)
                    .overlay(RoundedRectangle(cornerRadius: 17)
                        .stroke(Color.gray, lineWidth:1))
                
                Text("Certificates in this categories :")
                    .fontWeight(.bold)
                TextField("Add certificates name", text: $Certificate)
                    .foregroundColor(Color.black)
                    .padding()
                    .frame(width: 360.0, height: 40.0)
                    .overlay(RoundedRectangle(cornerRadius: 17)
                        .stroke(Color.gray, lineWidth:1))
                
                Text("Experence level (Number of Years):")
                    .fontWeight(.bold)
                
                /** stipper fot Experience Level **/
                HStack{
                Button(action:{
                self.Lcount += 1
                }){
                                
                    ZStack{
                                           
                         RoundedRectangle(cornerRadius: 40)
                         .frame(width: 60 , height: 40)
                         .foregroundColor(Color(red: 0.289, green: 0.667, blue: 0.489))

                           Text("+")
                            .foregroundColor(.white)
               }
             }
                                       
                    ZStack{
                                       
                      RoundedRectangle(cornerRadius: 40)
                      .frame(width: 60 , height: 40)
                      .foregroundColor(Color(hue: 0.679, saturation: 0.0, brightness: 0.876))
                       Text("\( Lcount) ")
                       .foregroundColor(.black)
                       }
                       Button(action:{
                       if (Lcount > 0) {
                       self.Lcount -= 1
              }
                }){
                        ZStack{
                                                
                        RoundedRectangle(cornerRadius: 40)
                         .frame(width: 60 , height: 40)
                          .foregroundColor(.gray)
                       Text("-")
                         .foregroundColor(.white)
                        }
                     }
                   }
                  //end HStack

                
                Text("Session time (Number of hours):")
                    .fontWeight(.bold)
                
                /** stipper fot Session time**/
                HStack{
                Button(action:{
                self.Scount += 1
                }){
                                
                    ZStack{
                                           
                         RoundedRectangle(cornerRadius: 40)
                         .frame(width: 60 , height: 40)
                         .foregroundColor(Color(red: 0.289, green: 0.667, blue: 0.489))

                           Text("+")
                            .foregroundColor(.white)
               }
             }
                                       
                    ZStack{
                                       
                      RoundedRectangle(cornerRadius: 40)
                      .frame(width: 60 , height: 40)
                      .foregroundColor(Color(hue: 0.679, saturation: 0.0, brightness: 0.876))
                       Text("\( Scount) ")
                       .foregroundColor(.black)
                       }
                       Button(action:{
                       if (Scount > 1) {
                       self.Scount -= 2
              }
                }){
                        ZStack{
                                                
                        RoundedRectangle(cornerRadius: 40)
                         .frame(width: 60 , height: 40)
                          .foregroundColor(.gray)
                       Text("-")
                         .foregroundColor(.white)
                        }
                     }
                   }
                  //end HStack

                
                Text("You will provide the needed tools? ?")
                    .fontWeight(.bold)
                HStack{
                    Picker("Tools", selection: $Tools) {
                        Text("Yes")
                            .tag(0)
                        Text("No")
                            .tag(1)}
                    .pickerStyle(SegmentedPickerStyle())
                }
                .frame(width: 360, height: 60)
                
  
            }// vstack
          
            
            VStack(alignment: .leading, spacing: 15){
//                Text("Add photos (at least 3):")
//                    .fontWeight(.bold)
//                TextField("Add Photos", text: $Pht)
//                    .foregroundColor(Color.black)
//                    .padding()
//                    .frame(width: 350.0, height: 40.0)
//                    .overlay(RoundedRectangle(cornerRadius: 17)
//                        .stroke(Color.gray, lineWidth:1))
                
                TextField("Add notes (optional)", text: $Note)
                    .foregroundColor(Color.black)
                    .padding()
                    .frame(width: 360.0, height: 40.0)
                    .overlay(RoundedRectangle(cornerRadius: 17)
                        .stroke(Color.gray, lineWidth:1))
                HStack{
                
                        NavigationLink(destination: ServicesListView().navigationBarBackButtonHidden(true)) {
                            Text("Cancel")
                                .frame(width: 170, height: 60)
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                                .background(Color("Sblue"))
                                .cornerRadius(20)
                    }
                        
                        NavigationLink(destination: ServicesListView().navigationBarBackButtonHidden(true)) {
                            Text("Save")
                            
                                .frame(width: 170, height: 60)
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                                .background(Color("SGreen"))
                                .cornerRadius(20)
                        }
                }//hstack
//                NavigationLink(destination: AddNewService().navigationBarBackButtonHidden(true)) {
//                    Text("Delete this Service")
//
//                        .frame(width: 350, height: 60)
//                        .fontWeight(.bold)
//                        .foregroundColor(.white)
//                        .background(Color("Sred"))
//                        .cornerRadius(20)
//                }
            }//vstack
        }//vstack
        .padding(.leading, 30)
        .padding(.trailing, 30)
        .navigationTitle("New Service")
        .navigationBarTitleDisplayMode(.inline)
//        .foregroundColor(Color("SPurple"))
//               .toolbarBackground(Color("SPurple"), for: .navigationBar)
        .toolbarBackground(.visible, for: .navigationBar)
        .navigationBarBackButtonHidden(false)
       
         //.foregroundColor(.white)
    // }//navView
 }
            .padding(20)
        
    }
}

struct ToggleCheckboxStyle2: ToggleStyle{
    func makeBody(configuration: Configuration) -> some View {
        Button{
            configuration.isOn.toggle()
           
        }label:{
            Image(systemName: configuration.isOn ? "checkmark.square": "square")
                .resizable()
                .frame(width: 24, height: 24)
               //.foregroundColor(configuration.isOn ? .accentColor : .red)
                .onTapGesture {
                    configuration.isOn.toggle()
                }
        }
       
        
    }
    
}

struct AddNewService_Previews: PreviewProvider {
    static var previews: some View {
       AddNewService()
    }
}
