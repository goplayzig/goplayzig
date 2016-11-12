//
//  ViewController.swift
//  rockpaperscissors
//
//  Created by 이동인 on 2016. 11. 9..
//  Copyright © 2016년 myname. All rights reserved.
//

import UIKit
import GameplayKit

class ViewController: UIViewController {
    let randomSource = GKARC4RandomSource()
    
    @IBOutlet weak var playerImageView: UIImageView!
    @IBOutlet weak var computerImageView: UIImageView!
    @IBOutlet weak var messageLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let angle:CGFloat = CGFloat((180.0 * M_PI) / 180.0)
        
        computerImageView.transform = CGAffineTransform(rotationAngle : angle)
    }
    
    
    
    
    @IBAction func tabStart() {
        
        computerImageView.image = UIImage(named: "rock.png")
        playerImageView.image = UIImage(named: "rock.png")
        messageLabel.text = "가위 바위 ..."
    }
    
    @IBAction func tapScissors() {
        playerImageView.image = UIImage(named:"siccors.png")
    }
    @IBAction func tapPaper() {
        playerImageView.image = UIImage(named:"paper.png")
        
    }
    
    @IBAction func tabRock() {
        playerImageView.image = UIImage(named : "rock.png")
    }

    func doComputer() {
        
        let computer = randomSource.nextInt(upperBound:3)
        switch computer {
        case 0 :
            
            computerImageView.image = UIImage(named:"siccors.png")
            
        case 1 :
            computerImageView.image = UIImage(named: "rock.png")
            
        case 2 :
            computerImageView.image = UIImage(named: "paper.png")
            
        default:
            break
        }
        
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }




}
