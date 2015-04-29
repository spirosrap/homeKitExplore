//
//  ViewController.swift
//  homeKitExplore
//
//  Created by Spiros Raptis on 29/04/2015.
//  Copyright (c) 2015 Spiros Raptis. All rights reserved.
//

import UIKit
import HomeKit

class ViewController: UIViewController,HMHomeManagerDelegate {
    var homeManager = HMHomeManager()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.homeManager.delegate = self
        
        self.homeManager.addHomeWithName("SpirosHome"){
            home,error in
            if error != nil{
                println(error)
            }else{
                println(home)
                println(self.homeManager.homes)
                println("Succesfully added a home")
            }
        }
        
        println(self.homeManager.homes)

    }
    
    override func viewWillAppear(animated: Bool) {
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func homeManagerDidUpdateHomes(manager: HMHomeManager) {
        
    }

}

