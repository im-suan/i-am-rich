//
//  ViewController.swift
//  egg-timer
//
//  Created by Nguyen Xuan on 1/25/20.
//  Copyright © 2020 Nguyen Xuan. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    let eggTimers = ["Soft": 5*60, "Medium": 7*60, "Hard": 12*60]
    var totalTime = 0
    var remainedTime = 0
    var time = Timer()
    var player: AVAudioPlayer!
    
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var countDownTimer: UILabel!
    
    @IBAction func hardnessSelected(_ sender: UIButton) {
        
        time.invalidate()
        progressBar.progress = 0.0
        
        totalTime = eggTimers[sender.currentTitle!]!
        remainedTime = totalTime
        countDownTimer.text = sender.currentTitle!
        time = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateTimer), userInfo: nil, repeats: true)
    }
    
    func playSound(){
        let url = Bundle.main.url(forResource: "alarm_sound", withExtension: "mp3")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
    }
    
    @objc func updateTimer(){
        if remainedTime > 0 {
            let completedPercent = Float(Float(totalTime - remainedTime)/Float(totalTime))
            progressBar.progress = completedPercent
            countDownTimer.text = "\(remainedTime)"
            
            remainedTime -= 1
        } else {
            time.invalidate()
            progressBar.progress = 1.0
            countDownTimer.text = "DONE!"
            playSound()
        }
    }
}

