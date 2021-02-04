//
//  FavoriteTicket+CoreDataProperties.swift
//  AirlineTickets
//
//  Created by Roman Kolosov on 04.02.2021.
//
//

import Foundation
import CoreData


extension FavoriteTicket {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<FavoriteTicket> {
        return NSFetchRequest<FavoriteTicket>(entityName: "FavoriteTicket")
    }

    @NSManaged public var airline: String?
    @NSManaged public var created: Date?
    @NSManaged public var departure: Date?
    @NSManaged public var expires: Date?
    @NSManaged public var flightNumber: Int16
    @NSManaged public var from: String?
    @NSManaged public var price: Int64
    @NSManaged public var returnDate: Date?
    @NSManaged public var to: String?

}

extension FavoriteTicket : Identifiable {

}
