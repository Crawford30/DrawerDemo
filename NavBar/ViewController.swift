//
//  ViewController.swift
//  NavBar
//
//  Created by JOEL CRAWFORD on 2/6/20.
//  Copyright © 2020 JOEL CRAWFORD. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var drawerView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //=======swipe gesture =====
        
        
        let swipeLeft = UISwipeGestureRecognizer(target: self, action: #selector(handleGesture))
        swipeLeft.direction = .left
        self.view.addGestureRecognizer(swipeLeft)

        let swipeRight = UISwipeGestureRecognizer(target: self, action: #selector(handleGesture))
        swipeRight.direction = .right
        self.view.addGestureRecognizer(swipeRight)

        let swipeUp = UISwipeGestureRecognizer(target: self, action: #selector(handleGesture))
        swipeUp.direction = .up
        self.view.addGestureRecognizer(swipeUp)

        let swipeDown = UISwipeGestureRecognizer(target: self, action: #selector(handleGesture))
        swipeDown.direction = .down
        self.view.addGestureRecognizer(swipeDown)
        
        
        // Do any additional setup after loading the view.
        drawerView.layer.cornerRadius = 10.0
        drawerView.clipsToBounds = false     //take the full size of the screen with the items
        //=========bringing it to front==
    
        //self.view.addSubview(drawerView)
        self.view.bringSubviewToFront(self.drawerView)
        
        //========to hide the drawer======
        
//        drawerView.frame = CGRect(x: 0 , y: 0,  width: 0.0 - (self.view.frame.size.width), height: self.view.frame.size.height)
//        view.frame.origin.y = 65
    
        drawerView.frame = CGRect( x: 0.0 - self.drawerView.frame.size.width, y: 64,  width: self.drawerView.frame.size.width, height: self.drawerView.frame.size.height )
    }
    
    
    
    @objc  func handleGesture(gesture: UISwipeGestureRecognizer) -> Void {
       if gesture.direction == .right {
            print("Swipe Right")
       }
       else if gesture.direction == .left {
            print("Swipe Left")
       }
//       else if gesture.direction == .up {
//            print("Swipe Up")
//       }
//       else if gesture.direction == .down {
//            print("Swipe Down")
//       }
    }
    
    //======menu button===
    @IBAction func menu_button(_ sender: UIBarButtonItem) {
       //===========when the drawer is ro the left===== ie negative
        if (drawerView.frame.origin.x < 0) {
            UIView.animate(withDuration: 0.25) {
                self.drawerView.frame = CGRect(x: 0 , y: 0, width: self.drawerView.frame.size.width * 0.7, height: self.drawerView.frame.size.height)
               
            }
            
        } else {
            UIView.animate(withDuration: 0.25) {
                self.drawerView.frame = CGRect(x: 0 - (self.drawerView.frame.size.width)  , y: 64, width: self.drawerView.frame.size.width, height: self.drawerView.frame.size.height)
                
                
            }
        }
        
        
    }
    
    
}

