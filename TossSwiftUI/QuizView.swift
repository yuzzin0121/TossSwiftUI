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
                HStack {
                    Text("등기부등본은 집주인만 발급받을 수 있다?")
                        .font(.title).bold()
                    Spacer()
                }
                .padding(.horizontal, 20)
                .padding(.vertical, 10)
                
                HStack {
                    Text("매일 푸는 금융 퀴즈 290,300명 참여중")
                        .font(Font.system(size: 16))
                        .foregroundStyle(.gray)
                    Spacer()
                }
                .padding(.horizontal, 20)
                
                
                HStack(spacing: 12) {
                    Button(action: {}, label: {
                        HStack {
                            Spacer()
                            VStack(spacing: 20) {
                                Text("O")
                                Text("그렇다")
                            }
                            Spacer()
                        }
                        
                    })
                    .frame(height: 150)
                    .background(Color.blue.opacity(0.4))
                    .foregroundStyle(.blue)
                    .clipShape(.rect(cornerRadius: 12))
                    
                    Button(action: {}, label: {
                        HStack {
                            Spacer()
                            VStack(spacing: 20) {
                                Text("X")
                                Text("아니다")
                            }
                            Spacer()
                        }
                    })
                    .frame(height: 150)
                    .background(Color.red.opacity(0.4))
                    .foregroundStyle(.red)
                    .clipShape(.rect(cornerRadius: 12))
                    
                }
                .font(.title2.bold())
                .padding(20)
                
                Spacer()
            }
            .foregroundStyle(.white)
        }
        
    }
}

#Preview {
    QuizView()
}
