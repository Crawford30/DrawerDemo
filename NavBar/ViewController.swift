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
        drawerView.clipsToBounds = false
        
        //=========bringing it to front==
        self.view.addSubview(drawerView)
        drawerView.frame = CGRect(x: 0 , y: 0, width: 0.0 - (self.view.frame.width), height: self.view.frame.height)
        
        
        //       CGRect tempRect   = drawerView.frame;
        //       tempRect.origin.x = 0.0 - tempRect.size.width;
        //
        //       drawerView.frame  = tempRect;
        
        //        let drawerView =  CGRect(
        //        origin: CGPoint(x: 0, y: 0),
        //        size: CGSize(width: 100, height: 100))
        //        let firstView = UIView(frame:drawerView)
        //        firstView.backgroundColor = UIColor.blue
        //        view.addSubview(firstView)
    }
    
    
    
    //======menu button===
    @IBAction func menu_button(_ sender: UIBarButtonItem) {
        // let new_frame_size = drawerView.frame.origin.x < 0.0
        
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

