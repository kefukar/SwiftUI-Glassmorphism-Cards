//  ContentView.swift
//  SwiftUI Glassmorphism Cards
//
//  Created by kefukar on 27.10.2021.

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)), Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1))]), startPoint: .top, endPoint: .bottom)
            
            LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.1411764771, green: 0.3960784376, blue: 0.5647059083, alpha: 1)).opacity(0.6), Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)).opacity(0.3)]), startPoint: .topLeading, endPoint: .bottomTrailing)
            
            ZStack {
                Circle()
                    .frame(width: 400, height: 300)
                    .offset(x: 150, y: -200)
                    .foregroundColor(Color.purple.opacity(0.6))
                    .blur(radius: 8)
                Circle()
                    .frame(width: 200, height: 200)
                    .offset(x: -100, y: -250)
                    .foregroundColor(Color(.purple).opacity(0.3))
                    .blur(radius: 8)
                Circle()
                    .frame(width: 200, height: 200)
                    .offset(x: 100, y: 250)
                    .foregroundColor(Color(.white).opacity(0.3))
                    .blur(radius: 8)
                Circle()
                    .frame(width: 400, height: 300)
                    .offset(x: -150, y: 200)
                    .foregroundColor(Color.blue.opacity(0.5))
                    .blur(radius: 8)
                VStack{
                    Spacer()
                    CardView1()
                        .padding(20)
                    Button(action: ({})) {
                            Label("GM BUTTON", systemImage: "moon.stars")
                            .foregroundColor(.white.opacity(0.7))
                        }.padding()
                        .frame(width: 180, height: 40)
                        .background(.purple.opacity(0.6))
                        .shadow(color: .pink, radius: 5, x: 0, y: 10)
                        .cornerRadius(10)

                    CardView2().padding(20)
                    Spacer()
                }
            }
        }
        .edgesIgnoringSafeArea(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct CardView1: View {
    var body: some View {
        ZStack(alignment: .topLeading) {
            Color.white.opacity(0.4)
                .frame(width: 300, height: 200)
                .clipShape(RoundedRectangle(cornerRadius: 30, style: .continuous))
                .shadow(color: Color.black.opacity(0.9), radius: 10, x: 0, y: 10)
                .blur(radius: 2)
            
            VStack(alignment: .leading, spacing: 26) {
                Text("#1 Glassmorphism Card")
                    .font(.system(size: 24, weight: .bold, design: .rounded))
                HStack{
                    Image(systemName: "tortoise")
                    Spacer()
                    Image(systemName: "dot.radiowaves.left.and.right")
                    Spacer()
                    Image(systemName: "hare")
                }
                Text("Swift Development is beautiful".uppercased())
                    .font(.caption)
                    .frame(width: 280, alignment: .center)
                }
            .padding()
            .frame(width: 300, height: 200)
            .foregroundColor(Color.black.opacity(0.6))
        }
    }
}
struct CardView2: View {
    var body: some View {
        ZStack(alignment: .topLeading) {
            Color.white.opacity(0.3)
                .frame(width: 300, height: 200)
                .clipShape(RoundedRectangle(cornerRadius: 30, style: .continuous))
                .shadow(color: Color.black, radius: 10, x: 0, y: 10)
                
            VStack(alignment: .leading, spacing: 26) {
                Text("#2 Glassmorphism Card")
                    .font(.system(size: 23.5, weight: .bold, design: .rounded))
                HStack{
                    Image(systemName: "mouth.fill")
                    Spacer()
                    Image(systemName: "dot.radiowaves.left.and.right")
                    Spacer()
                    Image(systemName: "person.fill.and.arrow.left.and.arrow.right")
                }
                Text("SwiftUI is the Future".uppercased())
                    .font(.caption)
                    .frame(width: 280, alignment: .center)
                }
            .padding()
            .frame(width: 300, height: 200)
            .foregroundColor(Color.black.opacity(0.9))
        }
    }
}
