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
        // Do any additional setup after loading the view.
        drawerView.layer.cornerRadius = 10.0
        drawerView.clipsToBounds = false     //take the full size of the screen with the items
        
        //=========bringing it to front==
        self.view.addSubview(drawerView)
        
        //========to hide the drawer======
        drawerView.frame = CGRect(x: 0 , y: 0, width: 0.0 - (self.view.frame.width), height: self.view.frame.height)
        

    }
    
    //======menu button===
    @IBAction func menu_button(_ sender: UIBarButtonItem) {
       //===========when the drawer is ro the left===== ie negative
        if (drawerView.frame.origin.x < 0.0) {
            UIView.animate(withDuration: 0.25) {
                self.drawerView.frame = CGRect(x:self.drawerView.frame.origin.x , y: 0, width: self.view.frame.width, height: self.view.frame.height)
            }
            
        } else {
            UIView.animate(withDuration: 0.25) {
                self.drawerView.frame = CGRect(x: 0.0 - (self.view.frame.width)  , y: 0, width: 0, height: self.view.frame.height)
                //self.view.frame.height
                //width: 0.0 - (self.view.frame.width)
                
            }
        }
        
        
    }
    
    
}

