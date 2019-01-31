//
//  ViewController.swift
//  bau_cua_tom_ca_again_2
//
//  Created by mac on 1/30/19.
//  Copyright © 2019 mac. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    var w:CGFloat = 0
    var h:CGFloat = 0
    
    @IBOutlet weak var bau_right: UIImageView!
 
    @IBOutlet weak var bau_main: UIImageView!
    
    @IBOutlet weak var bau_left: UIImageView!
    
     var mang:[String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.becomeFirstResponder()
        w = self.view.frame.width
        h = self.view.frame.height
        

        
        /*Door_left.frame =  CGRect(x: 0 - w/2,y: 0,width: w/2,height: h)
        Door_right.frame =  CGRect(x: w,y: 0,width: w/2,height: h)*/
 
 
        
        mang = ["ga.jpg","ca.png","huu.png","tom.png","cua.jpg","bau.png"]
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    /*........*/
    override func motionEnded(motion: UIEventSubtype, withEvent event: UIEvent?) {
        if motion == .MotionShake{
            /*print("why are you shaking me ?")*/
            UIView.animateWithDuration(2, animations: {
                
                
               /* self.Door_left.frame.origin = CGPointMake(0,0)
                self.Door_right.frame.origin = CGPointMake(self.w/2,0)*/
                
                },completion: {
                    (finished:Bool) in
                    sleep(2)
                    //start random
                   self.bau_right.image = UIImage(named: self.mang[Int(arc4random_uniform(6))])
                    self.bau_main.image = UIImage(named: self.mang[Int(arc4random_uniform(6))])
                    self.bau_left.image = UIImage(named: self.mang[Int(arc4random_uniform(6))])
                    // end random
                    
                    // start quay lai
                    UIView.animateWithDuration(2, animations: {
                        /*self.Door_left.frame.origin = CGPointMake(0-self.w/2-self.w/3,0)
                        self.Door_right.frame.origin = CGPointMake(self.w,0)*/
                        },completion:nil)
                    //end quay lai
            })
            /*
             // start than one
             UIView.animateWithDuration(2, animations: {
             /*self.left_door.frame.origin = CGPointMake(0,0)*/
             self.right_door.frame.origin = CGPointMake(self.w/2,0)
             },completion: {
             (finished:Bool) in
             // start quay lai
             UIView.animateWithDuration(2, animations: {
             /*self.left_door.frame.origin = CGPointMake(0-self.w/2-self.w/3,0)*/
             self.right_door.frame.origin = CGPointMake(self.w,0)
             },completion:nil)
             //end quay lai
             })
             //end than one
             */
        }
    }
    
    /*.........*/


}

