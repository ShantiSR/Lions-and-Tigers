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
    @IBOutlet weak var randomFactLabel: UILabel!
    
    // Create a Tiger Array
    var myTigers:[Tiger] = []
    var currentIndex = 0
    
    // Create a Lion Array
    var lions: [Lion] = []
    
    
    var currentAnimal = (species: "Tiger", index : 0)
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        //instanciado Tiger
        var myTiger = Tiger()
        myTiger.name = "Boby"
        myTiger.age  = 3
        myTiger.breed = "Bengala"
        myTiger.image = UIImage(named:"BengalTiger.jpg")
        myTiger.age = myTiger.ageInTigerYearsFromAge(myTiger.age);
        
        //myTiger.chuff();
        //miTigreton.chuffANumberOfTimes(3);
        //myTiger.chuffANumberOfTimes(5, isLoud: false)
        
        self.myTigers.append(myTiger)
        
        //println("My Tiger's name is: \(miTigreton.name), it's age is \(miTigreton.age), its' breed is \(miTigreton.breed), and the image is \(miTigreton.image)")

        //asignando la estructura tigre a nuestra view
        self.myImageView.image = myTiger.image
        self.nameLabel.text = myTiger.name
        self.ageLabel.text = "\(myTiger.age)"
        self.breedLabel.text = myTiger.breed
        self.randomFactLabel.text = myTiger.randomFact()
        
        //mas tigretones!
        var secondTiger = Tiger()
        secondTiger.name = "Tigress"
        secondTiger.breed = "Indochinese Tiger"
        secondTiger.age = 2
        secondTiger.image = UIImage(named:"IndochineseTiger.jpg")
        secondTiger.age = secondTiger.ageInTigerYearsFromAge(secondTiger.age)
        
        //secondTiger.chuff();
        //secondTiger.chuffANumberOfTimes(2)
        
        var thirdTiger = Tiger()
        thirdTiger.name = "Jacob"
        thirdTiger.breed = "Malayan Tiger"
        thirdTiger.age = 4
        thirdTiger.image = UIImage(named:"MalayanTiger.jpg")
        thirdTiger.age = thirdTiger.ageInTigerYearsFromAge(thirdTiger.age)
        
        var fourthTiger = Tiger()
        fourthTiger.name = "Spar"
        fourthTiger.breed = "Siberian Tiger"
        fourthTiger.age = 5
        fourthTiger.image = UIImage(named:"SiberianTiger.jpg")
        fourthTiger.age = fourthTiger.ageInTigerYearsFromAge(fourthTiger.age)
        
        
        self.myTigers += [secondTiger, thirdTiger, fourthTiger]
        
        
        // Creating Lion instances
        var lion = Lion()
        lion.age = 4
        lion.isAlphaMale = false
        lion.image = UIImage(named:"Lion.jpg")
        lion.name = "Mufasa"
        lion.subspecies = "West African"
        
        var lioness = Lion()
        lioness.age = 3
        lioness.isAlphaMale = false
        lioness.image = UIImage(named: "Lioness.jpeg")
        lioness.name = "Sarabi"
        lioness.subspecies = "Barbary"
        
        // call the roar() function
        lion.roar()
        lioness.roar()
        
        lion.changeToAlphaMale()
        println(lion.isAlphaMale)
        
        self.lions += [lion, lioness]
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func nextBarButtonItemPressed(sender: UIBarButtonItem)
    {
        updateAnimal()
        updateView()
    }
    /*
     will use a Switch statement on our Tuple property. We can use an underscore because we don't need the index to switch between Lions and Tigers. Next, we generate a randomIndex based on the count of either the lion or tiger array. Finally, we update the tuple with the current index and the current species.
    */
    func updateAnimal (){
        
        switch currentAnimal {
        case ("Tiger", _) :
            let randomIndex = Int(arc4random_uniform(UInt32(lions.count)))
            currentAnimal = ("Lion", randomIndex)
        default :
            let randomIndex = Int(arc4random_uniform(UInt32(myTigers.count)))
            currentAnimal = ("Tiger", randomIndex)
        }
    }
    
    func updateView () {
        
        UIView.transitionWithView(self.view, duration: 2, options: UIViewAnimationOptions.TransitionCrossDissolve, animations: {
            
            if self.currentAnimal.species == "Tiger" {
                let tiger = self.myTigers[self.currentAnimal.index]
                self.myImageView.image = tiger.image
                self.breedLabel.text = tiger.breed
                self.ageLabel.text = "\(tiger.age)"
                self.nameLabel.text = tiger.name
                self.randomFactLabel.text = tiger.randomFact()
            }
            else if self.currentAnimal.species == "Lion" {
                let lion = self.lions[self.currentAnimal.index]
                self.myImageView.image = lion.image
                self.breedLabel.text = lion.subspecies
                self.ageLabel.text = "\(lion.age)"
                self.nameLabel.text = lion.name
            }
            self.randomFactLabel.hidden = false
            }, completion: {
                (finished: Bool) -> () in
        })
    }

}

