//
//  CardView.swift
//  TheyMakeIT-POC2
//
//  Created by Sjarj on 03/11/2024.
//

import SwiftUI

struct CardView: View {
    let content : [String]
    let width : CGFloat
    let pictoName : String
    
    
    var body: some View {
        VStack {
            Image(systemName: pictoName)
                .padding(.bottom, 4)
            ForEach(content, id: \.self) { text in
                Text(text)
                    .font(.callout)
                    .multilineTextAlignment(.center)

            }
        }
        .frame(width: width, height: 100)
        .padding(4)
        .background(RoundedRectangle(cornerRadius: 10)
            .stroke(.purple, lineWidth: 2))
    }
}


#Preview {
    CardView(content: ["1815", "-", "1852"], width: 100, pictoName: "calendar")
}
