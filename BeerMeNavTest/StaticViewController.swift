//
//  StaticViewController.swift
//  BeerMeNavTest
//
//  Created by William S. Warren on 10/30/16.
//  Copyright © 2016 William S. Warren. All rights reserved.
//

import UIKit

class StaticViewController: UIViewController {
    
    override func loadView() {
        let frame = UIScreen.main.bounds
        let view = UIView (frame: frame)
        view.backgroundColor = .black
        
        self.view = view
    }

    override func viewDidLoad() {
        super.viewDidLoad()

    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
