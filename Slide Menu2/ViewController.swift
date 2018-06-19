//
//  ViewController.swift
//  Slide Menu2
//
//  Created by dohien on 6/18/18.
//  Copyright © 2018 hiền hihi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var trailing: NSLayoutConstraint!
    @IBOutlet weak var leading: NSLayoutConstraint!
    
    var hamburger: Bool = false
  
    @IBAction func humburger(_ sender: UIBarButtonItem) {
        if !hamburger {
            hamburger = true
            leading.constant = (2 * UIScreen.main.bounds.width) / 3
            trailing.constant = -(2 * UIScreen.main.bounds.width) / 3
        }else {
            hamburger = false
            leading.constant = 0
            trailing.constant = 0
        }
        UIView.animate(withDuration: 0.3, delay: 0.0, options: .curveEaseIn, animations: {self.view.layoutIfNeeded()})
    }
    @IBAction func button(_ sender: UIButton) {
        hamburger = false
        leading.constant = 0
        trailing.constant = 0
        UIView.animate(withDuration: 0.3, delay: 0.0, options: .curveEaseIn, animations: {self.view.layoutIfNeeded()})
    }
    override func viewDidLoad() {
        super.viewDidLoad()


        // Do any additional setup after loading the view.
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
