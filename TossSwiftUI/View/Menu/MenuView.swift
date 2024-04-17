//
//  MenuView.swift
//  TossSwiftUI
//
//  Created by 조유진 on 4/16/24.
//

import SwiftUI

struct MenuView: View {
    var body: some View {
        ZStack {
            Color(.black)
                .ignoresSafeArea()
            
            HStack(spacing: 12) {
                MenuButtonView(image: "bitcoinsign.circle.fill",
                               imageColor: .blue,
                               title: "토스증권")
                MenuButtonView(image: "chart.line.uptrend.xyaxis",
                               imageColor: .red,
                               title: "토스증권")
                MenuButtonView(image: "beats.headphones",
                               imageColor: .blue,
                               title: "고객센터")
            }
        }
    }
}

#Preview {
    MenuView()
}

struct MenuButtonView: View {
    let image: String
    let imageColor: Color
    let title: String
    
    var body: some View {
        Button(action: {}, label: {
            HStack {
                Spacer()
                VStack(spacing: 8) {
                    Image(systemName: image)
                        .foregroundStyle(imageColor)
                    Text(title)
                }
                Spacer()
            }
            
        })
        .asMenuButton()
    }
}
