//
//  Home.swift
//  SkiilUp
//
//  Created by Maha Alassaf on 20/05/1444 AH.
//
import SwiftUI
struct Home: View {
    @State var ArraySport : [Learner] =
    [
        Learner(Image: "Yoga", Title: "Yoga"),
        Learner(Image: "Swimming", Title: "Swimming"),
        Learner(Image: "Skating", Title: "Skating")
    ]
    @State var ArrayArts : [Learner] =
    [
        Learner(Image: "WaterColor", Title: "WaterColor"),
        Learner(Image: "Caligraphy", Title: "Caligraphy"),
        Learner(Image: "DigitalPainti", Title: "Digital painti")
    ]
    @State var ArrayOther : [Learner] =
    [
        Learner(Image: "Doll Making", Title: "Doll Making"),
        Learner(Image: "Jewelry Making", Title: "Jewelry Making"),
        Learner(Image: "Swing", Title: "Swing")
    ]
    
    //Search
    @State private var searchText = ""
    
    //segmented control (Bar Filttering)
    @State private var menu = 0
    
    var body: some View {
        VStack{
            Search()
            Divider()
            //List
            ScrollView(.vertical){
                //segmented control (Bar Filttering)
                ScrollView(.horizontal){
                    HStack(spacing: 15){
                        //1
                        Spacer(minLength: 5)
                        Button {
                            self.menu =   0
                        } label: {
                            Text("All ")
                                .foregroundColor(self.menu == 0 ? .white : .white)//text
                                .padding(.vertical , 10)
                                .padding(.horizontal ,30)
                        }
                        .background(self.menu == 0 ? Color.ColorG : Color.gray)//button Color
                        .clipShape(Capsule())
                        
                        //2
                        Button {
                            self.menu = 1
                        } label: {
                            Text("Arts ")
                                .foregroundColor(self.menu == 1 ? .white : .white)
                                .padding(.vertical , 10)
                                .padding(.horizontal ,30)
                        }
                        .background(self.menu == 1  ?Color.ColorG : Color.gray)
                        .clipShape(Capsule())
                        
                        //3
                        Button {
                            self.menu = 2
                        } label: {
                            Text("Sports ")
                                .foregroundColor(self.menu == 2 ? .white : .white)
                                .padding(.vertical , 10)
                                .padding(.horizontal ,30)
                        }
                        .background(self.menu == 2 ? Color.ColorG : Color.gray)
                        .clipShape(Capsule())
                        
                        //4
                        Button {
                            self.menu = 3
                        } label: {
                            Text("Music ")
                                .foregroundColor(self.menu == 3 ? .white : .white)
                                .padding(.vertical , 10)
                                .padding(.horizontal ,30)
                        }
                        .background(self.menu == 3 ? Color.ColorG : Color.gray)
                        .clipShape(Capsule())
                        
                        //5
                        Button {
                            self.menu = 4
                        } label: {
                            Text("Sports ")
                                .foregroundColor(self.menu == 4 ? .white : .white)
                                .padding(.vertical , 10)
                                .padding(.horizontal ,30)
                        }
                        .background(self.menu == 4 ? Color.ColorG : Color.gray)
                        .clipShape(Capsule())
                    }
                }
                if(menu == 0){
                    //Sport
                    ScrollView(.horizontal){
                        VStack{
                            Text("Sport")
                                .fontWeight(.bold)
                                .font(.title)
                                .foregroundColor(Color(hue: 0.726, saturation: 0.594, brightness: 0.928, opacity: 100.0))
                                .padding(.trailing ,300)
                            HStack{
                                ForEach(ArraySport) {
                                    Learner in LearnerView(Learner: Learner)
                                }
                            }
                            
                        }
                    }
                    
                    //Arts
                    ScrollView(.horizontal){
                        Text("Arts")
                            .fontWeight(.bold)
                            .font(.title)
                            .foregroundColor(Color(hue: 0.726, saturation: 0.594, brightness: 0.928, opacity: 100.0))
                            .padding(.trailing ,300)
                        HStack{
                            ForEach(ArrayArts) {
                                Learner in LearnerView(Learner: Learner)
                            }
                        }
                    }
                    
                    //Others
                    ScrollView(.horizontal){
                        Text("Other")
                            .fontWeight(.bold)
                            .font(.title)
                            .foregroundColor(Color(hue: 0.726, saturation: 0.594, brightness: 0.928, opacity: 100.0))
                            .padding(.trailing ,300)
                        HStack{
                            ForEach(ArrayOther) {
                                Learner in LearnerView(Learner: Learner)
                            }
                        }
                    }
                }
                
                if(menu == 1){
                    ScrollView(.horizontal){
                        Text("Arts")
                            .fontWeight(.bold)
                            .font(.title)
                            .foregroundColor(Color(hue: 0.726, saturation: 0.594, brightness: 0.928, opacity: 100.0))
                            .padding(.trailing ,300)
                        HStack{
                            ForEach(ArrayArts) {
                                Learner in LearnerView(Learner: Learner)
                            }
                        }
                    }
                }
                
                if(menu == 2){
                    ScrollView(.horizontal){
                        VStack{
                            Text("Sport")
                                .fontWeight(.bold)
                                .font(.title)
                                .foregroundColor(Color(hue: 0.726, saturation: 0.594, brightness: 0.928, opacity: 100.0))
                                .padding(.trailing ,300)
                            HStack{
                                ForEach(ArraySport) {
                                    Learner in LearnerView(Learner: Learner)
                                }
                            }
                            
                        }
                    }
                }
            }
            
           
            .navigationTitle("Skills")
          
          .navigationBarTitleDisplayMode(.inline)
            .toolbarBackground(.visible, for: .navigationBar)
        }
        
    }
}

    struct Home_Previews: PreviewProvider {
        static var previews: some View {
            Home()
        }
    }
    
    //info
    struct Learner: Identifiable{
        let Image : String
        let Title : String
        
        let id = UUID().uuidString
    }
    
    //How to View The subject
    struct LearnerView : View{
        let Learner: Learner
        var body: some View{
            NavigationLink(destination: Teacher()){
                VStack{
                    Image(Learner.Image)
                        .resizable()
                        .cornerRadius(30)
                        .frame(width:120 , height: 150)
                    Text("\(Learner.Title)").foregroundColor(.gray)
                }.padding(.leading , 20)
            }
        }
    }

    //Search
    struct Search: View {
        @State var text : String = ""
        
        var body: some View {
            HStack{
                Image(systemName: "magnifyingglass").foregroundColor(Color.ColorG)
                TextField("Search..." , text: $text)
            }
            .font(.headline)
            .padding()
            .background(
                RoundedRectangle(cornerRadius: 25)
                    .fill(Color.white)
    //                .shadow(
    //                    radius: 10
    //                )
            )
        }
    }

  
