//
//  ChaptersViewController.swift
//  1
//
//  Created by 田逸昕 on 2019/4/19.
//  Copyright © 2019 Ezreal. All rights reserved.
//

import UIKit

class ChaptersViewController: UIViewController {

    @IBOutlet weak var chapter1CollectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        chapter1CollectionView.delegate = self
        chapter1CollectionView.dataSource = self
    }
    
}

extension ChaptersViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return sections.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "sectionCell", for: indexPath) as! SectionCollectionViewCell
        let section = sections[indexPath.row]
        cell.titleLabel.text = section["title"]
        cell.captionLabel.text = section["caption"]
        cell.coverImageView.image = UIImage(named: section["image"]!)
        return cell
    }
}
