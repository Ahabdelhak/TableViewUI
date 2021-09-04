//
//  secondviewDetails.swift
//  tableViewDemo
//
//  Created by Ahmed Sabry on 04/09/2021.
//

import UIKit

class secondviewDetails: UIViewController {

    @IBOutlet weak var lb_OT: UILabel!
    var name = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.lb_OT.text = name
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func btnBackAction(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)

    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
