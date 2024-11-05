
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
                    CardView(content: [femme.anneeNaissance,"-",femme.anneeDeces], width: geometry.size.width/4, pictoName: "calendar")
                    CardView(content: femme.metiers, width: geometry.size.width/3, pictoName: "bookmark")
                    CardView(content: femme.nationalites, width: geometry.size.width/4, pictoName: "mappin.and.ellipse")
                    
                }
                
                VStack {
                    BubbleView(titres: femme.reussites)
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
