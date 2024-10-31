//
//  freed_view.swift
//  workshop18
//
//  Created by Admin on 25/10/2567 BE.
//

import SwiftUI

struct FreedView: View {
    var body: some View {
        ScrollView(.vertical){
            LazyVGrid(columns: (    Array(repeating: GridItem(), count: 1)    ), content: {
                ForEach(1...10 , id: \.self){index in
                    RoundedRectangle(cornerRadius: 8).fill(Color.white).frame(height: 350).padding(.horizontal,12).overlay(content: {
                        VStack(alignment: .leading){
                            HStack(content: {
                                Image(systemName: "person.fill").resizable()
                                    
                                    .frame(width: 30,height: 30,alignment: .leading).padding(.init(top: 8, leading: 10, bottom: 10, trailing: 10)).background(.blue).clipShape(.circle)
                                VStack(content: {
                                    
                                    Text("Peach").font(.system(size: 18))
                                    HStack(content: {
                                       
                                        Text("5 นาที").font(.system(size: 12)).foregroundStyle(.gray)
                                        Image(systemName: "globe.asia.australia.fill").resizable().frame(width: 12, height: 12).foregroundStyle(.gray)
                                       
                                    })
                                })
                                .padding(.init(top: 15, leading: 15, bottom: 0, trailing: 0))
                            })
                        
                            Text("กาลครั้งหนึ่งนานมาแล้ว มีลูกหมูสามตัว ลูกหมูตัวแรกสร้างบ้านของตัวเองด้วยฟาง ลูกหมูตัวที่สองสร้างบ้านด้วยไม้ ทำให้สร้างเสร็จในเวลาอันรวดเร็ว ด้วยความขี้เกียจจึงใช้เวลาไปกับการเที่ยวเล่น ร้องเพลง และเต้นรำกันกันตลอดทั้งวัน แต่ลูกหมูตัวที่สามสร้างบ้านด้วยอิฐ มันจึงใช้เวลาอย่างขยันขันแข็งในการสร้างบ้านของตัวเองตลอดทั้งวัน จนไม่สามารถออกไปเที่ยวเล่นแบบลูกหมูตัวอื่นๆ ได้")
                            Image("Hogwarts").resizable().frame(width:.infinity , height:  200)
                                .cornerRadius(5)
                                .padding(.init(top: 0, leading: 0, bottom: 10, trailing: 0))
                          
                        }.frame(maxWidth: .infinity,alignment: .leading).padding(.horizontal,30)
                    })
                }
                
            })
        }.background(.gray.opacity(0.1))
    }
}

#Preview {
    FreedView()
}
