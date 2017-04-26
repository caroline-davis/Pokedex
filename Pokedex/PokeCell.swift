//
//  PokeCell.swift
//  Pokedex
//
//  Created by Caroline Davis on 24/04/2017.
//  Copyright © 2017 Caroline Davis. All rights reserved.
//

import UIKit

class PokeCell: UICollectionViewCell {
    
    
    @IBOutlet weak var thumbImg: UIImageView!
    @IBOutlet weak var nameLbl: UILabel!
    
    var pokemon: Pokemon!
    
    // this creates the code needed to do the corners below
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        // rounded corners
        layer.cornerRadius = 5.0
    }
    
    func configureCell(_ pokemon: Pokemon) {
        
        self.pokemon = pokemon
        
        nameLbl.text = self.pokemon.name.capitalized
        thumbImg.image = UIImage(named: "\(self.pokemon.pokedexId)")
    }
    
    
}
