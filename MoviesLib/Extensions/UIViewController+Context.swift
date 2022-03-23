//
//  UIViewController+Context.swift
//  MoviesLib
//
//  Created by Leonardo Andrade Desiderio Tofoli on 21/03/22.
//

import UIKit
import CoreData

extension UIViewController {
    var context: NSManagedObjectContext {
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        return appDelegate.persistenContainer.viewContext
    }
}

