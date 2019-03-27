//
//  HomeViewController.swift
//  1
//
//  Created by Ezreal on 2019/3/24.
//  Copyright © 2019年 Ezreal. All rights reserved.
//

import UIKit
import AVKit

class HomeViewController: UIViewController {

    
    @IBOutlet weak var visualEffectView: UIVisualEffectView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        visualEffectView.layer.cornerRadius = 25
    }

    @IBAction func playButtonTapped(_ sender: Any) {
        let urlString = "https://media.w3.org/2010/05/sintel/trailer.mp4"
        let url = URL(string: urlString)
        let player = AVPlayer(url: url!)
        let playerController = AVPlayerViewController()
        playerController.player = player
        present(playerController, animated: true) {
            player.play()
        }
    }
}
