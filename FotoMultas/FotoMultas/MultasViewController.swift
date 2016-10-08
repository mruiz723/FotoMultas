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
    var tickets = [Ticket]()

//MARK: - LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        ticketTableView .registerNib(UINib (nibName: "TicketTableViewCell", bundle: nil), forCellReuseIdentifier: "ticketCell")
        tickets = Ticket.tickets()
        
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
        return tickets.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let ticket = tickets[indexPath.row]
        
        let cell = tableView.dequeueReusableCellWithIdentifier("ticketCell") as! TicketTableViewCell
        cell.nameLabel?.text = ticket.name
        cell.priceLabel?.text = ticket.price
        cell.ticketImageView?.image = UIImage(named: "fotoMulta.jpg")
        
        return cell
    }
    
    // MARK: - UITableViewDelegate
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        let ticket = tickets[indexPath.row]
        performSegueWithIdentifier("detail", sender: ticket)
        
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if let detailTicketVC = segue.destinationViewController as? DetailTicketViewController {
            
            detailTicketVC.ticket = sender as? Ticket
        }
        
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}
