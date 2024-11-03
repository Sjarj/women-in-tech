//
//  ContentView.swift
//  TheyMakeIt-POC2
//
//  Created by Amandine Cousin on 24/04/2024.
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
                
                Text(femme.nom)
                    .font(.system(size: 38))
                    .fontWeight(.heavy)
                    .foregroundStyle(.purple)
                
                HStack {
                    VStack {
                        Image(systemName: "calendar")
                            .padding(.bottom, 4)
                        Text(femme.anneeNaissance)
                            .font(.callout)
                        Text("-")
                            .font(.callout)
                        Text(femme.anneeDeces)
                            .font(.callout)
                    }
                    .frame(width: geometry.size.width/4, height: 100)
                    .padding(4)
                    .background(RoundedRectangle(cornerRadius: 10)
                        .stroke(.purple, lineWidth: 2))
                    
                    VStack {
                        Image(systemName: "bookmark")
                            .padding(.bottom, 4)
                        ForEach(femme.metiers, id: \.self) { metier in
                            Text(metier)
                                .font(.callout)
                        }
                    }
                    .frame(width: geometry.size.width/3, height: 100)
                    .padding(4)
                    .background(RoundedRectangle(cornerRadius: 10)
                        .stroke(.purple, lineWidth: 2))
                    
                    VStack {
                        Image(systemName: "mappin.and.ellipse")
                            .padding(.bottom, 4)
                        ForEach(femme.nationalites, id: \.self) { nationalite in
                            Text(nationalite)
                                .font(.callout)
                        }
                    }
                    .frame(width: geometry.size.width/4, height: 100)
                    .padding(4)
                    .background(RoundedRectangle(cornerRadius: 10)
                        .stroke(.purple, lineWidth: 2))
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
