//
//  MenuButtonModifier.swift
//  TossSwiftUI
//
//  Created by 조유진 on 4/18/24.
//

import SwiftUI

struct MenuButtonModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .frame(height: 110)
            .background(.darkGray)
            .clipShape(.rect(cornerRadius: 12))
            .foregroundStyle(.white)
            .font(.title3.bold())
    }
}

extension View {
    func asMenuButton() -> some View {
        modifier(MenuButtonModifier())
    }
}
