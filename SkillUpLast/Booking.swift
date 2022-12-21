//
//  Booking.swift
//  SkillUpp
//
//  Created by Maha Alassaf on 16/05/1444 AH.
//

import SwiftUI
 
struct Booking: View {
    var body: some View {
        ZStack{
            VStack{
                
                ScrollView{
                    
                    HStack{
                        Image("Yoga").resizable().frame(width: 100 , height: 100)
                        
                        VStack{
                            Text("Yoga")
                                .foregroundColor(Color.ColorG)
                                .bold()
                                .padding(.trailing , 80)
                                .font(.system(size: 20))
                            
                            Text("Date:\t1-3-2023")
                            Text("Time:\t15:00").padding(.trailing , 30)
                        }
                        
                        //Qr
                        QrCodeView(url: "www.archet.app" )
                        
                    }.frame(width: 350 , height: 130).background(Color.ColorS).cornerRadius(17.5)
                    
                    HStack{
                        Image("Swimming").resizable().frame(width: 100 , height: 100)
                        
                        VStack{
                            Text("Swimming")
                                .foregroundColor(Color.ColorG)
                                .bold()
                                .padding(.trailing , 30)
                                .font(.system(size: 20))
                            
                            Text("Date:\t1-7-2023")
                            Text("Time:\t13:00").padding(.trailing , 30)
                        }
                         
                        //Qr
                        QrCodeView(url: "www.archet.app" )
                        
                    }.frame(width: 350 , height: 130).background(Color.ColorS).cornerRadius(17.5)
                    
                    HStack{
                        Image("WaterColor").resizable().frame(width: 100 , height: 100)
                        
                        VStack{
                            Text("WaterColor")
                                .foregroundColor(Color.ColorG)
                                .bold()
                                .padding(.trailing , 30)
                                .font(.system(size: 20))
                            
                            Text("Date:\t3-8-2023")
                            Text("Time:\t20:00").padding(.trailing , 30)
                        }
                         
                        //Qr
                        QrCodeView(url: "www.archet.app" )
                        
                    }.frame(width: 350 , height: 130).background(Color.ColorS).cornerRadius(17.5)
                }
        }
            .navigationTitle("Bookings")
          .navigationBarTitleDisplayMode(.inline)
            .toolbarBackground(.visible, for: .navigationBar)
        }
    }
}

struct Booking_Previews: PreviewProvider {
    static var previews: some View {
        Booking()
    }
}
