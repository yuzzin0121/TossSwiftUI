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
                Button(action: {}, label: {
                    HStack {
                        Spacer()
                        VStack(spacing: 8) {
                            Image(systemName: "bitcoinsign.circle.fill")
                                .foregroundStyle(.blue)
                            Text("토스뱅크")
                        }
                        Spacer()
                    }
                    
                })
                .frame(height: 110)
                .background(.darkGray)
                .clipShape(.rect(cornerRadius: 12))
                
                Button(action: {}, label: {
                    HStack{
                        Spacer()
                        VStack(spacing: 8) {
                            Image(systemName: "chart.line.uptrend.xyaxis")
                                .foregroundStyle(.red)
                            Text("토스증권")
                        }
                        Spacer()
                    }
                })
                .frame(height: 110)
                .background(.darkGray)
                .clipShape(.rect(cornerRadius: 12))
                
                Button(action: {}, label: {
                    HStack {
                        Spacer()
                        VStack(spacing: 8) {
                            Image(systemName: "beats.headphones")
                                .foregroundStyle(.blue)
                            Text("고객센터")
                        }
                        Spacer()
                    }
                })
                .frame(height: 110)
                .background(.darkGray)
                .clipShape(.rect(cornerRadius: 12))
            }
            .foregroundStyle(.white)
            .font(.title3.bold())
            
        }
    }
}

#Preview {
    MenuView()
}
