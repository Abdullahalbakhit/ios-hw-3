//
//  ViewController.swift
//  BMI
//
//  Created by Abdullah Albakeet on 9/24/20.
//  Copyright © 2020 Abdullah Albakeet. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var heightFiled: UITextField!
    @IBOutlet weak var weightFiled: UITextField!
    @IBOutlet weak var totalLeb: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func BMI(l: Double, w: Double) -> Double
    {
       return w / (l * l)
    }
    
    func totalLeb (BMI: Double) -> String {
    
        if BMI <= 18.5{
        return "ضعيف"
            
        }
        else if BMI >= 30.0{
        return "سمين"
      }
        else{
         return "راجع نفسك"
      }
   }
}



// @IBAction func Choose(_ sender: Any) {
//        showActivity.text = favActivity.randomElement()
//     }
//  }
// func BMI(l: Double, w: Double) -> Double{
 //   return w / (l * l)

//}
//func BMIStates(BMI: Double) -> String{
// if BMI <= 18.5{
//    return "ضعيف"
//  } else if BMI >= 30.0{
//    return "وزن طبيعي"
//  }else{
//     return "سمنه مفرطه"
//   }
// }
