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
                HStack(alignment: .top){
                    Text("포인트를 더 모을 수 있게 맞춤 혜택을 추천해드릴까요?")
                        .font(.title2).bold()
                    Spacer()
                }
                .padding(14)
                
                Spacer()
                    .frame(height: 30)
                
                VStack(spacing: 30) {
                    HStack(spacing: 12) {
                        Image(systemName: "calendar")
                            .foregroundStyle(.blue)
                            .font(.title2)
                        Text("매일 포인트 받는 출석체크 • 퀴즈")
                        Spacer()
                    }
                    
                    HStack(spacing: 12) {
                        Image(systemName: "pencil")
                            .foregroundStyle(.red)
                            .font(.title2)

                        Text("새로운 이벤트")
                        Spacer()
                    }
                    
                    HStack(spacing: 12) {
                        Image(systemName: "star.fill")
                            .foregroundStyle(.yellow)
                            .font(.title2)
                        Text("미션 추천")
                        Spacer()
                    }
                }
                .padding(14)
                
                Spacer()
                
                HStack {
                    Text("[선택]맞춤형 서비스 이용 동의")
                    Spacer()
                }
                .padding(14)
                
                Button {
                    
                } label: {
                    Text("동의하기")
                }
                .frame(width: UIScreen.main.bounds.width - 40)
                .padding(20)
                .background(.blue)
                .clipShape(.rect(cornerRadius: 12))
                
                Button {
                    
                } label: {
                    Text("다음에 하기")
                }
                .padding(20)
                .frame(width: UIScreen.main.bounds.width - 40)
                .clipShape(.rect(cornerRadius: 12))

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
