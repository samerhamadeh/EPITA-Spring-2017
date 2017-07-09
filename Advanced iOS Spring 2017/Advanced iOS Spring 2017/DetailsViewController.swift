//
//  DetailsViewController.swift
//  Advanced iOS Spring 2017
//
//  Created by Emile Hoyek on 6/1/17.
//  Copyright © 2017 ___AdvancediOS___. All rights reserved.
//

import UIKit

class DetailsViewController: UIViewController {
    
    var getcity_name = String()
    var getcity_temp = Int()
    var getcity_image = UIImage()
    
    @IBOutlet weak var city_image: UIImageView!
    @IBOutlet weak var city_name: UILabel!
    @IBOutlet weak var city_temp: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        city_image.image = getcity_image
        city_name.text = getcity_name
        city_temp.text = String(getcity_temp)
        
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
