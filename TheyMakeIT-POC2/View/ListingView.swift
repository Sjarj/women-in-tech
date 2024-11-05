//
//  ListingView.swift
//  TheyMakeIt-POC1
//
//  Created by Amandine Cousin on 26/04/2024.
//

import SwiftUI

struct ListingView: View {
    let viewModel = ViewModel()
    var body: some View {
        NavigationSplitView{
            List(viewModel.listeFemmes, id: \.nom){ femme in
                NavigationLink {
                    ContentView(femme: femme)
                } label: {
                    CellView(femme: femme)
                }
            }
        } detail: {
            Text("Sélectionnez une femme de la liste pour en savoir plus")
        }
    }
}

struct CellView: View {
    let femme: Femme
    var body: some View {
        HStack {
            Image(femme.nomImage)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 70, height: 70)
                .clipShape(Circle())
            Text(femme.nom)
        }
    }
}

#Preview {
    ListingView()
}
