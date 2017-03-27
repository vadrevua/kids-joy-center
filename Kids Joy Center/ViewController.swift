//
//  ViewController.swift
//  Kids Joy Center
//
//  Created by Aditya on 3/19/17.
//  Copyright © 2017 Aditya. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var memoryIsSelected = false
    var sortingIsSelected = false
    var balloonIsSelected = false
    var easyIsSelected = false
    var mediumIsSelected = false
    var hardIsSelected = false
    
    @IBOutlet weak var gameLabel: UILabel!
    @IBOutlet weak var difficultyLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       }

    
    
    
    
    @IBAction func easyButton(_ sender: Any) {
        easyIsSelected = true
        mediumIsSelected = false
        hardIsSelected = false
        difficultyLabel.text = "Difficulty: Easy"
    }
    
    @IBAction func mediumButton(_ sender: Any) {
        easyIsSelected = false
        mediumIsSelected = true
        hardIsSelected = false
        difficultyLabel.text = "Difficulty: Medium"
    }
    @IBAction func hardButton(_ sender: Any) {
        easyIsSelected = false
        mediumIsSelected = false
        hardIsSelected = true
        difficultyLabel.text = "Difficulty: Hard"
    }
    
    @IBAction func memoryButton(_ sender: Any) {
        memoryIsSelected = true
        sortingIsSelected = false
        balloonIsSelected = false
        gameLabel.text = "Memory Game is selected"
    }
    
    @IBAction func sortingButton(_ sender: Any) {
        memoryIsSelected = false
        sortingIsSelected = true
        balloonIsSelected = false
        gameLabel.text = "Sorting Game is selected"
    }
    @IBAction func balloonButton(_ sender: Any) {
        memoryIsSelected = false
        sortingIsSelected = false
        balloonIsSelected = true
        gameLabel.text = "Balloon Game is selected"
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if(segue.identifier == "memoryGameSegue"){
            let memViewController = (segue.destination as! MemoryViewController)
            if(easyIsSelected){
                memViewController.easyIsSelected = true
            }
            else if (mediumIsSelected){
                memViewController.mediumIsSelected = true
            }
            else{
                memViewController.hardIsSelected = true
            }
        }
        if(segue.identifier == "sortingGameSegue"){
            let memViewController = (segue.destination as! SortingViewController)
            if(easyIsSelected){
                memViewController.easyIsSelected = true
            }
            else if (mediumIsSelected){
                memViewController.mediumIsSelected = true
            }
            else{
                memViewController.hardIsSelected = true
            }
        }
        if(segue.identifier == "balloonGameSegue"){
            let memViewController = (segue.destination as! BalloonViewController)
            if(easyIsSelected){
                memViewController.easyIsSelected = true
            }
            else if (mediumIsSelected){
                memViewController.mediumIsSelected = true
            }
            else{
                memViewController.hardIsSelected = true
            }
        }
        
    }
    
    @IBAction func playButton(_ sender: Any) {
        if(easyIsSelected || mediumIsSelected || hardIsSelected){
            if(memoryIsSelected){
                performSegue(withIdentifier: "memoryGameSegue", sender: Any?.self)
            }
            if(sortingIsSelected){
                performSegue(withIdentifier: "sortingGameSegue", sender: Any?.self)
            }
            if(balloonIsSelected){
                performSegue(withIdentifier: "balloonGameSegue", sender: Any?.self)
            }
        }
            
        else{
            difficultyLabel.text = "Click Difficulty"
        }
    }
}
