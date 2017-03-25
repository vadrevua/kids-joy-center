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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let imageName = "background.jpg"
        let image = UIImage(named: imageName)
        let imageView = UIImageView(image: image!)
        imageView.frame = self.view.frame
        view.addSubview(imageView)
        self.title = "Memory Game"
        
        
        
        if(easyIsSelected){
//            for index in 1...6 {
//                picturesArr.append((UIImage(named: "\(index).png"))!)
//                var newSquare : UIImageView
//                newSquare = UIImageView(frame:CGRect(x: 0, y: 0, width: 100, height: 70))
//                newSquare.contentMode = .scaleAspectFit
//            }
            
            var height = self.view.frame.height/6
            var width = self.view.frame.width/6
            
            
            let imageName1 = "1.png"
            let image1 = UIImage(named: imageName1)
            let image1View = UIImageView(image: image1)
            let imageName2 = "2.png"
            let image2 = UIImage(named: imageName2)
            let image2View = UIImageView(image: image2)
            let imageName3 = "3.png"
            let image3 = UIImage(named: imageName3)
            let image3View = UIImageView(image: image3)
            let imageName4 = "4.png"
            let image4 = UIImage(named: imageName4)
            let image4View = UIImageView(image: image4)
            let imageName5 = "5.png"
            let image5 = UIImage(named: imageName5)
            let image5View = UIImageView(image: image5)
            let imageName6 = "6.png"
            let image6 = UIImage(named: imageName6)
            let image6View = UIImageView(image: image6)
            
            
            var imageArray:[UIImageView] = [image1View, image2View, image3View, image4View, image5View, image6View]
            
    }
    
    
}
}
