//
//  MovieTableViewCell.swift
//  MoviesLib
//
//  Created by Leonardo Andrade Desiderio Tofoli on 14/03/22.
//

import UIKit

class MovieTableViewCell: UITableViewCell {

    @IBOutlet private weak var imageViewPoster: UIImageView!
    @IBOutlet private weak var labelTitle: UILabel!
    @IBOutlet private weak var labelSummary: UILabel!
    @IBOutlet private weak var labelRating: UILabel!
    
    func configure(with movie: Movie) {
        labelTitle.text = movie.title
        labelRating.text = movie.ratingFormatted
        labelSummary.text = movie.summary
        imageViewPoster.image = movie.poster
    }

}
