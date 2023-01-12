//
//  TrainerInfo.swift
//  SkillUpp
//
//  Created by Maha Alassaf on 16/05/1444 AH.
import SwiftUI
import AVKit
struct TrainerInfo: View {
    var body: some View {
        ZStack{
                VStack{
                    ScrollView(.vertical){
                        //Name And Buttom
                        HStack(spacing: 140){
                            HStack{
                                Image("Teach1")
                                    .resizable()
                                    .cornerRadius(100)
                                    .frame(width:55 , height: 55)
                                Text("Noura Saad")
                                    .font(.system(size: 20 ))
                                    .bold()
                            }
                            HeratButton2()
                        }
                        
                        Divider()
                        
//                        Text("Video").padding(.trailing , 280).bold().font(.system(size: 20))
//                        VideoPlayer(player: AVPlayer(url:URL(string:"https://www.youtube.com/watch?v=m4JwEbSSflg")!))
//                        .frame(width: 350 , height: 200)
                        
                        Text("Photos").padding(.trailing , 280).bold().font(.system(size: 20))
                        HStack(spacing: 15){
                            Image("Ph1")
                                .resizable()
                                .cornerRadius(17)
                                .frame(width:72 , height: 71)
                            
                            Image("Ph2")
                                .resizable()
                                .cornerRadius(17)
                                .frame(width:72 , height: 71)
                            
                            Image("Ph3")
                                .resizable()
                                .cornerRadius(17)
                                .frame(width:72 , height: 71)
                            
                            Image("Ph4")
                                .resizable()
                                .cornerRadius(17)
                                .frame(width:72 , height: 71)
                        }
                        
                        Text("Trainer Info").padding(.trailing , 260).bold().font(.system(size: 20))
                        VStack(){
                            Text("A professhinal Japanese Callgraphy who has alot of experience in different fields.").font(.system(size: 16))
                                .padding(.leading , 20)
                                .padding(.trailing , 20)
                                .padding(.top , 20)
                            Text("Certificates :")
                                .font(.system(size: 16))
                                .foregroundColor(Color.ColorG)
                                
                                .padding(.trailing , 220)
                                .bold()
                                .padding(.leading , 20)
                                .padding(.trailing , 20)
                            Text("- Calligraphy Diploma Course \n- Centre of Excellence.").padding(.trailing , 70)
                            
                            Text("Tools provided :")
                                .font(.system(size: 16))
                                .foregroundColor(Color.ColorG)
                                .padding(.trailing , 200).bold()
                            Text("- I always bring all the needed tool \n - The learner should provide table &  a well lightening place to work on.")
                                .padding(.leading , 20)
                                .padding(.trailing , 20)
                                .padding(.bottom , 20)
                        }.background(Color.ColorS).frame(width: 360).cornerRadius(30)
                        Spacer(minLength: 20)
                            
                        
                        //Social media accounts
//                        VStack{
//                            Text("Social media accounts ").padding(.trailing , 160).bold().font(.system(size: 20))
//                            HStack{
//                                NavigationLink(destination: Text("View 3")){
//                                    Image("Instgram")
//                                        .resizable()
//                                        .frame(width:50 , height: 50)
//                                }
//
//                                NavigationLink(destination: Text("View 3")){
//                                    Image("LinkedIn")
//                                        .resizable()
//                                        .cornerRadius(17)
//                                        .frame(width:50, height: 50)
//
//                                }
//
//
//                            }.padding(.trailing , 240)
//
//                        }
                        
                        
                       
                        ExperenceLavelAndGender()
                        
                       // RatingsAndReviews()
                    }
                    
                    NavigationLink(destination: CheckBoxView1()){
                        VStack{
                            HStack{
                                Text("Book").foregroundColor(.white).bold()
                            }.frame(width: 350 , height: 50)
                                .background(Color.ColorG)
                                .cornerRadius(30)
                        }
                    }
                    
                }
            
            
        }
        .navigationTitle("Trainer info")
       // .navigationBarBackButtonHidden(true)
        
    }
}

struct TrainerInfo_Previews: PreviewProvider {
    static var previews: some View {
        TrainerInfo()
    }
}

struct HeratButton : View{
    @State var isLike = false
    var body: some View{
        Button {
            self.isLike.toggle()
             
            if(isLike == true){
                
            }
            
        } label: {
            Image(systemName: isLike ? "heart.fill" : "heart.fill")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 30)
                .foregroundColor(isLike ? .gray : .red)
        }
        
    }
}

struct HeratButton2 : View{
    @State var isLike2 = false
    var body: some View{
        Button {
            self.isLike2.toggle()
             
            if(isLike2 == true){
                
            }
            
        } label: {
            Image(systemName: isLike2 ? "heart.fill" : "heart.fill")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 30)
                .foregroundColor(isLike2 ? .red : .gray)
        }
        
    }
}



//Top
//                    ZStack{
//                        Rectangle()
//                            .foregroundColor(Color(red: 0.375, green: 0.336, blue: 0.722))
//
//                            .frame(width: 407 , height: 200)
//
//                            .frame(height: 200)
//
//                            .padding(.top, -160)
//                        Text("Trainer info")
//                            .font(.title)
//                            .bold()
//                            .foregroundColor(.white)
//
//                    }

