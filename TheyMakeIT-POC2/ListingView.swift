//
//  ListingView.swift
//  TheyMakeIt-POC1
//
//  Created by Amandine Cousin on 26/04/2024.
//

import SwiftUI

struct ListingView: View {
    let listeFemmes: [Femme] = [
        Femme(nom: "Hedy Lamarr", metiers: ["Actrice", "Inventrice"], nomImage: "Hedy", anneeNaissance: "1914", anneeDeces: "2000", nationalites: ["Autrichienne", "Américaine"], reussites: ["Télécommunications", "Ingénierie aéronautique"], description: "Hedy Lamarr était une actrice autrichienne qui a également été une inventrice prolifique. Elle est surtout connue pour son invention avec George Antheil, du système de saut de fréquence, une technologie fondamentale pour les communications sans fil modernes."),
        Femme(nom: "Grace Hopper", metiers: ["Informaticienne", "Militaire"], nomImage: "Grace", anneeNaissance: "1906", anneeDeces: "1992", nationalites: ["Américaine"], reussites: ["COBOL", "Premier compilateur"], description: "Grace Hopper était une pionnière de l'informatique, connue pour son travail sur le langage de programmation COBOL et pour avoir popularisé le concept de débogage informatique. Elle a joué un rôle majeur dans le développement des premiers ordinateurs, notamment le Mark I. Elle est la conceptrice du premier compilateur en 1951."),
        Femme(nom: "Audrey Tang", metiers: ["Programmeuse", "Activiste"], nomImage: "Audrey", anneeNaissance: "1981", nationalites: ["Taïwanaise"], reussites: ["Développement open-source", "Perl et Haskell"], description: "Audrey Tang, une programmeuse et activiste taïwanaise, est réputée pour son expertise en technologie et son engagement en faveur de la démocratie participative et de la gouvernance transparente à travers l'utilisation innovante de logiciels open-source et de plateformes numériques."),
        Femme(nom: "Shafi Goldwasser", metiers: ["Ingénieur informatique"], nomImage: "Shafi", anneeNaissance: "1958", nationalites: ["Américaine", "Israélienne"], reussites: ["Prix Turing", "Cryptographie"], description: "Elle est une informaticienne renommée, lauréate du prix Turing, et a apporté des contributions significatives à la cryptographie, à la théorie de la complexité et à la sécurité informatique."),
        Femme(nom: "Ada Lovelace", metiers: ["Développeuse", "Poétesse"], nomImage: "Ada", anneeNaissance: "1815", anneeDeces: "1852", nationalites: ["Britanique"], reussites: ["Première développeuse", "Calculs numériques"], description: "Elle est principalement connue pour avoir réalisé le premier véritable programme informatique, lors de son travail sur un ancêtre de l'ordinateur : la machine analytique de Charles Babbage. Sa vision avant-gardiste de l'utilisation des ordinateurs et des algorithmes a ouvert la voie à l'ère de l'informatique moderne, faisant d'elle une figure emblématique de la technologie."),
        Femme(nom: "Katherine Johnson", metiers: ["Mathématicienne", "Ingénieure spatiale"], nomImage: "Katherine", anneeNaissance: "1918", anneeDeces: "2020", nationalites: ["Américaine"], reussites: ["Calculs orbitaux", "Calculs pour Apollo"], description: "Réputée pour la fiabilité de ses calculs en navigation astronomique, elle conduit des travaux techniques à la NASA qui s'étalent sur des décennies. Durant cette période, elle calcule et vérifie les trajectoires, les fenêtres de lancement et les plans d'urgence de nombreux vols du programme Mercury ou des procédures de rendez-vous spatial pour Apollo 11 en 1969."),
        Femme(nom: "Reshma Saujani", metiers: ["Avocate", "Femme politique"], nomImage: "Reshma", anneeNaissance: "1975", nationalites: ["Américaine"], reussites: ["Fondatrice Girls Who Code", "Leadership pour la diversité"], description: "Elle est la fondatrice de l'organisation à but non lucratif Girls Who Code, qui vise à augmenter le nombre de femmes en informatique et à réduire la différence d'emploi entre les sexes dans ce domaine."),
        Femme(nom: "Radia Perlman", metiers: ["Ingénieure en informatique", "Chercheuse"], nomImage: "Radia", anneeNaissance: "1951", nationalites: ["Américaine"], reussites: ["Protocole SPT", "Protocole TRILL"], description: "Radia Perlman, une informaticienne américaine, est renommée pour ses contributions révolutionnaires dans le domaine des réseaux informatiques, notamment pour avoir développé des protocoles qui ont établi les fondements de la fiabilité et de la performance des réseaux modernes.")
    ]
    
    var body: some View {
        NavigationSplitView{
            List(listeFemmes, id: \.nom){ femme in
                NavigationLink {
                    ContentView(femme: femme)
                } label: {
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
        } detail: {
            Text("Sélectionnez une femme de la liste pour en savoir plus")
        }
    }
}

#Preview {
    ListingView()
}
