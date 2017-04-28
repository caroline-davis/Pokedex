//
//  PokemonDetailVC.swift
//  Pokedex
//
//  Created by Caroline Davis on 28/04/2017.
//  Copyright © 2017 Caroline Davis. All rights reserved.
//

import UIKit

class PokemonDetailVC: UIViewController {
    
     var pokemon: Pokemon!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
     
        nameLabel.text = pokemon.name
    }



}
