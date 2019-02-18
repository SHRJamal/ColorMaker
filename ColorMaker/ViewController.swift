//
//  ViewController.swift
//  ColorMaker
//
//  Created by Jason Schatz on 11/2/14.
//  Copyright (c) 2014 Udacity. All rights reserved.
//

import UIKit

// MARK: - ViewController: UIViewController

class ViewController: UIViewController {
    
    // MARK: Outlets
    
    @IBOutlet weak var colorView: UIView!
    @IBOutlet weak var redControl: UISlider!
    @IBOutlet weak var greenControl: UISlider!
    @IBOutlet weak var blueControl: UISlider!
    @IBOutlet weak var alphaCOntrol: UISlider!

    // MARK: Life Cycle
    var alphaValue: CGFloat = 1
    override func viewDidLoad() {
        super.viewDidLoad()
        sliderValueChanged(redControl)
    }
    
    
    @IBAction func sliderValueChanged(_ sender: UISlider) {
        
        
        let r: CGFloat = CGFloat(redControl.value)
        let g: CGFloat = CGFloat(greenControl.value)
        let b: CGFloat = CGFloat(blueControl.value)
        let alphaValue = CGFloat(alphaCOntrol.value)
        
        print(r)
        
        print(g)
        
        print(b)
        
        print(alphaValue)
        colorView.backgroundColor = UIColor(red: r, green: g, blue: b, alpha: alphaValue)
        
    }
    
}

