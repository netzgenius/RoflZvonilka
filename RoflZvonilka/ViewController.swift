//
//  ViewController.swift
//  RoflZvonilka
//
//  Created by Dasha Sharapova on 21/7/2022.
//

import UIKit
import Foundation


class ViewController: UIViewController {
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //SLIDER
        slider.minimumValue = 3800000000
        slider.maximumValue = 3809999999
        slider.minimumTrackTintColor = .yellow
        slider.minimumTrackTintColor = .blue
        slider.thumbTintColor = .gray
        //LABEL
        label.text = String(slider.value)
        
    }
//Label
    @IBAction func sliderAction(_ sender: UISlider) {
        label.text = String (Int((sender.value))) }
    //Button
    @IBAction func callButtonClicked(_ sender: UIButton) {
        if let url = URL(string: "tel://\(label.text!)"),
        UIApplication.shared.canOpenURL(url) {
        UIApplication.shared.open(url, options: [:], completionHandler: nil)
        }
    }
    
}

