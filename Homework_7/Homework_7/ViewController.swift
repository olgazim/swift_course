//
//  ViewController.swift
//  Homework_7
//
//  Created by Olga Zimina on 10/24/18.
//  Copyright © 2018 Olga Zimina. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textLabel: UILabel!
    @IBOutlet weak var colorChange: UIButton!
    
    var countOfTaps: Int!
    var textColors: [UIColor]!
    var backgroundColors: [UIColor]!
    
    override func awakeFromNib() {
        print("awakeFromNib")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("viewDidLoad")
        textLabel.text = "Hello there)"
        countOfTaps = 0
        textColors = [.red, .blue, .yellow, .black, .green]
        backgroundColors = [.orange, .white, .gray]
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("viewWillAppea")
        let textColor = textColors.randomElement()
        textLabel.textColor = textColor
        
        let backgroundColor = backgroundColors.randomElement()
        view.backgroundColor = backgroundColor
    }
    
    override func viewWillLayoutSubviews() {
        print("viewWillLayoutSubviews")
    }
    
    override func viewDidLayoutSubviews() {
        print("viewDidLayoutSubviews")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("viewDidAppear")
    }
    
    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        print("viewWillTransition")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("viewWillDisappear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("viewDidDisappear")
    }
    
    
    @IBAction func buttonTapped(_ sender: UIButton) {
        
        countOfTaps += 1
        var time: String = "times"
        
        if countOfTaps == 1 {
            time = "time"
        }
        textLabel.text = "Button was pressed \(String(countOfTaps)) \(time)"
        
    
        
        
    }
    
    

}

