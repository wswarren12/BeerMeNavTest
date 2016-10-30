//
//  BMTableViewController.swift
//  BeerMeNavTest
//
//  Created by William S. Warren on 10/30/16.
//  Copyright © 2016 William S. Warren. All rights reserved.
//

import UIKit

class BMTableViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var beerTable: UITableView!
    

    override func viewDidLoad() {
        super.viewDidLoad()

  
    }

    override func loadView() {
        
        self.edgesForExtendedLayout = []
        let frame = UIScreen.main.bounds
        let view = UIView(frame:frame)
        view.backgroundColor = .red

        
        self.beerTable = UITableView(frame: frame, style: .plain)
        self.beerTable.delegate = self
        self.beerTable.dataSource = self
        self.beerTable.autoresizingMask = .flexibleHeight
        
        view.addSubview(self.beerTable)
        self.view = view
    }
    
    //MARK: TableView Delegate Methods
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellId = "cellId"
        
        //reuse cell
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: cellId) {
            cell.textLabel?.text = "\(indexPath.row)"
            cell.detailTextLabel?.text = "Reuse"
            return cell
            
        }
        
        //create cell
        
            let cell = UITableViewCell(style: .subtitle, reuseIdentifier: cellId)
            cell.textLabel?.text = "\(indexPath.row)"
            cell.detailTextLabel?.text = "Create"
            return cell
        }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print ("didSelectRowAt: \(indexPath.row)")
        
        
        let selectedCellVc = BMSelectedCellViewController()
        selectedCellVc.title = "\(indexPath.row)"
        
        let home = BMSelectedCellViewController()
        home.title = "Home"
        
        let tab = UITabBarController()
        tab.viewControllers = [selectedCellVc, home]
        
        self.navigationController?.pushViewController(tab, animated: true)

    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
      
    }
    

   

}
