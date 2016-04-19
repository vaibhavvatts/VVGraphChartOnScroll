//
//  ViewController.swift
//  VVGraphChartOnScroll
//
//  Created by Appinventiv on 16/04/16.
//  Copyright © 2016 OpenSource. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    

    @IBOutlet weak var viewGraph: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        let fData = FakeData();
        let dictCollection:Dictionary = fData.generateGraphData(5);
        
        
        fData.loadHealthCareList { (indexes) -> NSInteger in
            
        };
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

