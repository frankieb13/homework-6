//
//  ViewController.swift
//  homework 6
//
//  Created by Frank Bonura on 4/6/20.
//  Copyright © 2020 Frank Bonura. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    
    @IBOutlet weak var upVoteCounter: UILabel!
    @IBOutlet weak var downVotecounter: UILabel!
    @IBOutlet weak var winner: UILabel!
    
    
    
    override func viewWillAppear(_ animated: Bool){
        
        upVoteCounter.text = String((parent as!
            TBViewController).yesVote)
        
        downVotecounter.text = String((parent as!
            TBViewController).noVote)
        
        if (parent as! TBViewController).yesVote > (parent as! TBViewController).noVote
        {
            winner.text = "Yes!"
        } else {
            winner.text = "No!"
        }
    }
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Do not load counts here because this only
        //loads once and not evertime we view
        
        // Do any additional setup after loading the view.
    }


}

