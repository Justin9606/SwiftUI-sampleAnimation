//
//  ContentView.swift
//  DesignCode
//
//  Created by 쟈니 on 11/4/23.
//

import SwiftUI

// Animation States
struct ContentView: View {
        @State var show = false
        var body: some View {
                VStack {
                        Text("View more")
                                .bold()
                                .foregroundStyle(Color.white)
                }
                .frame(width: show ? 320 : 300, height: show ? 600 : 60)
                .background(Color.blue)
                .clipShape(RoundedRectangle(cornerRadius: 16, style: .continuous))
                .shadow(color: Color.blue.opacity(0.5), radius: 20)
                .onTapGesture {
                        withAnimation(.bouncy()) {
                                show.toggle()
                        }
                }
        }
}

#Preview {
        ContentView()
}
