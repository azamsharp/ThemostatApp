//
//  ViewController.swift
//  ThemostatApp
//
//  Created by Mohammad Azam on 9/12/16.
//  Copyright © 2016 Mohammad Azam. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var temperatureLabel :UILabel!
    
    var currentTemperature = 72
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func downButtonPressed() {
        
        currentTemperature -= 1
        
        temperatureLabel.text = "\(currentTemperature)"
    }
    
    @IBAction func upButtonPressed() {
        
        currentTemperature += 1
        
        temperatureLabel.text = "\(currentTemperature)"
        
    }
    
    @IBAction func sliderValueChanged(slider :UISlider) {
        
        let temperature = String(format: "%.0f", slider.value)
        temperatureLabel.text = "\(temperature)"
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

