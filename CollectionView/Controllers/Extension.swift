//
//  Extension.swift
//  CollectionView
//
//  Created by Moussa SOW on 26/04/2021.
//

import UIKit

extension AnimalsCollectionController: UICollectionViewDelegate, UICollectionViewDataSource {
    func setup() {
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.collectionViewLayout = layout()
        collectionView.showsVerticalScrollIndicator = false
    }
    
    func layout() -> UICollectionViewFlowLayout {
        let cote = collectionView.frame.width
        let size = CGSize(width: cote, height: (3*collectionView.frame.height/5)-50)
        let layout = UICollectionViewFlowLayout()
        layout.itemSize = size
        layout.minimumLineSpacing = 100
        layout.minimumInteritemSpacing = 30
        return layout
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return zoo.count
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        let zooSection = zoo[section]
        let animals = zooSection.animals
        return animals.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let animal = zoo[indexPath.section].animals[indexPath.item]
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "AnimalCell", for: indexPath) as! AnimalCell
        cell.animal = animal
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let animal = zoo[indexPath.section].animals[indexPath.item]
        performSegue(withIdentifier: "todetail", sender: animal)
    }
}
