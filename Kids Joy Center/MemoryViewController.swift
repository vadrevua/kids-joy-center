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
        var picturesArr: [UIImage] = []
        if(easyIsSelected){
            for index in 1...6 {
                picturesArr.append((UIImage(named: "\(index).png"))!)
                var newSquare : UIImageView
            newSquare = UIImageView(frame:CGRect(x: 0, y: 0, width: 100, height: 70))
            newSquare.contentMode = .scaleAspectFit
            }
            
        }
        
        
    }
    
    
}
