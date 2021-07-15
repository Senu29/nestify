//
//  MainViewController.swift
//  nestify
//
//  Created by Senuda Ratnayake on 7/15/21.
//

import UIKit

class MainViewController: UIViewController {

    @IBOutlet weak var numberBulb: UILabel!
    @IBOutlet weak var decreaseBulb: UIButton!
    @IBOutlet weak var increaseBulb: UIButton!
    
    var lightNum: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //gradientBackground()
        buttonDesign()

        // Do any additional setup after loading the view.
    }
    
    func gradientBackground(){
        let gradientLayer =  CAGradientLayer()
        gradientLayer.frame = view.bounds
        gradientLayer.colors = [UIColor.systemGray.cgColor, UIColor.systemGreen.cgColor, UIColor.white.cgColor]
        gradientLayer.cornerRadius = 120
        view.layer.insertSublayer(gradientLayer, at: 0)
    }
    
    func buttonDesign(){
        increaseBulb.layer.cornerRadius = increaseBulb.frame.size.width/10
        increaseBulb.layer.borderWidth = 2
        increaseBulb.layer.borderColor = UIColor.darkGray.cgColor
        
        decreaseBulb.layer.cornerRadius = decreaseBulb.frame.size.width/10
        decreaseBulb.layer.borderWidth = 2
        decreaseBulb.layer.borderColor = UIColor.darkGray.cgColor
    }
    
    @IBAction func addBulb(_ sender: UIButton) {
        if lightNum < 5{
            print(lightNum, "pressed sub")
            lightNum += 1
            numberBulb.text = String(lightNum)
        }
        
    }
    
    @IBAction func subBulb(_ sender: UIButton) {
        if lightNum != 0{
            print(lightNum, "pressed sub")
            lightNum -= 1
            numberBulb.text = String(lightNum)
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
