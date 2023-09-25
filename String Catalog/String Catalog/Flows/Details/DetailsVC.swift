//
//  DetailsVC.swift
//  String Catalog
//
//  Created by Евгений Лойко on 24.09.23.
//

import UIKit

class DetailsVC: UIViewController {
    
    var index: Int!
    
    var strings: ViolinString {
        StringsData.shared.strings[index]
    }

    @IBOutlet weak var stackView: UIStackView!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var stringsNameLbl: UILabel!
    @IBOutlet weak var stringsPriceLbl: UILabel!
    @IBOutlet weak var stringsRatingLbl: UILabel!
    @IBOutlet weak var showReviewsBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        updateUI(with: view.bounds.size)
    }
    
    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        updateUI(with: size)
    }

    private func setupUI() {
        imageView.image = strings.image
        imageView.layer.cornerRadius = 10
        stringsNameLbl.text = strings.name
        stringsPriceLbl.text = strings.price.description + " BYN"
        stringsRatingLbl.text = strings.rating
        showReviewsBtn.setTitle("View (\(strings.feedBacks.count)) reviews", for: .normal)
        showReviewsBtn.isEnabled = strings.feedBacks.count != 0
    }
    
    private func updateUI(with size: CGSize) {
        let isVertical = size.width < size.height
        stackView.axis = isVertical ? .vertical : .horizontal
    }

    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let vc = segue.destination as? NewReviewVC {
            vc.index = self.index
        } else if let vc2 = segue.destination as? AllReviewsTVC {
            vc2.index = self.index
        }
    }
}
