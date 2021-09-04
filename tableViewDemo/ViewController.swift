//
//  ViewController.swift
//  tableViewDemo
//
//  Created by Ahmed Sabry on 04/09/2021.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
  
    
    @IBOutlet weak var tableview_OT: UITableView!
    @IBOutlet weak var lblName: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableview_OT.delegate = self
        tableview_OT.dataSource = self
        tableview_OT.register(UINib(nibName: "TableViewCell", bundle: nil), forCellReuseIdentifier: "TableViewCell_ID")
        
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell_ID") as! TableViewCell
        cell.nameLB_OT.text = "cell number: \(indexPath.row)"
        
        
        
        
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 90.0
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("cell number: \(indexPath.row)")
        lblName.text = "ahmed Amer: \(indexPath.row)"
        
    //    secondview >> Navigate with data
        let storybord = UIStoryboard(name: "Main", bundle: nil)
        let vc = storybord.instantiateViewController(identifier: "secondview") as! secondviewDetails
        vc.name = "ahmed Amer: \(indexPath.row)"
        vc.modalPresentationStyle = .overFullScreen //Set Present Style
        self.present(vc, animated: true, completion: nil)
        
    }

}

