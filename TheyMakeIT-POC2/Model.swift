//
//  Model.swift
//  TheyMakeIT-POC2
//
//  Created by Sjarj on 02/11/2024.
//

//
//  Model.swift
//  TheyMakeIt-POC1
//
//  Created by Amandine Cousin on 26/04/2024.
//

import Foundation

struct Femme {
    let nom: String
    let metiers: [String]
    let nomImage: String
    let anneeNaissance: String
    let anneeDeces: String
    let nationalites: [String]
    let reussites: [String]
    let description: String
    
    init(nom: String, metiers: [String], nomImage: String, anneeNaissance: String, anneeDeces: String = "Aujourd'hui", nationalites: [String], reussites: [String], description: String) {
        self.nom = nom
        self.metiers = metiers
        self.nomImage = nomImage
        self.anneeNaissance = anneeNaissance
        self.anneeDeces = anneeDeces
        self.nationalites = nationalites
        self.reussites = reussites
        self.description = description
    }
}
