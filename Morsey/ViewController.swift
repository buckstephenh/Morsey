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
    func setOutputColor(_ color:UIColor){
        DispatchQueue.main.async(execute: {
            
            self.output.backgroundColor = color
        })
    }
    func flashOutput() {
        let speed:UInt32 = 100000
      
        for c in (output.text?.characters)! {
            switch c {
                
            case ".":
                setOutputColor(UIColor.red())
                
                usleep(speed * 1)
                
            case "-":
                setOutputColor(UIColor.red())
                
                usleep(speed * 3)
            case " ":
                setOutputColor(UIColor.white())
                usleep(speed * 1)
            default:
                setOutputColor(UIColor.blue())
                usleep(speed * 1)
            }
            
            setOutputColor(UIColor.white())
            usleep(speed * 1)
            
        }

    }
    @IBAction func input(_ sender: UITextField) {
        output.text = morseAsDotDash(sender.text!)
        print("output is now " + output.text!)
        
        
        
        DispatchQueue.global( attributes: DispatchQueue.GlobalAttributes.qosDefault).async(execute: {
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
