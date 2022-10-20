//
//  ViewController.swift
//  lesson 18
//
//  Created by Pedro Grando on 20/10/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var backgroundView: UIImageView!
    @IBOutlet weak var imageOfPokemon: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageOfPokemon.image = #imageLiteral(resourceName: "Pikachu")
        let image = UIImage(imageLiteralResourceName: "gradientPik")
        backgroundView.image = image
        
    }

    enum PokemonEnum: Int {
        case pikachu = 0
        case bulbasaur = 1
        case charmander = 2
    }
    
    @IBAction func changingPokemon(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case PokemonEnum.pikachu.rawValue:
            imageOfPokemon.image = #imageLiteral(resourceName: "Pikachu")
            backgroundView.image = #imageLiteral(resourceName: "gradientPik")
        case PokemonEnum.bulbasaur.rawValue:
            imageOfPokemon.image = #imageLiteral(resourceName: "Bulbasaur")
            backgroundView.image = #imageLiteral(resourceName: "greenGradient")
        case PokemonEnum.charmander.rawValue:
            imageOfPokemon.image = #imageLiteral(resourceName: "Charmander")
            backgroundView.image = #imageLiteral(resourceName: "gradientChar")
        default:
            print("bugou tudo")
        }
    }
    

}

