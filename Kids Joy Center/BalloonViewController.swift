//
//  BalloonViewController.swift
//  Kids Joy Center
//
//  Created by Aditya on 3/20/17.
//  Copyright © 2017 Aditya. All rights reserved.
//

import UIKit

class BalloonViewController: UIViewController {
    
    var easyIsSelected: Bool
    var mediumIsSelected: Bool
    var hardIsSelected:Bool
    var tempString: String?
    var tempBundle: Bundle?
    var scoreCount = 0
    var timeCount = 1
    var seperateCounter = 1
    
    init(easy: Bool, medium: Bool, hard: Bool) {
        self.easyIsSelected = easy
        self.mediumIsSelected = medium
        self.hardIsSelected = hard
        super.init(nibName: tempString, bundle: tempBundle)
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        self.easyIsSelected = false
        self.mediumIsSelected = false
        self.hardIsSelected = false
        super.init(coder: aDecoder)
    }
    
    
    func balloonPop(){
        scoreCount += 1
    }
    
    func getBallonSpace() -> Int{
        let random10Space = Int(arc4random_uniform(10) + 1)
        return random10Space
    }
    
    
    
    func runGame(){
        
        if(easyIsSelected){
            addBalloonEasy()
        }
        
        
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        let touch = touches.first
        let touchLocation = touch!.location(in: self.view)
        
        for i in 2...self.view.subviews.count {
            if self.view.subviews[i-1].layer.presentation()!.hitTest(touchLocation) != nil {
                self.view.subviews[i-1].isHidden = true
                self.view.subviews[2].isHidden = false
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let imageName = "sky-background.jpg"
        let image = UIImage(named: imageName)
        let imageView = UIImageView(image: image!)
        imageView.frame = self.view.frame
        view.addSubview(imageView)
        self.title = "Balloon Pop"
        
        runGame()
        startTimer()
        
    }
    
    
    
    
    
    func startTimer(){
        var seconds = 0
        if(easyIsSelected){
            
            
            var timer = Timer.scheduledTimer(timeInterval: 3.3, target: self, selector: #selector(addBalloonEasy), userInfo: nil, repeats: true)
            var secondCounter = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(incrementSeconds), userInfo: nil, repeats: true)
            
        }
            
        else if(mediumIsSelected){
            var timer = Timer.scheduledTimer(timeInterval: 2.6, target: self, selector: #selector(addBalloonEasy), userInfo: nil, repeats: true)
            var secondCounter = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(incrementSeconds), userInfo: nil, repeats: true)
        }
            
        else{
            var timer = Timer.scheduledTimer(timeInterval: 2, target: self, selector: #selector(addBalloonEasy), userInfo: nil, repeats: true)
            var secondCounter = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(incrementSeconds), userInfo: nil, repeats: true)
        }
        
    }
    
    func incrementSeconds(){
        timeCount += 1
        if(timeCount == 60){
            endGame()
        }
    }
    
    func addBalloonEasy(){
        let colorNum = getBallonSpace()
        let image = UIImage(named: "color\(colorNum).png")
        let imageView = UIImageView(image: image!)
        view.addSubview(imageView)
        let positionNum = getBallonSpace()
        imageView.frame.origin.y = 768
        
        if(positionNum == 1){
            imageView.frame.origin.x = 10
        }
        else if(positionNum == 2){
            imageView.frame.origin.x = 110
        }
        else if(positionNum == 3){
            imageView.frame.origin.x = 210
        }
        else if(positionNum == 4){
            imageView.frame.origin.x = 310
        }
        else if(positionNum == 5){
            imageView.frame.origin.x = 410
        }
        else if(positionNum == 6){
            imageView.frame.origin.x = 510
        }
        else if(positionNum == 7){
            imageView.frame.origin.x = 610
        }
        else if(positionNum == 8){
            imageView.frame.origin.x = 710
        }
        else if(positionNum == 9){
            imageView.frame.origin.x = 810
        }
        else{
            imageView.frame.origin.x = 910
        }
        UIView.animate(withDuration: 3.3, delay: 0, options: .allowUserInteraction, animations: {
            
            imageView.frame.origin.y -= 1000
            print(imageView.frame.origin)
            
        }, completion: {_ in imageView.removeFromSuperview()})
        
        
        self.balloonPop()
        seperateCounter += 1
        
    }
    
    func endGame(){
        print(scoreCount)
        print("End Game")
        
        //        let endGameAlert = UIAlertController(title: "Game Over", message: "Your Score: \(scoreCount)", preferredStyle: .actionSheet)
        //        let action = UIAlertAction(title: "Try Again", style: .default) { (UIAlertAction) in
        //            self.scoreCount = 0
        //            self.timeCount = 0
        //        }
        //        endGameAlert.addAction(action)
        //
        //        endGameAlert.popoverPresentationController?.sourceView = self.view
        //        self.present(endGameAlert, animated: true, completion: nil)
        
        
    }
}
