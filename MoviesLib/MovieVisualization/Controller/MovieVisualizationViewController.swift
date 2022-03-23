//
//  MovieVisualizationViewController.swift
//  MoviesLib
//
//  Created by Leonardo Andrade Desiderio Tofoli on 09/03/22.
//

import UIKit


final class MovieVisualizationViewController: UIViewController {

    @IBOutlet weak var imageViewPoster: UIImageView!
    @IBOutlet weak var labelTitle: UILabel!
    @IBOutlet weak var labelCategories: UILabel!
    @IBOutlet weak var labelDuration: UILabel!
    @IBOutlet weak var labelRating: UILabel!
    @IBOutlet weak var textViewSummary: UITextView!
    
    var movie: Movie!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let movieFormViewController = segue.destination as? MovieFormViewController
        movieFormViewController?.movie = movie
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        if movie != nil {
            labelTitle.text = movie.title
            labelRating.text = movie.ratingFormatted
            //labelCategories.text = movie.categories
            labelDuration.text = movie.duration
            textViewSummary.text = movie.summary
            imageViewPoster.image = movie.poster
        }
    }
    
    @IBAction func play(_ sender: UIButton) {
        
    }
    

}
