//
//  ContentView.swift
//  TheyMakeIT-POC2
//
//  Created by Sjarj on 27/10/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        GeometryReader { geometry in
            VStack {
                Image("Hedy")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: geometry.size.width)
                
                Text("Hedy Lamarr")
                    .font(.system(size: 38))
                    .fontWeight(.heavy)
                      .foregroundStyle(.purple)
                   
                HStack {
                    VStack {
                        Image(systemName: "calendar")
                            .padding(.bottom,4)
                        Text("1914")
                            .font(.callout)
                        Text("-")
                            .font(.callout)
                        Text("2020")
                            .font(.callout)
                    }
                    .frame(width: geometry.size.width/4, height: 100)
                    .padding(4)
                    .background(RoundedRectangle(cornerRadius: 10).stroke(.purple, lineWidth:2))
                   
                    
                    VStack {
                        Image(systemName: "bookmark")
                            .padding(.bottom,4)
                        Text("Actrice")
                            .font(.callout)
                        Text("Inventrice")
                            .font(.callout)
                        
                    }
                    .frame(width: geometry.size.width/3, height: 100)
                    .padding(4)
                    .background(RoundedRectangle(cornerRadius: 10).stroke(.purple, lineWidth:2))
                    
                    VStack {
                        Image(systemName: "mappin.and.ellipse")
                            .padding(.bottom,4)
                        Text("Autrichienne")
                            .font(.callout)
                        Text("Américaine")
                            .font(.callout)
                    }
                    .frame(width: geometry.size.width/4, height: 100)
                    .padding(4)
                    .background(RoundedRectangle(cornerRadius: 10).stroke(.purple, lineWidth:2))
                   
                }
                
                VStack {
                    Text("Télécommunications")
                        .padding(8)
                        .background(RoundedRectangle(cornerRadius: 10).fill(.purple))
                        .foregroundStyle(.white)
                        
                    Text("Ingénerie aéronautique")
                        .padding(8)
                        .background(RoundedRectangle(cornerRadius: 10).fill(.purple))
                        .foregroundStyle(.white)
                }
                .padding()
                
                Text("Hedy Lamarr était une actrice Autrichienne et inventrice américaine. Elle a développé et commercialisé des technologies de télécommunications, notamment la radio et la télévision.")
                    .font(.callout)
                    .padding()
            }
        }
    }
}

#Preview {
    ContentView()
}
