//
//  BMSelectedCellViewController.swift
//  BeerMeNavTest
//
//  Created by William S. Warren on 10/30/16.
//  Copyright © 2016 William S. Warren. All rights reserved.
//

import UIKit

class BMSelectedCellViewController: UIViewController {

    override func loadView() {
        let frame = UIScreen.main.bounds
        let view = UIView(frame: frame)
        view.backgroundColor = .brown
        
        self.view = view
        
    }

    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.navigationController?.navigationBar.tintColor = .orange

    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
