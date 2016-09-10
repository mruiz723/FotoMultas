//
//  Ticket.swift
//  FotoMultas
//
//  Created by S209e19 on 9/09/16.
//  Copyright © 2016 UdeM. All rights reserved.
//

import Foundation

class Ticket{
    
    //Mark: - Properties
    var name:String
    var date:String
    var plate:String
    var price:String
    var descriptionTicket:String
    
    //designated
    init(name:String, date:String, plate:String, price:String, descriptionTicket:String) {
        
        self.name = name
        self.date = date
        self.plate = plate
        self.price = price
        self.descriptionTicket = descriptionTicket
        
    }
    
    //convenience
    convenience init() {
        self.init(name:"", date: "", plate: "", price: "", descriptionTicket: "")
    }
    
    
    
    static func tickets() -> [Ticket] {
        
        let dicTickets = [
            ["name":"semaforo en rojo", "date" : "15/05/2015", "plate": "KJU623", "price": "675.000", "descriptionTicket": "Se pasa semaforo en rojo"],
            ["name":"contravia", "date" : "15/05/2000", "plate": "KJU623", "price": "675.000", "descriptionTicket": "Se pasa semaforo en rojo"],
            ["name":"Mal parqueado", "date" : "15/05/2002", "plate": "KJU623", "price": "675.000", "descriptionTicket": "Se pasa semaforo en rojo"],
            ["name":"Giro prohibido", "date" : "15/05/2011", "plate": "KJU623", "price": "675.000", "descriptionTicket": "Se pasa semaforo en rojo"],
            ["name":"semaforo en rojo", "date" : "15/05/2013", "plate": "KJU623", "price": "675.000", "descriptionTicket": "Se pasa semaforo en rojo"]
                            ]
        
        var tickets = [Ticket]()
        
        for item in dicTickets {
            
            let ticket = Ticket(name: item["name"]!, date: item["date"]!, plate: item["plate"]!, price: item["price"]!, descriptionTicket: item["descriptionTicket"]!)
            
            tickets.append(ticket)
            
        }
        return tickets
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}
