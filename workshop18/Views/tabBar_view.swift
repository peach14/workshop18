//
//  home_screen.swift
//  workshop18
//
//  Created by Apple on 24/10/2567 BE.
//
import SwiftUI

struct TabBarView: View {
    
    @State var selectedTab: Tab?
    @Environment(\.colorScheme) var scheme
    @State var tabProgress: CGFloat = 0
    var body: some View {
        VStack(spacing: 0,content: {
            HStack(content: {
                ForEach(Tab.allCases,id: \.rawValue){
                    tab in
                    HStack(content: {
                        Image(systemName: tab.sytemImage)
                        Text(tab.rawValue).font(.callout)
                
                    })
                    .frame(maxWidth: .infinity)
                        .padding(.vertical,10)
                        .onTapGesture {
                            withAnimation(.snappy){
                                selectedTab = tab
                            }
                        }
                       
                }
                
            })
            .background{
                GeometryReader {
                    let size = $0.size
                    let capuslewiht = size.width / CGFloat(Tab.allCases.count)
                    
                    Capsule().fill(scheme == .dark ? .black : .white)
                        .frame(width: capuslewiht)
                        .offset(x: tabProgress * (size.width - capuslewiht))
                }
            }
            .background(.blue.opacity(0.1))
            
            GeometryReader(content: {
                let size = $0.size
                ScrollView(.horizontal){
                    LazyHStack(content: {
                        FreedView().id(Tab.home).containerRelativeFrame(.horizontal)
                        NotiView() .id(Tab.noti).containerRelativeFrame(.horizontal)
                        Profile().id(Tab.profile).containerRelativeFrame(.horizontal)
                    })
                    .scrollTargetLayout()
                        .offsetX {
                            value in
                            let progress = -value / (size.width * CGFloat(Tab.allCases.count - 1))
                            tabProgress = max(min(progress, 1), 0)
                        }
                }.scrollPosition(id: $selectedTab).scrollIndicators(.hidden).scrollTargetBehavior(.paging).scrollClipDisabled()
            })
            
    
           
                        })
        .frame(maxWidth: .infinity,maxHeight: .infinity,alignment: .top)
    }
    
    

    
}

#Preview {
    TabBarView()
}
