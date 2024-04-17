//
//  PointAgreeView.swift
//  TossSwiftUI
//
//  Created by 조유진 on 4/16/24.
//

import SwiftUI

struct PointAgreeView: View {
    var body: some View {
        ZStack{
            Color(.black)
            VStack {
                Spacer()
                    .frame(height: 50)
                HeaderView()
                
                Spacer()
                    .frame(height: 30)
                
                VStack(spacing: 30) {
                    DescriptionView(image: "calendar",
                                    description: "매일 포인트 받는 출석체크 • 퀴즈",
                                    imageColor: .blue)
                    
                    DescriptionView(image: "pencil", 
                                    description: "새로운 이벤트", 
                                    imageColor: .red)
                    
                    DescriptionView(image: "star.fill",
                                    description: "미션 추천",
                                    imageColor: .yellow)

                }
                .padding(14)
                
                Spacer()
                
                AgreeMessageView(message: "[선택]맞춤형 서비스 이용 동의")
                
                CustomButtonView(title: "동의하기", backgroundColor: .blue)
                CustomButtonView(title: "다음에 하기", backgroundColor: .black)
                Spacer()
                    .frame(height: 20)
            }
            .foregroundStyle(.white)
            .padding(.top, 50)
            .padding(14)
            
        
        }
        .ignoresSafeArea()
        
            
    }
}

#Preview {
    PointAgreeView()
}

struct HeaderView: View {
    var body: some View {
        HStack(alignment: .top){
            Text("포인트를 더 모을 수 있게 맞춤 혜택을 추천해드릴까요?")
                .font(.title2).bold()
            Spacer()
        }
        .padding(14)
    }
}

struct DescriptionView: View {
    var image: String
    var description: String
    var imageColor: Color
    
    var body: some View {
        HStack(spacing: 12) {
            Image(systemName: image)
                .foregroundStyle(imageColor)
                .font(.title2)
            Text(description)
            Spacer()
        }
    }
}

struct CustomButtonView: View {
    let title: String
    let backgroundColor: Color
    
    var body: some View {
        Button {
            
        } label: {
            Text(title)
        }
        .frame(width: UIScreen.main.bounds.width - 40)
        .padding(20)
        .background(backgroundColor)
        .asPointButton()
        
    }
}

struct AgreeMessageView: View {
    let message: String
    var body: some View {
        HStack {
            Text(message)
            Spacer()
        }
        .padding(14)
    }
}
