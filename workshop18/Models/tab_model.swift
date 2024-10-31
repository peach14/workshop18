//
//  tab.swift
//  workshop18
//
//  Created by Apple on 24/10/2567 BE.
//

enum Tab:   String, CaseIterable {
    case home = "home"
    case noti = "noti"
    case profile = "profile"
    
    var sytemImage: String {
        switch self {
        case .home: return "house.fill"
        case .noti: return "bell.fill"
        case .profile: return "person.fill"
        }
    }
}

       
