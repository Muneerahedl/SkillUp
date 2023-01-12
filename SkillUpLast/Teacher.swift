import SwiftUI

struct Teacher: View {
@State var arrayLike : [Teacherr] =
[
Teacherr(
Image: "Teach1",
Title: "Noura Saad" ,
Text1: "Profession: Japanese callgrapy" ,
Text2: "Experience: 22 years" ,
Text3: "Session time: 2 hours" ,
Text4: "Clients: 8",
Text5: "Tools: Provided",
Comment: "Comment(23)"
),

    Teacherr(
        Image: "Teach2",
        Title: "Omar Khaild" ,
        Text1: "Profession: Arabic callgrapy" ,
        Text2: "Experience: 20 years" ,
        Text3: "Session time: 2 hours" ,
        Text4: "Clients: 30",
        Text5: "Tools: Provided",
        Comment: "Comment(50)"
    ),
    
    Teacherr(
        Image: "Teach3",
        Title: "Noura Fisal" ,
        Text1: "Profession: Japanese callgrapy" ,
        Text2: "Experience: 12 years" ,
        Text3: "Session time: 2 hours" ,
        Text4: "Clients: 3",
        Text5: "Tools: Not Provided",
        Comment: "Comment(23)"
    )

]

var body: some View {
        VStack{
                ForEach(arrayLike) {
                    Teacherr in TeachVieww(OneTeach: Teacherr)
                }
            }
}
}

struct Teacher_Previews: PreviewProvider {
static var previews: some View {
Teacher()
}
}

struct Teacherr: Identifiable{
let Image : String
let Title : String
let Text1 : String
let Text2 : String
let Text3 : String
let Text4 : String
let Text5 : String

let Comment : String

let id = UUID().uuidString
}
struct TeachVieww : View{

let OneTeach: Teacherr
var body: some View{
    NavigationLink(destination: TrainerInfo()){
        VStack{
            HStack{
                VStack{
                    Image(OneTeach.Image)
                        .resizable()
                        .frame(width: 100 , height: 100)
                        .cornerRadius(50)
                    
                }
                VStack{
                    
                    Text(OneTeach.Title)
                        .foregroundColor(Color.ColorP)
                        .bold()
                        .padding(.trailing , 100)
                        .font(.system(size: 25))
                    
                    Text("")
                    Text(OneTeach.Text1).foregroundColor(Color.black)
                    Text(OneTeach.Text2).foregroundColor(Color.black).padding(.trailing ,55)
                    Text(OneTeach.Text3).foregroundColor(Color.black).foregroundColor(Color.black).padding(.trailing ,80)
    
                    Text(OneTeach.Text4).foregroundColor(Color.black).padding(.trailing ,140)
                    Text(OneTeach.Text5).foregroundColor(Color.black).padding(.trailing ,100)
                    Text("Ratings")
                        .foregroundColor(Color.ColorG).font(.system(size: 20)).bold()
                        .padding(.trailing , 150)
                        .padding(.top ,2)
                    
                    //Stard
                    HStack(spacing: 0){
                        Image(systemName: "star.fill")
                            .foregroundColor(Color.yellow)
                        Image(systemName: "star.fill")
                            .foregroundColor(Color.yellow)
                        Image(systemName: "star.fill")
                            .foregroundColor(Color.yellow)
                        Image(systemName: "star.fill")
                            .foregroundColor(Color.gray)
                        Image(systemName: "star.fill")
                            .foregroundColor(Color.gray)
                        
                        Text(OneTeach.Comment).foregroundColor(Color.blue)
                    }
                    
                }
                
            
            }

            
        }.frame(width: 345 , height: 220).background(Color.ColorS).cornerRadius(17.5)
        
    }
}
}
