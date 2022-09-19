//
//  ScoreViewController.swift
//  Exercise4_Seenuvasavarathan_Sneha
//
//  Created by Sneha Seenuvasavarathan on 9/18/22.
//

import UIKit

class ScoreViewController: UIViewController {
    
    var score1 = 0
    var score2 = 0
    
    @IBOutlet weak var player11: UIImageView!
    @IBOutlet weak var player12: UIImageView!
    @IBOutlet weak var player13: UIImageView!
    @IBOutlet weak var player21: UIImageView!
    @IBOutlet weak var player22: UIImageView!
    @IBOutlet weak var player23: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Do any additional setup after loading the view.
    }
   
    override func viewDidAppear(_ animated: Bool) {
        if score1==0{
            player11.image = UIImage(named: "hod-transperant.jpg")
            player12.image = UIImage(named: "hod-transperant.jpg")
            player13.image = UIImage(named: "hod-transperant.jpg")
        }
        if score1==1{
        player11.image = UIImage(named: "0_HOD_logo.jpg")
        }
        if score1==2{
            player11.image = UIImage(named: "0_HOD_logo.jpg")
            player12.image = UIImage(named: "0_HOD_logo.jpg")
        }
        if score1==3{
            player11.image = UIImage(named: "0_HOD_logo.jpg")
            player12.image = UIImage(named: "0_HOD_logo.jpg")
            player13.image = UIImage(named: "0_HOD_logo.jpg")
        }
        if score2==0{
            player21.image = UIImage(named: "hod-transperant.jpg")
            player22.image = UIImage(named: "hod-transperant.jpg")
            player23.image = UIImage(named: "hod-transperant.jpg")
        }
        if score2==1{
        player21.image = UIImage(named: "0_HOD_logo.jpg")
        }
        if score2==2{
            player21.image = UIImage(named: "0_HOD_logo.jpg")
            player22.image = UIImage(named: "0_HOD_logo.jpg")
        }
        if score2==3{
            player21.image = UIImage(named: "0_HOD_logo.jpg")
            player22.image = UIImage(named: "0_HOD_logo.jpg")
            player23.image = UIImage(named: "0_HOD_logo.jpg")
        }
        
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
