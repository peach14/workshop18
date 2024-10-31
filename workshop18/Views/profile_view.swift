//
//  Profile.swift
//  workshop18
//
//  Created by Admin on 25/10/2567 BE.
//

import SwiftUI

struct Profile: View {
    var body: some View {
        ScrollView(.vertical){
            VStack(content: {
                ZStack(content: {
                    Image("Hogwarts").resizable().frame(width: .infinity,height: 250)
                    ZStack(content: {
                        Image("HarryPotter").resizable()
                            .frame(width: 150,height: 150,alignment: .leading).clipShape(.circle).padding(.init(top: 8, leading: 30, bottom: 10, trailing: 30))
                        
                        Image(systemName: "camera.fill").resizable()
                            .frame(width: 20,height: 20,alignment: .leading).padding(.init(top: 8, leading: 10, bottom: 10, trailing: 10)).background(.gray).clipShape(.circle).offset(x: 50, y: 55)
                        
                    }).offset(x: -100, y: 80)
                   
                    Image(systemName: "camera.fill").resizable()
                        .frame(width: 20,height: 20,alignment: .leading).padding(.init(top: 8, leading: 10, bottom: 10, trailing: 10)).background(.gray).clipShape(.circle).offset(x: 150, y: 80)
                })
                
                
                VStack(content: {
                    HStack(content: {
                        Text("Peach Panapach").font(.title).fontWeight(.bold)
                        Spacer()
                    })
               
                    HStack(content: {
                        Text("82").font(.headline).fontWeight(.bold)
                        Text("เพื่อน").font(.headline).foregroundStyle(.gray)
                        Spacer()
                    })
                    HStack(content: {
                        Button(action: {}, label: {
                            Image(systemName: "plus")
                            Text("เพิ่มลงในสตอรี่")
                        }).buttonStyle(BorderedProminentButtonStyle.borderedProminent)
                        Button(action: {}, label: {
                            Image(systemName: "applepencil")
                            Text("แก้ไขโปรไฟล์")
                        }).buttonStyle(BorderedProminentButtonStyle.borderedProminent).tint(.gray.opacity(0.4)).foregroundStyle(.black)
                        Button(action: {}, label: {
                            Text("...")
                           
                        }).buttonStyle(BorderedProminentButtonStyle.borderedProminent).tint(.gray.opacity(0.4)).foregroundStyle(.black)
                        Spacer()
                    })
                }).padding(.init(top: 50, leading: 10, bottom: 0, trailing: 10))
                Divider().frame(height: 10).background(.gray.opacity(0.5)).foregroundStyle(.gray.opacity(0.5))
                HStack(content: {
                    Button("โพสต์"){}.foregroundStyle(.blue).buttonStyle(BorderedProminentButtonStyle.borderedProminent).tint(.blue.opacity(0.3)).cornerRadius(30)
                    Button("รูปภาพ"){}.foregroundStyle(.gray).padding(.horizontal)
                    Button("วิดีโอ"){}.foregroundStyle(.gray)

                    Spacer()
                }).padding(.init(top: 10, leading: 10, bottom: 0, trailing: 10))
                Divider()
                HStack(content: {
                    Image(systemName: "graduationcap.fill").foregroundStyle(.gray)
                    VStack(content: {
                        HStack(content: {
                            Text("กำลังศึกษา วิทย์คณิตศาสตร์ ที่ ").foregroundStyle(.black.opacity(0.7))
                            Spacer()
                        })
                        HStack(content: {
                            Text("โรงเรียน พังโคนวิทยาคม")
                            Spacer()
                        })
                    })
                    
                 
                }).padding(.init(top: 10, leading: 10, bottom: 0, trailing: 10))
                HStack(content: {
                    Image(systemName: "house.fill").foregroundStyle(.gray)
                    VStack(content: {
                        HStack(content: {
                            Text("อาศัยอยู่ ที่ ").foregroundStyle(.black.opacity(0.7))
                            Spacer()
                        })
                        HStack(content: {
                            Text("เทศบาล นนทบุรี")
                            Spacer()
                        })
                    })
                    
                 
                }).padding(.init(top: 5, leading: 10, bottom: 0, trailing: 10))
                HStack(content: {
                    Button(action: {}, label: {
                        Text("แก้ไขรายละเอียดสถานะ").padding(.horizontal,90)
                    }).buttonStyle(BorderedProminentButtonStyle.borderedProminent).tint(.blue.opacity(0.3)).foregroundStyle(.blue)
                })
                
            }).frame(maxWidth: .infinity,maxHeight: .infinity,alignment: .top)
        }
    }
}

#Preview {
    Profile()
}


