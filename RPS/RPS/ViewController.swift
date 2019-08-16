//
//  ViewController.swift
//  RPS
//
//  Created by Filipe Malachias Resende on 2019-08-15.
//  Copyright © 2019 Malachias. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var appSign: UILabel!
    
    @IBOutlet var Status: UILabel!
    
    @IBOutlet var rock: UIButton!
    
    @IBOutlet var paper: UIButton!
    
    @IBOutlet var scissor: UIButton!
    
    @IBOutlet var playAgain: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    var currentAppSignIndex = randomSign()
    
    @IBAction func rock(_ sender: UIButton)
    {
        rock.isEnabled = false
        paper.isHidden = true
        scissor.isHidden = true
        appSign.text = "\(currentAppSignIndex)"
        if (appSign.text == "Rock(\"👊\")")
        {
            appSign.text = "👊"
            Status.text = "Draw"
            view.backgroundColor = .blue
        } else if (appSign.text == "Paper(\"✋🏿\")")
        {
            appSign.text = "✋🏿"
            Status.text = "You Lost"
            view.backgroundColor = .red
        } else if (appSign.text == "Scissor(\"✌🏻\")")
        {
            appSign.text = "✌🏻"
            Status.text = "You Won"
            view.backgroundColor = .green
        }
        
    }
    
    @IBAction func paper(_ sender: UIButton)
    {
        Status.text = "You chose paper"
        paper.isEnabled = false
        scissor.isHidden = true
        rock.isHidden = true
        appSign.text = "\(currentAppSignIndex)"
        if (appSign.text == "Paper(\"✋🏿\")")
        {
            appSign.text = "✋🏿"
            Status.text = "Draw"
            view.backgroundColor = .blue
        } else if (appSign.text == "Scissor(\"✌🏻\")")
        {
            appSign.text = "✌🏻"
            Status.text = "You Lost"
            view.backgroundColor = .red
        } else if (appSign.text == "Rock(\"👊\")")
        {
            appSign.text = "👊"
            Status.text = "You Won"
            view.backgroundColor = .green
        }
        
        
    }
    
    @IBAction func scissor(_ sender: UIButton)
    {
        Status.text = "You chose Scissor"
        scissor.isEnabled = false
        paper.isHidden = true
        rock.isHidden = true
        appSign.text = "\(currentAppSignIndex)"
        if (appSign.text == "Scissor(\"✌🏻\")")
        {
            appSign.text = "✌🏻"
            Status.text = "Draw"
            view.backgroundColor = .blue
        } else if (appSign.text == "Rock(\"👊\")")
        {
            appSign.text = "👊"
            Status.text = "You Lost"
            view.backgroundColor = .red
        } else if (appSign.text == "Paper(\"✋🏿\")")
        {
            appSign.text = "✋🏿"
            Status.text = "You Won"
            view.backgroundColor = .green
        }
        
    }
    
    fileprivate func updateUI()
    {
        Status.text = "Rock, Paper, Scissor?"
        appSign.text = "🤖"
        rock.isHidden = false
        paper.isHidden = false
        scissor.isHidden = false
        rock.isEnabled = true
        paper.isEnabled = true
        scissor.isEnabled = true
        currentAppSignIndex =  randomSign()
        view.backgroundColor = .white
    }
    
    
    @IBAction func playAgain(_ sender: UIButton)
    {
        updateUI()
    }
}

