//
//  SortingViewController.swift
//  Kids Joy Center
//
//  Created by Aditya on 3/20/17.
//  Copyright © 2017 Aditya. All rights reserved.
//

import UIKit

class SortingViewController: UIViewController {
    
    var easyIsSelected: Bool
    var mediumIsSelected: Bool
    var hardIsSelected:Bool
    var tempString: String?
    var tempBundle: Bundle?
    
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
    
    func getRandomPlace() -> Int{
        let rand = Int(arc4random_uniform(3) + 1)
        return rand
    }
    func getRandomVehicle() -> Int{
        let rand = Int(arc4random_uniform(5) + 1)
        return rand
    }
    
    func isEasyPicked(){
        var pictureArray = [UIImageView]()
        var counter = 0
        var imgVar = 0
        var categoryVar = 0
        var a = Array(repeating: false, count: 15)
        while(counter < 8) {
            var boolVal = false
            var cameThru = 0
            
            categoryVar = getRandomPlace()
            imgVar = getRandomVehicle()
            repeat{
                
                if(categoryVar == 1){
                    imgVar -= 1
                    if(a[imgVar] == false){
                        a[imgVar] = true
                        boolVal = true
                        cameThru = imgVar + 1
                    }
                    else{
                        imgVar = getRandomVehicle()
                        cameThru = imgVar
                    }
                }
                else if(categoryVar == 2){
                    imgVar += 4
                    if(a[imgVar] == false){
                        a[imgVar] = true
                        boolVal = true
                        cameThru = imgVar - 4
                    }
                    else{
                        imgVar = getRandomVehicle()
                        cameThru = imgVar
                    }
                    
                }
                else{
                    imgVar += 9
                    if(a[imgVar] == false){
                        a[imgVar] = true
                        boolVal = true
                        cameThru = imgVar - 9
                    }
                    else{
                        imgVar = getRandomVehicle()
                        cameThru = imgVar
                    }
                    
                }
                
            } while(a[imgVar] == false)
            //0-4, 5-9, 10-14
            let image = UIImage(named: "\(categoryVar)-\(cameThru)")
            let imageView = UIImageView(image: image!)
            pictureArray.append(imageView)
            counter += 1
        }
        
        var x = 30
        for i in 0...7{
            pictureArray[i].frame = CGRect(x: x, y: 75, width: 75, height: 75)
            self.view.addSubview(pictureArray[i])
            x += 128
        }
    }
    
    
    
    
    
    
    func isMediumPicked(){
        var pictureArray = [UIImageView]()
        var counter = 0
        var imgVar = 0
        var categoryVar = 0
        var a = Array(repeating: false, count: 15)
        while(counter < 10) {
            var boolVal = false
            var cameThru = 0
            
            categoryVar = getRandomPlace()
            imgVar = getRandomVehicle()
            repeat{
                
                if(categoryVar == 1){
                    imgVar -= 1
                    if(a[imgVar] == false){
                        a[imgVar] = true
                        boolVal = true
                        cameThru = imgVar + 1
                    }
                    else{
                        imgVar = getRandomVehicle()
                        cameThru = imgVar
                    }
                }
                else if(categoryVar == 2){
                    imgVar += 4
                    if(a[imgVar] == false){
                        a[imgVar] = true
                        boolVal = true
                        cameThru = imgVar - 4
                    }
                    else{
                        imgVar = getRandomVehicle()
                        cameThru = imgVar
                    }
                    
                }
                else{
                    imgVar += 9
                    if(a[imgVar] == false){
                        a[imgVar] = true
                        boolVal = true
                        cameThru = imgVar - 9
                    }
                    else{
                        imgVar = getRandomVehicle()
                        cameThru = imgVar
                    }
                    
                }
                
            } while(a[imgVar] == false)
            //0-4, 5-9, 10-14
            let image = UIImage(named: "\(categoryVar)-\(cameThru)")
            let imageView = UIImageView(image: image!)
            pictureArray.append(imageView)
            counter += 1
        }
        
        var x = 30
        for i in 0...9{
            pictureArray[i].frame = CGRect(x: x, y: 75, width: 75, height: 75)
            self.view.addSubview(pictureArray[i])
            x += 100
        }
    }
    
    func isHardPicked(){
        var pictureArray = [UIImageView]()
        var counter = 0
        var imgVar = 0
        var categoryVar = 0
        var a = Array(repeating: false, count: 15)
        while(counter < 12) {
            var boolVal = false
            var cameThru = 0
            
            categoryVar = getRandomPlace()
            imgVar = getRandomVehicle()
            repeat{
                
                if(categoryVar == 1){
                    imgVar -= 1
                    if(a[imgVar] == false){
                        a[imgVar] = true
                        boolVal = true
                        cameThru = imgVar + 1
                    }
                    else{
                        imgVar = getRandomVehicle()
                        cameThru = imgVar
                    }
                }
                else if(categoryVar == 2){
                    imgVar += 4
                    if(a[imgVar] == false){
                        a[imgVar] = true
                        boolVal = true
                        cameThru = imgVar - 4
                    }
                    else{
                        imgVar = getRandomVehicle()
                        cameThru = imgVar
                    }
                    
                }
                else{
                    imgVar += 9
                    if(a[imgVar] == false){
                        a[imgVar] = true
                        boolVal = true
                        cameThru = imgVar - 9
                    }
                    else{
                        imgVar = getRandomVehicle()
                        cameThru = imgVar
                    }
                    
                }
                
            } while(a[imgVar] == false)
            //0-4, 5-9, 10-14
            let image = UIImage(named: "\(categoryVar)-\(cameThru)")
            let imageView = UIImageView(image: image!)
            pictureArray.append(imageView)
            counter += 1
        }
        
        var x = 30
        for i in 0...11{
            //                pictureArray[i].frame.origin.x = CGFloat(x)
            //                pictureArray[i].frame.origin.y = 50
            pictureArray[i].frame = CGRect(x: x, y: 75, width: 75, height: 75)
            self.view.addSubview(pictureArray[i])
            x += 85
        }
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let imageName = "air-land-water.png"
        let image = UIImage(named: imageName)
        let imageView = UIImageView(image: image!)
        imageView.frame = self.view.frame
        view.addSubview(imageView)
        self.title = "Sorting Game"
        let imageContainer = UIView(frame: CGRect(x: 0, y: 50, width: 1024, height: 100))
        imageContainer.backgroundColor = UIColor.cyan
        self.view.addSubview(imageContainer)
        
        if(easyIsSelected){
            isEasyPicked()
        }
        else if(mediumIsSelected){
            isMediumPicked()
        }
        else if(hardIsSelected){
            isHardPicked()
        }
        else{
            print("something crazy happened")
        }
    }
    
    
}