struct ExperenceLavelAndGender : View{
    var body: some View{
        //Experence level +Gender
        VStack{
            
            HStack{
                
                HStack{
                    Text("Experience level")
//                        .foregroundColor(.black)
//                        .frame(width: 180 ,  height: 30).background(Color.ColorG).cornerRadius(30)
//                        .padding(.trailing , 35)
                        .padding(.trailing , 90).bold()
                }
                Text("22 years").padding(.trailing ,50)
                    .foregroundColor(Color.ColorG)
                    .bold()
                
            }.frame(width: 350 , height: 30)
                .background(Color.white)
               
                .cornerRadius(30)
           
            //2
//            HStack{
//
////                HStack{
////                    Text("Gender")
//////                        .foregroundColor(.white)
//////                        .frame(width: 180 ,  height: 30).background(Color.ColorG).cornerRadius(30)
//////                        .padding(.trailing , 55)
////                        .padding(.trailing , 160).bold()
////                }
////                Text("Female").padding(.trailing ,60)
//
//            }.frame(width: 350 , height: 30)
//                .background(Color.white)
//                .cornerRadius(30)
        }
        
        RatingsAndReviews()
}
}

struct RatingsAndReviews : View{
    var body: some View{
        VStack{
            HStack{
                Text("Ratings & Reviews").padding(.trailing , 140).bold()
                
                Button{
               
                } label: {
                   Text("See All")
                }
                
            }
            HStack{
                Text("4.8").font(.system(size: 60)).bold().padding(.trailing , 100)
                
                VStack{
                    
                    HStack(spacing: 2){
                        Image(systemName: "star.fill").foregroundColor(Color.yellow)
                        Image(systemName: "star.fill").foregroundColor(Color.yellow)
                        Image(systemName: "star.fill").foregroundColor(Color.yellow)
                        Image(systemName: "star.fill").foregroundColor(Color.yellow)
                        Image(systemName: "star.fill").foregroundColor(Color.yellow)
                       
                        

                    }
                    
                    HStack(spacing: 2){
                        Image(systemName: "star.fill").foregroundColor(Color.yellow)
                        Image(systemName: "star.fill").foregroundColor(Color.yellow)
                        Image(systemName: "star.fill").foregroundColor(Color.yellow)
                        Image(systemName: "star.fill").foregroundColor(Color.yellow)
                    }.padding(.leading , 25)
                    
                    HStack(spacing: 2){
                        Image(systemName: "star.fill").foregroundColor(Color.yellow)
                        Image(systemName: "star.fill").foregroundColor(Color.yellow)
                        Image(systemName: "star.fill").foregroundColor(Color.yellow)
                    }.padding(.leading , 50)
                    
                    HStack(spacing: 2){
                        Image(systemName: "star.fill").foregroundColor(Color.yellow)
                        Image(systemName: "star.fill").foregroundColor(Color.yellow)
                    }.padding(.leading , 75)
                    
                    HStack(spacing: 2){
                        Image(systemName: "star.fill").foregroundColor(Color.yellow)
                    }.padding(.leading , 100)
                }
               
            }
            
            HStack(spacing: 200){
                Text("out of 5").foregroundColor(Color.gray).bold()
                Text("62 Rating").foregroundColor(Color.gray).bold()
            }
            
            HStack{
                VStack{
                    HStack{
                        Image("Teach2").resizable().frame(width: 50 , height: 50)
                        Text("Asim Gharib").bold().font(.system(size: 16)).padding(.trailing ,50)
                        HStack(spacing: 2){
                            Image(systemName: "star.fill").foregroundColor(Color.yellow).font(.system(size: 15))
                            Image(systemName: "star.fill").foregroundColor(Color.yellow).font(.system(size: 15))
                            Image(systemName: "star.fill").foregroundColor(Color.yellow).font(.system(size: 15))
                            Image(systemName: "star.fill").foregroundColor(Color.yellow).font(.system(size: 15))
                            Image(systemName: "star.fill").foregroundColor(Color.gray).font(.system(size: 15))
                        }
                    }
                
                    HStack{
                        Text("The session was amazing, I tried new teqniges about ejnfkjwn ").font(.system(size: 14))
                    }
                }
            }.frame(width: 350 , height: 100).background(Color.ColorS).cornerRadius(17.5)
            
            HStack{
                VStack{
                    HStack{
                        Image("Teach3").resizable().frame(width: 50 , height: 50)
                        Text("Asim Gharib").bold().font(.system(size: 16)).padding(.trailing ,50)
                        HStack(spacing: 2){
                            Image(systemName: "star.fill").foregroundColor(Color.yellow).font(.system(size: 15))
                            Image(systemName: "star.fill").foregroundColor(Color.yellow).font(.system(size: 15))
                            Image(systemName: "star.fill").foregroundColor(Color.yellow).font(.system(size: 15))
                            Image(systemName: "star.fill").foregroundColor(Color.gray).font(.system(size: 15))
                            Image(systemName: "star.fill").foregroundColor(Color.gray).font(.system(size: 15))
                        }
                    }
                
                    HStack{
                        Text("The session was amazing, I tried new teqniges about Japanese Callgraphy ").font(.system(size: 14))
                    }
                }
            }.frame(width: 350 , height: 100).background(Color.ColorS).cornerRadius(17.5)
                
            
            
        }
    }
}

