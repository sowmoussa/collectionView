//
//  DetailAnimalController.swift
//  CollectionView
//
//  Created by Moussa SOW on 27/04/2021.
//

import UIKit
import AVFoundation

class DetailAnimalController: UIViewController {

    var sythn = AVSpeechSynthesizer()
    var uterance: AVSpeechUtterance?
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var playBtn: UIBarButtonItem!
    @IBOutlet weak var animalImage: UIImageView!
    @IBOutlet weak var descText: UITextView!
    
    var animal: Animal!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = animal.name
        animalImage.image = UIImage(named: animal.imageString)
        descText.text = animal.desc
        uterance = AVSpeechUtterance(string: animal.desc)
        uterance?.voice = AVSpeechSynthesisVoice(language: "fr-FR")
        uterance?.rate = 0.5
    }
    

    @IBAction func speech(_ sender: Any) {
        if uterance != nil {
            if sythn.isSpeaking {
                sythn.stopSpeaking(at: .immediate)
            }else {
                sythn.speak(uterance!)
            }
        }
    }
    
}
