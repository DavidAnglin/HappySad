//
//  HappySadViewController.swift
//  HappySad
//
//  Created by David Anglin on 2/23/16.
//  Copyright © 2016 David Anglin. All rights reserved.
//

import UIKit

class HappySadViewController: UIViewController, ExpressionViewDataSource
{
    
    @IBOutlet weak var expressionView: ExpressionView! {
        didSet {
            expressionView.dataSource = self
        }
    }
    
    var happySad: Int = 100 { // 0 = very sad, 100 = ecstatic
        didSet {
            happySad = min(max(happySad, 0), 100)
            print("happy = \(happySad)")
            updateUI()
        }
        
    }
   
        
    func updateUI() {
        expressionView.setNeedsDisplay()
    }
    
    func smilinessForExpressionView(sender: ExpressionView) -> Double? {
        return Double(happySad - 50) / 50
    }

}
