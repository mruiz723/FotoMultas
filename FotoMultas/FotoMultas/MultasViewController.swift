//
//  MultasViewController.swift
//  FotoMultas
//
//  Created by S209e19 on 26/08/16.
//  Copyright © 2016 UdeM. All rights reserved.
//

import UIKit

class MultasViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
//MARK: - Properties
    
    @IBOutlet weak var ticketTableView: UITableView!

//MARK: - LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

    // MARK: - UITableViewDataSource
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("cell")
        cell?.textLabel?.text = "lo que sea"
        
        return cell!
    }
    
    
    
    
    
    
    
    
    
    
    
    
}