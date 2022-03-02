//
//  ViewController.swift
//  HelloWorldApp
//
//  Created by Almas Selbayev on 01.03.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var greetingLabel: UILabel!
    @IBOutlet var greetingButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        greetingLabel.isHidden = true
        greetingButton.configuration = setupButton(with: "Show Greeting")
        //greetingButton.layer.cornerRadius = 10
    }

    /*
    @IBAction func greetingButtonPressed() {
        greetingLabel.isHidden.toggle()
        greetingButton.setTitle(
            greetingLabel.isHidden ? "Show Greeting" : "Hide Greeting",
            for: .normal
        )
    }
    */
    @IBAction func greetingButtonPressed() {
        greetingLabel.isHidden.toggle()
        greetingButton.configuration = setupButton(
            with: greetingLabel.isHidden ? "Show Greeting" : "Hide Greeting")
    }
    
    private func setupButton(with title: String) -> UIButton.Configuration {
        var buttonConfiguration = UIButton.Configuration.filled()
        buttonConfiguration.baseBackgroundColor = #colorLiteral(red: 1, green: 0.02739950456, blue: 0.3375478089, alpha: 1)
        buttonConfiguration.title =  title
        buttonConfiguration.buttonSize = .large
        buttonConfiguration.attributedTitle?.font = UIFont.systemFont(ofSize: 24)
        buttonConfiguration.cornerStyle = .large
        
        return buttonConfiguration
    }
}

