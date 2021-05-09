//
//  AnimalCell.swift
//  CollectionView
//
//  Created by Moussa SOW on 27/04/2021.
//

import UIKit

class AnimalCell: UICollectionViewCell {
    
    @IBOutlet weak var animalImage: UIImageView!
    @IBOutlet weak var animalName: UILabel!
    
    var animal: Animal! {
        didSet {
            contentView.clipsToBounds = true
            contentView.layer.cornerRadius = 30
            animalName.text = animal.name
            animalImage.image = UIImage(named: animal.imageString)
        }
    }
}
