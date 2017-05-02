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
    @IBOutlet weak var mainImg: UIImageView!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var typeLabel: UILabel!
    @IBOutlet weak var defenseLabel: UILabel!
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var pokedexLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var attackLabel: UILabel!
    @IBOutlet weak var currentEvoImg: UIImageView!
    @IBOutlet weak var nextEvoImg: UIImageView!
    
    @IBOutlet weak var evoLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
     
        nameLabel.text = pokemon.name.capitalized
        
        let img = UIImage(named: "\(pokemon.pokedexId)")
        mainImg.image = img
        currentEvoImg.image = img
        pokedexLabel.text = "\(pokemon.pokedexId)"
        
        
        // whatever written here will only be called after the network call is completed
        pokemon.downloadPokemonDetail {
            print("did arrive here")
            self.updateUI()
            
        }
    
    }
    
    func updateUI() {
        attackLabel.text = pokemon.attack
        defenseLabel.text = pokemon.defense
        weightLabel.text = pokemon.weight
        heightLabel.text = pokemon.height
        typeLabel.text = pokemon.type
        descriptionLabel.text = pokemon.decription
    }

    // take us back
    @IBAction func backBtnPressed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
 

}
