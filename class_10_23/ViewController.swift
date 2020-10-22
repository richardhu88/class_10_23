//
//  ViewController.swift
//  class_10_23
//
//  Created by NDHU_CSIE on 2020/10/22.
//  Copyright © 2020 NDHU_CSIE. All rights reserved.
//

import UIKit

class ViewController: UIViewController ,UITableViewDelegate,
  UITableViewDataSource{
    
    var restaurantNames = ["Cafe Deadend", "Homei", "Teakha", "Cafe Loisl", "Petite Oyster", "For Kee Restaurant", "Po's Atelier", "Bourke Street Bakery", "Haigh's Chocolate", "Palomino Espresso", "Upstate", "Traif", "Graham Avenue Meats And Deli", "Waffle & Wolf", "Five Leaves", "Cafe Lore", "Confessional", "Barrafina", "Donostia", "Royal Oak", "CASK Pub and Kitchen"]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return restaurantNames.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellIndetifier = "dataset"
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIndetifier, for: indexPath)
        
        //configure the cell
        
        cell.textLabel?.text = restaurantNames[indexPath.row]
        cell.imageView?.image = UIImage(named: "restaurant")
        
        return cell
        
        
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("ViewController: viewWillAppear")
    }
    override func viewDidAppear(_ animated: Bool) {
        print("ViewController: viewDidAppear")
    }
    override func viewWillDisappear(_ animated: Bool) {
        print("ViewController: viewWillDisappear")
    }
    override func viewDidDisappear(_ animated: Bool) {
        print("ViewController: viewDidDisappear")
    }


}

