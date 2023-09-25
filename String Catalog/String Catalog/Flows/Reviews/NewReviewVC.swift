//
//  NewReviewVC.swift
//  String Catalog
//
//  Created by Евгений Лойко on 25.09.23.
//

import UIKit

class NewReviewVC: UIViewController {

    var index: Int!

    @IBOutlet weak var reviewTV: UITextView!
    @IBOutlet weak var errorLbl: UILabel!
    @IBOutlet weak var saveReviewBtn: UIButton!    
    @IBOutlet weak var stackView: UIStackView!
    @IBOutlet weak var segmentedControl: UISegmentedControl!

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        updateUI(with: view.bounds.size)
    }
    
    @IBAction func saveAction() {
        let review = Feedback.init(text: reviewTV.text, mark: segmentedControl.selectedSegmentIndex + 1)
        StringsData.shared.strings[index].feedBacks.append(review)
        navigationController?.popToRootViewController(animated: true)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        reviewTV.resignFirstResponder()
        if reviewTV.text.count < 20 {
            errorLbl.isHidden = false
            saveReviewBtn.isEnabled = false
        } else {
            errorLbl.isHidden = true
            saveReviewBtn.isEnabled = true
        }
    }
    
    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        updateUI(with: size)
    }
    
    private func setupUI() {
        reviewTV.layer.cornerRadius = 10
        reviewTV.contentInset = UIEdgeInsets(top: 10, left: 10, bottom: 0, right: 0)
    }
    
    private func updateUI(with size: CGSize) {
        let isVertical = size.width < size.height
        stackView.axis = isVertical ? .vertical : .horizontal
    }
}
