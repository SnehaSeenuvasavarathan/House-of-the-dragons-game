//
//  ViewController.swift
//  Exercise4_Seenuvasavarathan_Sneha
//
//  Created by Sneha Seenuvasavarathan on 9/18/22.
//

import UIKit

class ViewController: UIViewController {
    
    var player1Score = 0
    var player2Score = 0
    var dragons = ["Balerion", "Meraxes", "Sheepstealer", "Silverwing", "Meleyes", "Quicksilver", "Stormcloud", "Drogon", "Viserion"]
    @IBOutlet weak var dragon1: UIImageView!
    @IBOutlet weak var gragon2: UIImageView!
    @IBOutlet weak var resultText: UITextView!
    
    @IBAction func restart(_ sender: Any) {
        player1Score=0
        player2Score=0
        resultText.text = "Prepare for the battle!"
        dragon1.image = UIImage(named: "0_HOD_logo.jpg")
        gragon2.image = UIImage(named: "0_HOD_logo.jpg")
    }
    
    @IBAction func fight(_ sender: Any) {
        if player1Score != 3 && player2Score != 3{
        
        let dragonNum1 = Int.random(in: 1..<9)
        var dragonNum2 = Int.random(in: 1..<9)
        while dragonNum2 == dragonNum1
          {
            dragonNum2 = Int.random(in: 1..<9)
          }
        dragon1.image = UIImage(named: "\(dragonNum1).png")
        gragon2.image = UIImage(named: "\(dragonNum2 ).png")
        if dragonNum1<dragonNum2{
            player1Score+=1
            let winner = dragons[dragonNum1]
            resultText.text = "\(winner) is stronger.\nPlayer 1 wins the round!"
        }
        else{
            player2Score+=1
            let winner = dragons[dragonNum2]
            resultText.text = "\(winner) is stronger.\nPlayer 2 wins the round!"
        }
        if player1Score == 3{
            resultText.text = "Player 1 won! (\(player1Score)-\(player2Score)) .\nRestart the game."
        }
        else if player2Score == 3{
            resultText.text = "Player 2 won! (\(player1Score)-\(player2Score)) .\nRestart the game."
        }
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    override func viewDidDisappear(_ animated: Bool) {
        let startTab = self.tabBarController?.children[1] as! ScoreViewController
        startTab.score1 = player1Score
        startTab.score2 = player2Score
    }


}

