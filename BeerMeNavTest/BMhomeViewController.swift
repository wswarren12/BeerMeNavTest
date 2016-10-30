//
//  BMhomeViewController.swift
//  BeerMeNavTest
//
//  Created by William S. Warren on 10/30/16.
//  Copyright © 2016 William S. Warren. All rights reserved.
//

import UIKit

class BMhomeViewController: UIViewController {
    
    //MARK: Lifecycle Method
    
    override func loadView() {
        let frame = UIScreen.main.bounds
        let view = UIView(frame: frame)
        view.backgroundColor = .blue
        
        let height = frame.size.height
        let width = frame.size.width
        let originX = width*0.5-100
        let originY = height*0.3
    
        
        let NavBtn = UIButton(type: .custom)
        NavBtn.frame = CGRect(x: originX, y: originY, width: 200, height: 44)
        NavBtn.backgroundColor = .clear
        NavBtn.setTitle("Navigate", for: .normal)
        NavBtn.layer.borderWidth = 2.0
        NavBtn.layer.borderColor = UIColor.white.cgColor
        NavBtn.addTarget(self, action: #selector(BMhomeViewController.showNextScreen(sender:)), for: .touchUpInside)

        NavBtn.layer.cornerRadius = 22
        
        view.addSubview(NavBtn)
        
        self.view = view
    
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    func showNextScreen(sender: UIButton) {
            print ("Show Next Screen")
        
        let nextScreen = BMTableViewController()
        self.navigationController?.pushViewController(nextScreen, animated: true)
        
        
// self.present(nextScreen, animated: true, completion: nil)

//creation associated with the transition above
        
        
// self.navigationController?.pushViewController(nextScreen, animated: true)
        
       
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    
    }

}

