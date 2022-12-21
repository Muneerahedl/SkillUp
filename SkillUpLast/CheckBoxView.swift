//
//  CheckBoxView.swift
//  SkiilUp
//
//  Created by Maha Alassaf on 24/05/1444 AH.
//
import SwiftUI
struct CheckBoxView: View {
    @State var checked: Bool = false
    var body: some View {
        
        Image(systemName: checked ? "checkmark.square.fill" : "square")
            .foregroundColor(checked ? Color(UIColor.systemGray) : Color.secondary)
            .onTapGesture {
                self.checked.toggle()
            }

    }
    
}

struct CheckBoxView_Previews: PreviewProvider {
    struct CheckBoxViewHolder: View {
        @State var checked = false
        var body: some View {
            CheckBoxView(checked: checked)
        }
    }

    static var previews: some View {
        CheckBoxViewHolder()
    }
}

struct CheckBoxView1: View {
    @State var count: Int = 1
    @State var showGreeting = false
    @State private var checked = true
    
    @State var myInput: String = ""

    var body: some View {
        VStack{
            Spacer(minLength: 40)
            //scrollview start
            ScrollView{
                VStack{
                    VStack{
                        
                        VStack{
                            HStack(spacing: 20){
                                Text("Number of learners           ").bold()
    
                                HStack{
                                    Button(action:{
                                        self.count += 1
                                    }){
                                        ZStack{
                                            
                                            RoundedRectangle(cornerRadius: 40)
                                                .frame(width: 40 , height: 30)
                                                .foregroundColor(Color(red: 0.289, green: 0.667, blue: 0.489))
                                            
                                            //                                   .foregroundColor(Color(red: 0.289, green: 0.667, blue: 0.489))
                                            
                                            Text("+")
                                                .foregroundColor(.white)
                                        }
                                        
                                        
                                    }
                                    
                                    ZStack{
                                        
                                        RoundedRectangle(cornerRadius: 40)
                                            .frame(width: 40 , height: 30)
                                            .foregroundColor(Color(hue: 0.679, saturation: 0.0, brightness: 0.876))
                                        Text("\( count) ")
                                        
                                            .foregroundColor(.black)
                                        
                                    }
                                    
                                    
                                    Button(action:{
                                        if (count > 1) {
                                            self.count -= 1
                                        }
                                        
                                    }){
                                        ZStack{
                                            
                                            RoundedRectangle(cornerRadius: 40)
                                                .frame(width: 40 , height: 30)
                                                .foregroundColor(.gray)
                                            
                                            Text("-")
                                                .foregroundColor(.white)
                                            
                                        }
                                    }
                                    //
                                } //end HStack
                            }
                        }
                        //end sec VStack
                        
                        //            Image("calendar")
                        VStack{
                            DatePicker(selection: /*@START_MENU_TOKEN@*/.constant(Date())/*@END_MENU_TOKEN@*/, label: { Text("Date and Time").padding(.leading , 15)
                                
                            })
                            
                            Toggle(isOn: $showGreeting){
                                VStack{
                                    Text("Do you have a promocode ?")
                                    ZStack{
                                        if(showGreeting == true){
                                            RoundedRectangle(cornerRadius: 10)
                                                .frame(width: 290 , height: 40)
                                                .foregroundColor(Color(hue: 1.0, saturation: 0.02, brightness: 0.869))

                                            TextField("The number", text: $myInput)
                                   
                                            
                                        }
                                    }
                                  
                                }
                            }.padding()
                        }
                        
                        
                    }.background(Color.ColorS).frame(width: 360).cornerRadius(17.5)
                    
                    //  .padding(.all)
                    VStack{
                        Text("Total price")
                        Text("\( count * 100) ")
                            .font(.title)
                            .bold()
                            .foregroundColor(Color(red: 0.127, green: 0.736, blue: 0.879))
                        Text("          *The ammount will be taken after trainer confirmation.            ")

                            .font(.system(size: 12, weight: .medium, design: .default))
                    } .background(Color.ColorS).frame(width: 360).cornerRadius(17.5)
                    
                    Spacer(minLength: 10)
                    
                    Text("Session Location").padding(.trailing , 210).bold()
                    
                    
                    MyMap().background(Color.ColorS).frame(width: 360).cornerRadius(30).bold()
                    
                    Spacer(minLength: 20)
                    
                    HStack{
                        Image("Image").resizable().frame(width: 15 ,height: 15)
                        Text("Notes").padding(.trailing , 280).bold()
                            .font(.system(size: 18, weight: .bold, design: .default))
                    }
                    ZStack{
                        Text("\n   Please Note : You have to prapare your own painting tool,  place protection and the place should have a goot lighting and ventilation. \n Please Note :When you confirm your reservation and agree the terms and conditions, you can cancel the reservation up to 48 hours in advance. \n After complete the booking you will receive a QR code, that will be scanned by the trainer in the session time. \n Appointment period: Two hours \n")
                            .font(.system(size: 12, weight: .medium, design: .default))
                    }.background(Color.ColorS).frame(width: 360 ).cornerRadius(30)
                    
                    
                }//end first VStack
                
                Spacer(minLength: 10)
                HStack {
                    CheckBoxView(checked: checked)
                    
                    Text("I’ve read & understand the Notes.")
                        .font(.system(size: 12, weight: .medium, design: .default))
                }.padding(.trailing , 130).bold()
                
                
                Button(action:{
                    if (count > 0) {
                        self.count -= 1
                    }
                    
                }){
                }
                
            }//end scrollView
            
            //???????????????????????????????
            
           NavigationLink(destination: MyTimer()){
                VStack{
                    HStack{
                        Text("pay Now").foregroundColor(.white).bold()
                    }.frame(width: 350 , height: 50)
                        .background(Color.ColorG)
                        .cornerRadius(30)
                }
            }
            
            
        }.navigationTitle("Booking")
        
        // end body
        
        //    TabView {
        //
        //            //Home
        //            Home().tabItem{
        //                Label("Home" , systemImage: "house")
        //            }
        //            //Fav
        //            Home().tabItem{
        //                Label("Favourite" , systemImage: "heart.fill")
        //            }
        //
        //            //Booking
        //            Home().tabItem{
        //                Label("calendar" , systemImage: "calendar")
        //            }
        //            //Profile
        //            Home().tabItem{
        //                Label("Profile" , systemImage: "person.fill")
        //            }
        //        }
    }
}//end view

struct ContentView1_Previews: PreviewProvider {
    static var previews: some View {
        CheckBoxView1()
    }
}
//VStack{
//VStack{
//LinearGradient(gradient: Gradient(colors: [Color.orange, Color.purple]), startPoint: .topTrailing, endPoint: .topLeading)
//.frame(height: 250.0)
//.cornerRadius(25)
//.padding(.top, -170)
//Text("About Us")
//.font(.title)
//
//.padding(.top, -80.0)
//}
//
//Text("Where does it come from? Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia , looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of de Finibus Bonorum et Malorum (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, Lorem ipsum dolor sit amet.., comes from a line in section 1.10.32 The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from de Finibus Bonorum et Malorum by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.")
//
//        .padding(.all)
//            }
//
// Rectangle()
//    .foregroundColor(Color(red: 0.375, green: 0.336, blue: 0.722))
//
//    .frame(width: 407 , height: 200)
//
//  Payment.swift
//  SkiilUp
//
//  Created by Maha Alassaf on 25/05/1444 AH.
//

