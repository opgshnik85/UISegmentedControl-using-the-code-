//
//  ViewController.swift
//  UISegmentedControl
//
//  Created by MacBook on 29.01.2022.
//

import UIKit

class ViewController: UIViewController {
    
    var imageView = UIImageView()
    var segmentedControl = UISegmentedControl()
    
    var menuArray = ["one", "two", "three", "four", "five"]
    let imageArray = [UIImage(named: "0.png"),
                      UIImage(named: "1.png"),
                      UIImage(named: "2.png"),
                      UIImage(named: "3.png"),
                      UIImage(named: "4.png")]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Создаем UIImageView
        self.imageView.frame = CGRect(x: 0, y: 0, width: 300, height: 250)
        self.imageView.center = self.view.center
        self.imageView.image = self.imageArray[0]
        self.view.addSubview(self.imageView)
        
        //Создаем UISegmentedView
        self.segmentedControl = UISegmentedControl(items: self.menuArray)
        self.segmentedControl.frame = CGRect(x: 55 , y: 650, width: 300, height: 50)
        self.view.addSubview(self.segmentedControl)
        
        self.segmentedControl.addTarget(self, action: #selector(selectedValue), for: .valueChanged)
    }
    
    @objc func selectedValue(target:UISegmentedControl) {
        if target == self.segmentedControl {
            let segmentIndex = target.selectedSegmentIndex
            
            self.imageView.image = self.imageArray[segmentIndex]
        }
    }
}

