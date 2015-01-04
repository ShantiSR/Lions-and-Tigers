//
//  ViewController.swift
//  LeonesYTigres
//
//  Created by Shanti on 8/12/14.
//  Copyright (c) 2014 Shanti Rodríguez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var myImageView: UIImageView!
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var ageLabel: UILabel!
    @IBOutlet var breedLabel: UILabel!
    
    var myTigers:[Tiger] = []
    var currentIndex = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        //instanciado Tiger
        var miTigreton = Tiger()
        miTigreton.name = "Boby"
        miTigreton.age  = 3
        miTigreton.breed = "Bengala"
        miTigreton.image = UIImage(named:"BengalTiger.jpg")
        
        miTigreton.chuff();
        miTigreton.chuffANumberOfTimes(3);
        
        self.myTigers.append(miTigreton)
        
        //println("My Tiger's name is: \(miTigreton.name), it's age is \(miTigreton.age), its' breed is \(miTigreton.breed), and the image is \(miTigreton.image)")

        //asignando la estructura tigre a nuestra view
        self.myImageView.image = miTigreton.image
        self.nameLabel.text = miTigreton.name
        self.ageLabel.text = "\(miTigreton.age)"
        self.breedLabel.text = miTigreton.breed
        
        //mas tigretones!
        var secondTiger = Tiger()
        secondTiger.name = "Tigress"
        secondTiger.breed = "Indochinese Tiger"
        secondTiger.age = 2
        secondTiger.image = UIImage(named:"IndochineseTiger.jpg")
        
        secondTiger.chuff();
        secondTiger.chuffANumberOfTimes(2)
        
        var thirdTiger = Tiger()
        thirdTiger.name = "Jacob"
        thirdTiger.breed = "Malayan Tiger"
        thirdTiger.age = 4
        thirdTiger.image = UIImage(named:"MalayanTiger.jpg")
        
        var fourthTiger = Tiger()
        fourthTiger.name = "Spar"
        fourthTiger.breed = "Siberian Tiger"
        fourthTiger.age = 5
        fourthTiger.image = UIImage(named:"SiberianTiger.jpg")
        
        self.myTigers += [secondTiger, thirdTiger, fourthTiger]
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func nextBarButtonItemPressed(sender: UIBarButtonItem)
    {
        
        //obteniendo un tigre de manera aleatoria
        var randomIndex: Int
        
        do {
            randomIndex = Int(arc4random_uniform(UInt32(myTigers.count)))
        } while currentIndex == randomIndex
        
        self.currentIndex = randomIndex
        
        let tiger = self.myTigers[currentIndex]

        //Un poco de animación
        UIView.transitionWithView(self.view, duration: 2, options: UIViewAnimationOptions.TransitionCrossDissolve, animations:
            {
                self.myImageView.image = tiger.image
                self.nameLabel.text = tiger.name
                self.ageLabel.text = "\(tiger.age)"
                self.breedLabel.text = tiger.breed
            }, completion: { (finished: Bool) -> () in
        })
    }


}

