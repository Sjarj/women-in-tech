//
//  BubbleView.swift
//  TheyMakeIT-POC2
//
//  Created by Sjarj on 04/11/2024.
//

import SwiftUI

struct BubbleView: View {
    let titres : [String]
    var body: some View {
        ForEach(titres,id:\.self) { titre in
            Text(titre)
                .fontWeight(.bold)
                .padding(8)
                .background(RoundedRectangle(cornerRadius: 10).fill(.purple))
            .foregroundStyle(.white)
        }
        }
}

#Preview {
    BubbleView(titres:  ["premiere developpeuse","createur de site"])
}
