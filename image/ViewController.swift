//
//  ViewController.swift
//  image
//
//  Created by adhoc on 07/07/1437 AH.
//  Copyright © 1437 AH adhoc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var img: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func charger(sender: AnyObject) {
        
        let url=NSURL(string: "http://www.baymediasoft.com/wp-content/uploads/2014/09/appleswift.jpg")
        
        let task=NSURLSession.sharedSession().dataTaskWithURL(url!) { (data, response, url) in
            
            dispatch_async(dispatch_get_main_queue(), {
                    self.img.image=UIImage(data: data!)
            })
            
        }
        task.resume()
    }
    

}

