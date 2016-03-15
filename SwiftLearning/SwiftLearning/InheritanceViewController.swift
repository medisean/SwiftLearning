//
//  InheritanceViewController.swift
//  SwiftLearning
//
//  Created by bruce on 16/3/14.
//  Copyright © 2016年 ZouLiangming. All rights reserved.
//

import UIKit

class InheritanceViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let by = Bicycle()
        by.speed = 2.3
        print(by.description)
        print(by.makeNoice())
        
        let at = AutomaticCar()
        at.speed = 32.0
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
