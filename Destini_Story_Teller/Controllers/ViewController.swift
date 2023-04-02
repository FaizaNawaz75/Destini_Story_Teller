//
//  ViewController.swift
//  Destini_Story_Teller
//
//  Created by Faiza Nawaz on 02/04/2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lb_Story: UILabel!
    @IBOutlet weak var bt_choiceTwo: UIButton!
    @IBOutlet weak var bt_choiceOne: UIButton!
    
    lazy var storyModel: StoryModel = StoryModel.init()
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        loadUI()
    }

    //MARK: - Utility Methods
    
    func loadUI() {
     
        let story = storyModel.getStory()
        lb_Story.text = story.title
        bt_choiceOne.setTitle(story.choice1, for: .normal)
        bt_choiceTwo.setTitle(story.choice2, for: .normal)
    }
    
    //MARK: - Action methods
    @IBAction func choiceMade(_ sender: UIButton) {
        
        var choiceMade = "choiceOne"
        if (sender == bt_choiceTwo) {
            choiceMade = "choiceTwo"
        }
        
        storyModel.nextStory(choiceMade: choiceMade)
        loadUI()
    }
    
}

