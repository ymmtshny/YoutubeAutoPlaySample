//
//  ViewController.swift
//  YoutubeAutoPlaySample
//
//  Created by Shinya Yamamoto on 2017/12/07.
//  Copyright © 2017年 shinyayamamoto. All rights reserved.
//

import UIKit
import youtube_ios_player_helper

class ViewController: UIViewController,YTPlayerViewDelegate  {
    
    @IBOutlet weak var youtubeView: YTPlayerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //パラメーターはここ参照
        //https://developers.google.com/youtube/player_parameters
        let dict = ["modestbranding" : 0,
                    "controls" : 1,
                    "autoplay" : 1,
                    "playsinline" : 1,
                    "autohide" : 1,
                    "showinfo" : 0]
        youtubeView.load(withVideoId: "Y2KvBafvijE" ,playerVars: dict)
        youtubeView.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func playerViewDidBecomeReady(_ playerView: YTPlayerView) {
        playerView.playVideo()
    }

}

