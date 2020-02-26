//
//  CubesViewController.swift
//  homework_13
//
//  Created by Александра Лесничая on 2/26/20.
//  Copyright © 2020 Alexandra Lesnichaya. All rights reserved.
//

import UIKit

class CubesViewController: UIViewController {
    
    @IBOutlet weak var view1: UIView!
    @IBOutlet weak var view2: UIView!
    @IBOutlet weak var view3: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func viewDidTap(_ gestureRecognized: UITapGestureRecognizer) {
        
        let senderView = gestureRecognized.view!
        animateView(view: senderView)
    }
    
    func animateView(view: UIView) {
        var newY: CGFloat = 0
        if self.view.frame.size.height / 2 < view.frame.origin.y {
            newY = 26.0      // <- cube's Y-position when it goes up
        } else {
            newY = self.view.frame.size.height - view.frame.size.height - 26.0  // <- cube's Y-position when it goes down
        }
    
        
        UIView.animate(withDuration: 2.0, animations: {
                   view.frame.origin.y = newY
        })
    }
    
    
}
