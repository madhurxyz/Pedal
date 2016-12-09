//
//  Checkup+CoreDataProperties.swift
//  
//
//  Created by Nabil K on 2016-12-09.
//
//

import Foundation
import CoreData


extension Checkup {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Checkup> {
        return NSFetchRequest<Checkup>(entityName: "Checkup");
    }

    @NSManaged public var date: NSDate?
    @NSManaged public var relationship: NSManagedObject?

}
