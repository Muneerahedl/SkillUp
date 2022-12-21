//
//  Favourite.swift
//  SkillUpp
//
//  Created by Maha Alassaf on 16/05/1444 AH.
//

import SwiftUI

struct Favourite: View {
    var body: some View {
            ZStack{
                VStack{
                    
//                    ZStack{
//
//                        Rectangle()
//                            .foregroundColor(Color(red: 0.375, green: 0.336, blue: 0.722))
//
//                            .frame(width: 407 , height: 200)
//
//                            .frame(height: 200)
//
//                            .padding(.top, -160)
//                        Text("Favourites")
//                            .font(.title)
//                            .bold()
//                            .foregroundColor(.white)
//                        // end
//                    }
                    
                    ScrollView{
                        
                        HStack{
                            Image("Yoga").resizable().frame(width: 100 , height: 100)
                            
                            VStack{
                                
                                HStack{
                                    Text("Session Name:").bold().font(.system(size: 16))
                                    Text("Jewerly Making").font(.system(size: 16))
                                }
                                
                                HStack{
                                    Text("Date:").bold().font(.system(size: 16))
                                    Text("1-3-2023").font(.system(size: 16))
                                    Spacer()
                                }
                                
                                HStack{
                                    Text("Time:").font(.system(size: 16)).bold()
                                    Text("15:00").font(.system(size: 16))
                                    Spacer()
                                }
                                
                                HStack{
                                    
                                    Text("Trainer:").font(.system(size: 16)).bold()
                                    Text("Salwa Hakim").font(.system(size: 16))
                                    Spacer(minLength: 20)
                                  
                                       
                                   
                                }
                                HStack{
                                    VStack{
                                        HeratButton()
                                            .padding(-17.0)
                                            .padding(.leading , 200)
                                    }
                                }
                              
                               
                            }
                            
                        }.frame(width: 350 , height: 130).background(Color.ColorS).cornerRadius(17.5)
                        
                        HStack{
                            Image("Yoga").resizable().frame(width: 100 , height: 100)
                            
                            VStack{
                                
                                HStack{
                                    Text("Session Name:").bold().font(.system(size: 16))
                                    Text("Jewerly Making").font(.system(size: 16))
                                }
                                
                                HStack{
                                    Text("Date:").bold().font(.system(size: 16))
                                    Text("1-3-2023").font(.system(size: 16))
                                    Spacer()
                                }
                                
                                HStack{
                                    Text("Time:").font(.system(size: 16)).bold()
                                    Text("15:00").font(.system(size: 16))
                                    Spacer()
                                }
                                
                                HStack{
                                    
                                    Text("Trainer:").font(.system(size: 16)).bold()
                                    Text("Salwa Hakim").font(.system(size: 16))
                                    Spacer(minLength: 20)
                                  
                                       
                                   
                                }
                                HStack{
                                    VStack{
                                        HeratButton()
                                            .padding(-17.0)
                                            .padding(.leading , 200)
                                    }
                                }
                              
                               
                            }
                            
                        }.frame(width: 350 , height: 130).background(Color.ColorS).cornerRadius(17.5)
                        
                    }
                    
                }
                .navigationTitle("Favourits")
              .navigationBarTitleDisplayMode(.inline)
                .toolbarBackground(.visible, for: .navigationBar)
            }
 
    }
}

struct Favourite_Previews: PreviewProvider {
    static var previews: some View {
        Favourite()
    }
}
