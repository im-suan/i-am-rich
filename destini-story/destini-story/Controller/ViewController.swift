//
//  ViewController.swift
//  destini-story
//
//  Created by Nguyen Xuan on 1/25/20.
//  Copyright © 2020 Nguyen Xuan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    var storyBrain = StoryBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    @IBAction func choiceMade(_ sender: UIButton) {
        storyBrain.nextStory(sender.currentTitle!)
        updateUI()
    }
    
    func updateUI() {
        storyLabel.text = storyBrain.getStoryTitle()
    choice1Button.setTitle(storyBrain.getChoice1(), for: .normal)
    choice2Button.setTitle(storyBrain.getChoice2(), for: .normal)
    }
}

