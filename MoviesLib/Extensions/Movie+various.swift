//
//  Movie+various.swift
//  MoviesLib
//
//  Created by Leonardo Andrade Desiderio Tofoli on 14/03/22.
//

import Foundation
import UIKit

extension Movie {
    var ratingFormatted: String {
        "⭐️ \(rating)/10"
    }
    
    var poster: UIImage? {
        if let data = image {
            return UIImage(data: data)
        } else {
            return nil
        }
    }
}
