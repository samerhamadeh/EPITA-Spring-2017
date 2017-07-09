//
//  AddViewController.swift
//  Advanced iOS Spring 2017
//
//  Created by Emile Hoyek on 6/1/17.
//  Copyright © 2017 ___AdvancediOS___. All rights reserved.
//

import UIKit
import os.log

class AddViewController: UIViewController {

    var weather : Weather?
    
    @IBOutlet weak var city_name: UITextField!
    @IBOutlet weak var city_temp: UITextField!
    @IBOutlet weak var saveButton: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func cancelAdd(_ sender: Any) {
        //add in completion what we want to show the user when he presses cancel
        dismiss(animated: true, completion: nil)
    }

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        guard let button = sender as? UIBarButtonItem, button === saveButton else {
            os_log("Save Button Not Pressed", log: OSLog.default, type: .debug)
            return
        }
        
        let city = city_name.text
        let temp = city_temp.text
        
        
            
        let image = UIImage(named: "image\(arc4random_uniform(3) + 1).png")
        
        
        weather = Weather(city: city!, temperature: Int(temp!)!, picture: image)
        
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
