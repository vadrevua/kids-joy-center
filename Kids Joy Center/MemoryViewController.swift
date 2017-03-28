//
//  MemoryViewController.swift
//  Kids Joy Center
//
//  Created by Aditya on 3/20/17.
//  Copyright © 2017 Aditya. All rights reserved.
//

import UIKit

class MemoryViewController: UIViewController {
    
    var easyIsSelected: Bool
    var mediumIsSelected: Bool
    var hardIsSelected:Bool
    var tempString: String?
    var tempBundle: Bundle?
    var x = 1
    var y = 1
    
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
    
    func addTiles(){
        var imageView1 = [UIImageView]()
        var imageView2 = [UIImageView]()
        var imageView3 = [UIImageView]()
        var imageView4 = [UIImageView]()
        var imageView5 = [UIImageView]()
        if(easyIsSelected){
            var size = 150
            var height = 180
            var rows = 4
            let cols = 3
            while(rows > 0){
                imageView1.append(UIImageView(image: UIImage(named: "question.png")!))
                imageView2.append(UIImageView(image: UIImage(named: "question.png")!))
                imageView3.append(UIImageView(image: UIImage(named: "question.png")!))
                rows -= 1
            }
            for i in 0...cols {
                imageView1[i].frame = CGRect(x: size, y: height, width: 170, height: 170)
                imageView1[i].isUserInteractionEnabled = true
                view.addSubview(imageView1[i])
                size += 170
            }
            height += 170
            size = 150
            for i in 0...cols{
                imageView2[i].frame = CGRect(x: size, y: height, width: 170, height: 170)
                imageView2[i].isUserInteractionEnabled = true
                view.addSubview(imageView2[i])
                size += 170
            }
            height += 170
            size = 150
            for i in 0...cols{
                imageView3[i].frame = CGRect(x: size, y: height, width: 170, height: 170)
                imageView3[i].isUserInteractionEnabled = true
                view.addSubview(imageView3[i])
                size += 170
                
            }
        }
        if(mediumIsSelected){
            var size = 150
            var height = 180
            var rows = 4
            let cols = 3
            while(rows > 0){
                imageView1.append(UIImageView(image: UIImage(named: "question.png")!))
                imageView2.append(UIImageView(image: UIImage(named: "question.png")!))
                imageView3.append(UIImageView(image: UIImage(named: "question.png")!))
                rows -= 1
            }
            for i in 0...cols {
                imageView1[i].frame = CGRect(x: size, y: height, width: 170, height: 170)
                imageView1[i].isUserInteractionEnabled = true
                view.addSubview(imageView1[i])
                size += 170
            }
            height += 170
            size = 150
            for i in 0...cols{
                imageView2[i].frame = CGRect(x: size, y: height, width: 170, height: 170)
                imageView2[i].isUserInteractionEnabled = true
                view.addSubview(imageView2[i])
                size += 170
            }
            height += 170
            size = 150
            for i in 0...cols{
                imageView3[i].frame = CGRect(x: size, y: height, width: 170, height: 170)
                imageView3[i].isUserInteractionEnabled = true
                view.addSubview(imageView3[i])
                size += 170
                
            }
        }
        else if(hardIsSelected){
            var size = 150
            var height = 180
            var rows = 4
            let cols = 3
            while(rows > 0){
                imageView1.append(UIImageView(image: UIImage(named: "question.png")!))
                imageView2.append(UIImageView(image: UIImage(named: "question.png")!))
                imageView3.append(UIImageView(image: UIImage(named: "question.png")!))
                rows -= 1
            }
            for i in 0...cols {
                imageView1[i].frame = CGRect(x: size, y: height, width: 170, height: 170)
                imageView1[i].isUserInteractionEnabled = true
                view.addSubview(imageView1[i])
                size += 170
            }
            height += 170
            size = 150
            for i in 0...cols{
                imageView2[i].frame = CGRect(x: size, y: height, width: 170, height: 170)
                imageView2[i].isUserInteractionEnabled = true
                view.addSubview(imageView2[i])
                size += 170
            }
            height += 170
            size = 150
            for i in 0...cols{
                imageView3[i].frame = CGRect(x: size, y: height, width: 170, height: 170)
                imageView3[i].isUserInteractionEnabled = true
                view.addSubview(imageView3[i])
                size += 170
                
            }
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
    
        func addEasyPictures(){
            let randomPicture = Int(arc4random_uniform(10) + 1)
            var size = 150
            var height = 180
        }
        
        
        override func viewDidLoad() {
            super.viewDidLoad()
            let imageName = "background.jpg"
            let image = UIImage(named: imageName)
            let imageView = UIImageView(image: image!)
            imageView.frame = self.view.frame
            view.addSubview(imageView)
            self.title = "Memory Game"
            
            addTiles()
            
            
            
            
        }
        
        
}

