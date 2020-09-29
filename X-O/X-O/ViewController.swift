//
//  ViewController.swift
//  X-O
//
//  Created by Abdullah Albakeet on 9/28/20.
//  Copyright © 2020 Abdullah Albakeet. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var turnelabel1: UILabel!
    @IBOutlet weak var b1: UIButton!
    @IBOutlet weak var b2: UIButton!
    @IBOutlet weak var b3: UIButton!
    @IBOutlet weak var b4: UIButton!
    @IBOutlet weak var b5: UIButton!
    @IBOutlet weak var b6: UIButton!
    @IBOutlet weak var b7: UIButton!
    @IBOutlet weak var b8: UIButton!
    @IBOutlet weak var b9: UIButton!

     var counter = 0
    
    @IBAction func reset(_ sender: Any) {
                 restartGame()
           }
    
    override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup
    // after loding the view.
        
    }
    
    @IBAction func click(_ sender: UIButton) {
        
        print(counter)
        
        if counter % 2 == 0 {
        sender.setTitle("X", for: .normal)
            turnelabel1.text = "O turn"
            sender.setTitleColor(.red, for: .normal)
        }
        else{
            sender.setTitle("O", for: .normal)
            turnelabel1.text = "X turn"
            sender.setTitleColor(.blue, for: .normal)
            }
         checkWinner(win: "O")
        checkWinner(win: "X")
        
        
        sender.isEnabled = false
     
        counter += 1
        print(counter)
    }
    
    @IBAction func resetTapped() {
        restartGame()
    }
    
    
    func checkWinner(win: String){
        let r1 = (b1.titleLabel?.text, b2.titleLabel?.text, b3.titleLabel?.text) == (win, win, win)
        let r2 = (b4.titleLabel?.text, b5.titleLabel?.text, b6.titleLabel?.text) == (win, win, win)
        let r3 = (b7.titleLabel?.text, b8.titleLabel?.text, b9.titleLabel?.text) == (win, win, win)
        let c1 = (b1.titleLabel?.text, b4.titleLabel?.text, b7.titleLabel?.text) == (win, win, win)
        let c2 = (b2.titleLabel?.text, b5.titleLabel?.text, b8.titleLabel?.text) == (win, win, win)
        let c3 = (b3.titleLabel?.text, b6.titleLabel?.text, b9.titleLabel?.text) == (win, win, win)
        let d1 = (b1.titleLabel?.text, b5.titleLabel?.text, b9.titleLabel?.text) == (win, win, win)
        let d2 = (b3.titleLabel?.text, b5.titleLabel?.text, b7.titleLabel?.text) == (win, win, win)
        
        if r1 || r2 || r3 || c1 || c2 || c3 || d1 || d2 {
            alertwinner(winner: win)
        }
    }
        func alertwinner(winner: String) {
            let alertController = UIAlertController(title: "\(winner) wins", message: "Tap restart to restart thr game", preferredStyle: .alert)
            let action = UIAlertAction(title: "restart", style: .cancel) { (alert) in
                self.restartGame()
            }
            alertController.addAction(action)
            self.present(alertController, animated: true, completion: nil)
     }

    func restartGame() {
        b1.setTitle("", for: .normal)
        b1.titleLabel?.text = ""
        b1.isEnabled = true
        
        b2.setTitle("", for: .normal)
        b2.titleLabel?.text = ""
        b2.isEnabled = true
        
        b3.setTitle("", for: .normal)
        b3.titleLabel?.text = ""
        b3.isEnabled = true
        
        b4.setTitle("", for: .normal)
        b4.titleLabel?.text = ""
        b4.isEnabled = true
        
        b5.setTitle("", for: .normal)
        b5.titleLabel?.text = ""
        b5.isEnabled = true
        
        b6.setTitle("", for: .normal)
        b6.titleLabel?.text = ""
        b6.isEnabled = true
        
        b7.setTitle("", for: .normal)
        b7.titleLabel?.text = ""
        b7.isEnabled = true
        
        b8.setTitle("", for: .normal)
        b8.titleLabel?.text = ""
        b8.isEnabled = true
        
        b9.setTitle("", for: .normal)
        b9.titleLabel?.text = ""
        b9.isEnabled = true
        
        counter = 0
        turnelabel1.text = "X turn"
    }
    
}
