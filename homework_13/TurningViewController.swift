//
//  ViewController.swift
//  homework_13
//
//  Created by Александра Лесничая on 2/25/20.
//  Copyright © 2020 Alexandra Lesnichaya. All rights reserved.
//

import UIKit

class TurningViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    var sumAngle: CGFloat = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.image = UIImage(named: "lion")
    }
    
    @IBAction func leftButtonDidClick(_ sender: Any) {
        sumAngle += -.pi / 2
        UIImage.animatedImageNamed("lion", duration: 0.5)
        self.imageView.transform = CGAffineTransform(rotationAngle: self.sumAngle)
    }
    
    @IBAction func rightButtonDidClick(_ sender: Any) {
        sumAngle += .pi / 2
        UIImage.animatedImageNamed("lion", duration: 0.5)
        self.imageView.transform = CGAffineTransform(rotationAngle: self.sumAngle)
    }
    
    
}

