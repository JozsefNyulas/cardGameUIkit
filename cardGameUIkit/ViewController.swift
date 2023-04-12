//
//  ViewController.swift
//  cardGameUIkit
//
//  Created by Nyulas Jozsef on 10.02.2023.
//

import UIKit

class ViewController: UIViewController
{
    var counter = 0
    var playerScore = 0
    var cpuScore = 0
    
    @IBOutlet weak var imgViewLeft: UIImageView!
    
    @IBOutlet weak var ingViewRight: UIImageView!
    
    @IBOutlet weak var labelPlayerScore: UILabel!
    
    @IBOutlet weak var labelCpuScore: UILabel!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func dealBtnTapped(_ sender: Any)
    {
        let playerNr = Int.random(in: 2...14)
        let cpuNr = Int.random(in: 2...14)
    
        imgViewLeft.image = UIImage(named: "card\(playerNr)")
        ingViewRight.image = UIImage(named: "card\(cpuNr)")
        
        if playerNr > cpuNr
        {
            playerScore += 1
        }
        else if playerNr < cpuNr
        {
            cpuScore += 1
        }
        else
        {
            playerScore += 1
            cpuScore += 1
        }
        labelPlayerScore.text = String(playerScore)
        labelCpuScore.text = String(cpuScore)
    }
    
}

