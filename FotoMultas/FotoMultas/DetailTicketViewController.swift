//
//  DetailTicketViewController.swift
//  FotoMultas
//
//  Created by S209e19 on 7/10/16.
//  Copyright © 2016 UdeM. All rights reserved.
//

import UIKit

class DetailTicketViewController: UIViewController {

    //MARK: - IBOutlets
    @IBOutlet weak var ticketImage: UIImageView!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var descriptionTextView: UITextView!
    @IBOutlet weak var priceLabel: UILabel!
    
    //MARK: - Properties
    var ticket:Ticket?
    
    //MARK: - LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        if ticket != nil {
            ticketImage.image = UIImage(named: "fotoMulta.jpg")
            dateLabel.text = ticket?.date
            descriptionTextView.text = ticket?.descriptionTicket
            priceLabel.text = ticket?.price
        }
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

}
