//
//  Views+Extension.swift
//  workshop18
//
//  Created by Apple on 25/10/2567 BE.
//

import SwiftUI

struct OffsetKey: PreferenceKey {
    static var defaultValue: CGFloat = .zero
    static func reduce(value: inout CGFloat, nextValue: () -> CGFloat) {
        value = nextValue()
    }
    
}

extension View {
    @ViewBuilder
    func offsetX(completion: @escaping (CGFloat) -> ()) -> some View {
        self.overlay {
            GeometryReader {
                let minX = $0.frame(in: .scrollView(axis: .horizontal)).minX
                Color.clear
                    .preference(key: OffsetKey.self, value: minX)
                    .onPreferenceChange(OffsetKey.self , perform: completion)
            }
        }
    }
}



