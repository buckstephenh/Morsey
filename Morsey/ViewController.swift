//
//  ViewController.swift
//  Morsey
//
//  Created by Stephen Buck on 7/22/16.
//  Copyright © 2016 Stephen Buck. All rights reserved.
//

import UIKit
import Foundation
class ViewController: UIViewController {
    @IBOutlet weak var input: UITextField!
    @IBOutlet weak var output: UITextView!
    func setOutputColor(color:UIColor){
        dispatch_async(dispatch_get_main_queue(), {
            
            self.output.backgroundColor = color
        })
    }
    func flashOutput() {
        let speed:UInt32 = 100000
      
        for c in (output.text?.characters)! {
            switch c {
                
            case ".":
                setOutputColor(UIColor.redColor())
                
                usleep(speed * 1)
                
            case "-":
                setOutputColor(UIColor.redColor())
                
                usleep(speed * 3)
            case " ":
                setOutputColor(UIColor.whiteColor())
                usleep(speed * 1)
            default:
                setOutputColor(UIColor.blueColor())
                usleep(speed * 1)
            }
            
            setOutputColor(UIColor.whiteColor())
            usleep(speed * 1)
            
        }

    }
    @IBAction func input(sender: UITextField) {
        output.text = morseAsDotDash(sender.text!)
        print("output is now " + output.text!)
        
        
        
        dispatch_async(dispatch_get_global_queue( DISPATCH_QUEUE_PRIORITY_DEFAULT, 0),{
        //Background Thread
            self.flashOutput()
        });
       
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}