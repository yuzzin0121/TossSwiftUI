//
//  PointButtonModifier.swift
//  TossSwiftUI
//
//  Created by 조유진 on 4/17/24.
//

import SwiftUI

struct PointButtonModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .foregroundStyle(.white)
            .clipShape(.rect(cornerRadius: 12))
    }
}

extension View {
    func asPointButton() -> some View{
        modifier(PointButtonModifier())
    }
}
