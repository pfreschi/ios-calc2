//
//  ViewControllerHistory.swift
//  simple-calc
//
//  Created by Peter Freschi on 4/23/16.
//  Copyright © 2016 Peter Freschi. All rights reserved.
//

import UIKit

class ViewControllerHistory: UIViewController {

    var history = [String]()
    var visibleHistory = ""
    
    var scrollView: UIScrollView!

    @IBOutlet var hists: Array<UILabel>?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if (history.count >= 1) {
            for var i = history.count - 1; i >= 0; i -= 1 {
                hists![history.count - i - 1].text = "\(history.count - i) ) \(String(history[i]))"
            }
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject!) {
        if segue.identifier == "backHome"{
            let vc = segue.destinationViewController as! ViewController
            vc.history = self.history
        }
    }


}
