//
//  noti_view.swift
//  workshop18
//
//  Created by Admin on 25/10/2567 BE.
//
import SwiftUI

struct NotiView: View {
    var body: some View {
        ScrollView(.vertical){
            VStack(alignment: .leading){
                Text("การแจ้งเตือน").font(.title).padding(.vertical)
                Text("คำขอเป็นเพื่อน")
                list(name: "panapach phraroj", title: "ได้ส่งคำขอเป็นเพื่อนของคุณ", time: "1 วัน", icon: "person.fill.badge.plus",length: 2,color: .blue)
                Text("ก่อนหน้านี้").padding(.init(top: 20, leading: 0, bottom: 0, trailing: 0))
                list(name: "ภานุพงศ์ พลเศษ", title: "ได้กล่าวถึงคุณในความคิดเห็น", time: "4 วัน", icon: "message.badge.filled.fill",length: 20,color: .green)
                
            }
        }
    }
    func list (name: String,title: String,time: String,icon: String,length: Int,color: Color) -> some View {
        LazyVGrid(columns: (    Array(repeating: GridItem(), count: 1)    ), content: {
            ForEach(1...length , id: \.self){index in
                HStack(content: {
                    ZStack(content: {
                        Image(systemName: "person.fill").resizable()
                        
                            .frame(width: 30,height: 30,alignment: .leading).padding(.init(top: 8, leading: 10, bottom: 10, trailing: 10)).background(.pink.opacity(0.4)).clipShape(.circle)
                        Image(systemName: "\(icon)").resizable().frame(width: 20,height: 20,alignment: .leading).padding(.init(top: 3, leading: 3, bottom: 3, trailing: 3))
                            .foregroundStyle(.white)
                            .background(color).clipShape(.circle).offset(x: 20, y: 10)
                    })
                    VStack(content: {
                        
                        Text("\(name) \(title)").font(.system(size: 18))
                        HStack(content: {
                            
                            Text("\(time)").font(.system(size: 14)).foregroundStyle(.gray)
                            Spacer()
                            
                        }).padding(.horizontal)
                    })
                    .padding(.init(top: 10, leading: 15, bottom: 0, trailing: 0))
                    Spacer()
                })
            }
            
        })
    }
}

#Preview {
    NotiView()
}
