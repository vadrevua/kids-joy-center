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
    var counter = 0
    
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
    

    func tapHandler(){
        
        print("tapped")
        
        
    }
    func balloonPop(){
        counter += 1
    }
    
    func getBallonSpace() -> Int{
        let random10Space = Int(arc4random_uniform(10) + 1)
        return random10Space
    }
    
    
    
    func runGame(){
        let colorNum = getBallonSpace()
        let image = UIImage(named: "color\(colorNum).png")
        let imageView = UIImageView(image: image!)
        view.addSubview(imageView)
        let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(tapHandler))
        let touchLocation = gestureRecognizer.location(in: self.view)
        self.view.addGestureRecognizer(gestureRecognizer)
        if(easyIsSelected){
            
            
                imageView.frame.origin.y = 768
                imageView.frame.origin.x = 10
                
            UIView.animate(withDuration: 3.0, delay: 0, options: .allowUserInteraction, animations: {
                
                imageView.frame.origin.y -= 768
                print(imageView.frame.origin)
                if(touchLocation == imageView.frame.origin){
                imageView.isHidden = true
                self.balloonPop()
                }
            }, completion: {_ in imageView.removeFromSuperview()})
           
           
                
            
            
            
            
//            presentation()!.hitTest(touchLocation) != nil
//            
//            
//            
//            
//            let touchRecongizer = UITouch()
//            let touch = gestureRecognizer.first
//            let touchLocation = touch!.location(in: self.view)
            
//            for i in 2...self.view.subviews.count {
//                if self.view.subviews[i-1].layer.presentation()!.hitTest(touchLocation) != nil {
//                    print("touched subview \(i)")
//                    self.view.subviews[i-1].backgroundColor = UIColor.black
//                }
//            }

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
    
        //startTimer()
        runGame()
    }
    

        
        
        /*
        func startTimer(){
            var seconds = 0
            if(easyIsSelected){
                seconds = 60
            }
            else if(mediumIsSelected){
                seconds = 45
            }
            else{
                seconds = 30
            }
         
            var timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: Selector("decrementSeconds(seconds: seconds)"), userInfo: nil, repeats: true)
            
        }
        
        func decrementSeconds(seconds: Int){
            var second = seconds
            second -= 1
            print(second)
        }
        */
        
    
}
