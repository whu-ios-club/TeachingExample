//
//  TestimonialViewController.swift
//  1
//
//  Created by 田逸昕 on 2019/4/7.
//  Copyright © 2019 Ezreal. All rights reserved.
//

import UIKit

class TestimonialViewController: UIViewController {

    @IBOutlet weak var testimonial: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        testimonial.delegate = self
        testimonial.dataSource = self
        // Do any additional setup after loading the view.
    }

}

extension TestimonialViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return testimonials.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "testimonialCell", for: indexPath) as! TestimonialCollectionViewCell
        let testimonial = testimonials[indexPath.row]
        cell.textLabel.text = testimonial["text"]
        cell.nameLabel.text = testimonial["name"]
        cell.jobLabel.text = testimonial["job"]
        cell.avatarImageView.image = UIImage(named: testimonial["avatar"]!)
        return cell
    }
    
    
}
