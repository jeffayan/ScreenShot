//
//  ViewController.swift
//  ScreenShot
//
//  Created by Developer on 31/05/17.
//  Copyright © 2017 Developer. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var imageView:UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        
        
    }

   
    @IBAction func TakePic(){
        
        UIGraphicsBeginImageContextWithOptions(self.view.layer.frame.size, true, UIScreen.main.scale)
        
        if let context = UIGraphicsGetCurrentContext(){
                        
            view.layer.render(in:context)
            
            self.imageView.image = UIGraphicsGetImageFromCurrentImageContext()
            
            UIGraphicsEndImageContext()
            
        }        
        
    }
    

}

@IBDesignable
class imageView:UIImageView{
   
    @IBInspectable
    var borderWidth : CGFloat = 1.0{
        didSet{
            self.layer.borderWidth = borderWidth
        }
    }
    
    @IBInspectable
    var borderColor : UIColor = UIColor.black{
        didSet{
            self.layer.borderColor = borderColor.cgColor
        }
    }
}
