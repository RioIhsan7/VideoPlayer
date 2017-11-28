//
//  ViewController.swift
//  Video Player
//
//  Created by Rio_Ihsan on 9/26/17.
//  Copyright © 2017 mac os. All rights reserved.
//

import UIKit
import  AVKit
import AVFoundation

class ViewController: UIViewController {

    var PlayerViewController = AVPlayerViewController()
    var PlayerView = AVPlayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        // Put Your Video from your file in here >>>> and dont forget to put in this Project
        let fileURL = NSURL(fileURLWithPath: "") // <<< Put your Project link in here ""
        PlayerView = AVPlayer(url: fileURL as URL)
        PlayerViewController.player = PlayerView
        
        self.present(PlayerViewController, animated: true) {
            self.PlayerViewController.player?.play()
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

