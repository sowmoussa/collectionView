//
//  AnimalsCollectionController.swift
//  CollectionView
//
//  Created by Moussa SOW on 26/04/2021.
//

import UIKit

class AnimalsCollectionController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    
    var zoo: [AnimalCategory] = [
        AnimalCategory(name: "Mammifères", animals: Datas().mammiferes),
        AnimalCategory(name: "Reptiles", animals: Datas().reptiles),
        AnimalCategory(name: "Oiseaux", animals: Datas().oiseaux),
        
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "todetail" {
            if let next = segue.destination as? DetailAnimalController {
                next.animal = sender as? Animal
            }
        }
    }

}
