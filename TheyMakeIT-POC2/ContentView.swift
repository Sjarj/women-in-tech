//
//  ContentView.swift
//  TheyMakeIt-POC1
//
//  Created by Amandine Cousin on 23/04/2024.
//

import SwiftUI

struct ContentView: View {
    let femme: Femme
    
    var body: some View {
        GeometryReader { geometry in
            VStack {
                Image(femme.nomImage)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: geometry.size.width)
                
                VStack {
                    Text(femme.nom)
                        .font(.title)
                        .fontWeight(.bold)
                    HStack {
                        Text(femme.anneeNaissance)
                        Text("-")
                        Text(femme.anneeDeces)
                    }
                    .font(.headline)
                    .foregroundStyle(.darkGrey)
                }
                .padding()
                .background(RoundedRectangle(cornerRadius: 10)
                    .stroke(.purple, lineWidth: 2))
                
                VStack {
                    HStack {
                        ForEach(femme.metiers, id: \.self) { metier in
                            Text(metier)
                        }
                    }
                    .font(.title3)
                    
                    HStack {
                        ForEach(femme.nationalites, id: \.self) { nationalite in
                            Text(nationalite)
                        }
                    }
                    .foregroundStyle(.darkGrey)
                }
                
                VStack {
                    ForEach(femme.reussites, id: \.self) { reussite in
                        Text(reussite)
                            .fontWeight(.bold)
                            .padding(8)
                            .background(RoundedRectangle(cornerRadius: 10).fill(.purple))
                            .foregroundStyle(.white)
                    }
                }
                .padding()
                
                Text(femme.description)
                    .font(.callout)
                    .padding()
            }
        }
    }
}

#Preview {
    ContentView(femme: Femme(nom: "Ada Lovelace", metiers: ["Développeuse", "Poétesse"], nomImage: "Ada", anneeNaissance: "1815", anneeDeces: "1852", nationalites: ["Britanique"], reussites: ["Première développeuse", "Calculs numériques"], description: "Elle est principalement connue pour avoir réalisé le premier véritable programme informatique, lors de son travail sur un ancêtre de l'ordinateur : la machine analytique de Charles Babbage. Sa vision avant-gardiste de l'utilisation des ordinateurs et des algorithmes a ouvert la voie à l'ère de l'informatique moderne, faisant d'elle une figure emblématique de la technologie."))
}
