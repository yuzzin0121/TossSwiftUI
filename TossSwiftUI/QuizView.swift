//
//  QuizView.swift
//  TossSwiftUI
//
//  Created by 조유진 on 4/16/24.
//

import SwiftUI

struct QuizView: View {
    var body: some View {
        ZStack {
            Color(.black)
                .ignoresSafeArea()
            
            VStack(spacing: 0) {
                Spacer()
                    .frame(height: 100)
                
                TitleView()
                SubTitleView()
                
                
                HStack(spacing: 12) {
                    SelectButtonView(text1: "O", text2: "그렇다", color: .blue)
                    SelectButtonView(text1: "X", text2: "아니다", color: .red)
                    
                }
                .font(.title2.bold())
                .padding(20)
                
                Spacer()
            }
        }
    }
}

#Preview {
    QuizView()
}

struct TitleView: View {
    var body: some View {
        HStack {
            Text("등기부등본은 집주인만 발급받을 수 있다?")
                .font(.title).bold()
            Spacer()
        }
        .foregroundStyle(.white)
        .padding(.horizontal, 20)
        .padding(.vertical, 10)
    }
}

struct SubTitleView: View {
    var body: some View {
        HStack {
            Text("매일 푸는 금융 퀴즈 290,300명 참여중")
                .font(Font.system(size: 16))
                .foregroundStyle(.gray)
            Spacer()
        }
        .padding(.horizontal, 20)
    }
}

struct SelectButtonView: View {
    let text1: String
    let text2: String
    let color: Color
    
    var body: some View {
        Button(action: {}, label: {
            HStack {
                Spacer()
                VStack(spacing: 20) {
                    Text(text1)
                    Text(text2)
                }
                Spacer()
            }
            
        })
        .frame(height: 150)
        .background(color.opacity(0.4))
        .foregroundStyle(color)
        .clipShape(.rect(cornerRadius: 12))
    }
}
