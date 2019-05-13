//
//  DetailViewController.swift
//  App
//
//  Created by Red Pill on 4/2/19.
//  Copyright © 2019 ideveloper. All rights reserved.
//

import UIKit
import SDWebImage

class DetailViewController: UIViewController, DetailViewProtocol {
    
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    var presenter: DetailPresenterProtocol!
    var index = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let swipeLeft = UISwipeGestureRecognizer(target: self, action: #selector(handleGesture))
        swipeLeft.direction = .left
        view.addGestureRecognizer(swipeLeft)

        setUpUI(with: presenter.index)
    }

    @objc func handleGesture(gesture: UISwipeGestureRecognizer) -> Void {
        index = index + 1
        setUpUI(with: presenter.index + index)
    }
}

private extension DetailViewController {
    
    func setUpUI(with indexPath: Int) {
        guard let currentComment = DataStore.shared.filterComments.getElement(at: indexPath) else { return }
        descriptionLabel.text = currentComment.title
            self.image.image = nil
        image.sd_setImage(with: URL(string: currentComment.img ))

    }
}

extension Array {
    func getElement(at index: Int) -> Element? {
        let isValidIndex = index >= 0 && index < count
        return isValidIndex ? self[index] : nil
    }
}

