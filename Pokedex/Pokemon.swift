//
//  Pokemon.swift
//  Pokedex
//
//  Created by Caroline Davis on 24/04/2017.
//  Copyright © 2017 Caroline Davis. All rights reserved.
//

import Foundation
import Alamofire

class Pokemon {
    
    private var _name: String!
    private var _pokedexId: Int!
    private var _desciption: String!
    private var _type: String!
    private var _defense: String!
    private var _height: String!
    private var _weight: String!
    private var _attack: String!
    private var _nextEvolutionText: String!
    private var _pokemonURL: String!
    
    // this is for data protection incase the value is empty the app wont crash
    var decription: String! {
        if _desciption == nil {
            _desciption = ""
        }
        return _desciption
    }
    
    var type: String! {
        if _type == nil {
            _type = ""
        }
        return _type
    }
    
    var defense: String! {
        if _defense == nil {
            _defense = ""
        }
        return _defense
    }
    
    var height: String! {
        if _height == nil {
            _height = ""
        }
        return _height
    }
    
    var weight: String! {
        if _weight == nil {
            _weight = ""
        }
        return _weight
    }
    
    var attack: String! {
        if _attack == nil {
            _attack = ""
        }
        return _attack
    }
    
    var nextEvolutionText: String! {
        if _nextEvolutionText == nil {
            _nextEvolutionText = ""
        }
        return _nextEvolutionText
    }
    
    var name: String {
        return _name
    }
    
    var pokedexId: Int {
        return _pokedexId
    }
    
    init(name: String, pokedexId: Int) {
        
        self._name = name
        self._pokedexId = pokedexId
        self._pokemonURL = "\(URL_BASE)\(URL_POKEMON)\(self.pokedexId)/"
        
    }
    
    // the new swift 3 way to use alamofire @escaping and  Alamofire.request(_pokemonURL).responseJSON
    func downloadPokemonDetail(completed: @escaping DownloadComplete) {
        Alamofire.request(_pokemonURL).responseJSON { (response) in
           
            if let dict = response.result.value as? Dictionary<String, AnyObject> {
                if let weight = dict["weight"] as? String {
                    self._weight = weight
                }
                if let height = dict["height"] as? String {
                    self._height = height
                }
                if let attack = dict["attack"] as? Int {
                    self._attack = "\(attack)"
                }
                if let defense = dict["defense"] as? Int {
                    self._defense = "\(defense)"
                }
                
                print(self._weight)
                print(self._defense)
                print(self._height)
                print(self._attack)
            }
            // remember to add this!!!!
           completed()
        }
    }
    
}
