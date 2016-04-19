//
//  FakeData.swift
//  VVGraphChartOnScroll
//
//  Created by Appinventiv on 16/04/16.
//  Copyright © 2016 OpenSource. All rights reserved.
//

import UIKit

class FakeData: NSObject {
    
    let graphData:NSInteger = 10000;
    
    internal func generateGraphData(var totalGraphs:NSInteger)-> Dictionary <String, Array<NSInteger>>
    {
        if totalGraphs > 5 || totalGraphs < 1
        {
            totalGraphs = 1;
        }
        
        var dictCollection =	[String : Array<NSInteger>]();

        for var i = 0; i <= totalGraphs; ++i {
            let key:String = "key " + String(i);
                dictCollection[key] = self.oneGraphData();
        }
        return dictCollection;
        
    }
    
    private func oneGraphData()-> Array<NSInteger>
    {
        var arrGraphItems = [NSInteger]();
        for var j = 0; j < graphData; j++ {
            let randomNumber:NSInteger = Int(arc4random_uniform(10000))
            arrGraphItems.append(randomNumber);
        }
        return arrGraphItems;
    }
    
    
    typealias CompletionHandler = (success:Bool) -> Int
    
    internal func downloadFileFromURL(url: NSURL,completionHandler: CompletionHandler) {
        
        // download code.
        
        let flag = true // true if download succeed,false otherwise
        
        dispatch_async(dispatch_get_global_queue(QOS_CLASS_BACKGROUND, 0)) { () -> Void in
            completionHandler(success: flag);
        };
    }
    
    typealias handler = (indexes : Bool) -> NSInteger;
    
    internal func loadHealthCareList(completionClosure: handler) {
        //some code here
        completionClosure(indexes: false)
    }
    


}
