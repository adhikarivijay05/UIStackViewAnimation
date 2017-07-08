//
//  ViewController.swift
//  UIStackViewAnimation
//
//  Created by Vijay Adhikari on 08/07/2017.
//  Copyright © 2017 Vijay Adhikari. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var colorView: [UIView]!
        {
        didSet{
            colorView.forEach {
                $0.isHidden = true
            }
        }
    }
    
    
    @IBOutlet weak var selectedView: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func horseClicked(_ sender: Any) {
        hideViews(selectedString: "🐎")
    }
    @IBAction func pigClicked(_ sender: Any) {
        hideViews(selectedString: "🐖")

    }

    @IBAction func mouseClicked(_ sender: Any) {
        hideViews(selectedString: "🐁")

    }
    @IBAction func tigerClicked(_ sender: Any) {
        hideViews(selectedString: "🐅")

    }
    @IBAction func sankeClicked(_ sender: Any) {
        hideViews(selectedString: "🐍")

    }
    @IBAction func camelClicked(_ sender: Any) {
        hideViews(selectedString: "🐪")

    }

    @IBAction func butterflyClicked(_ sender: Any) {
        hideViews(selectedString: "🦋")

    }
    @IBAction func goatClicked(_ sender: Any) {
        hideViews(selectedString: "🐑")
    }
    
    
    
    func hideViews(selectedString : String){
            UIView.animate(withDuration: 0.3) {
                self.colorView.forEach{
                $0.isHidden = !$0.isHidden
                }
                self.selectedView.text = selectedString
        }
    }
}

