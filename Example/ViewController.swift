//
//  ViewController.swift
//  Example
//
//  Created by Belal Samy on 11/09/2021.
//

import Foundation
import UIKit
import DesignX

class ViewController: UIViewController {
    // views
    let TestView = UIView()
    let shadowBackground = UIView()
    let label = UILabel()

    // Gradient Layer
    var gradientlayer = CAGradientLayer()
    
    override func viewDidLayoutSubviews() {
        gradientlayer.frame = view.bounds
    }

    //MARK: - lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // gradient
        gradientlayer = view.fill(gradient: [.hex("#f5b114"), .hex("#e34bbf"), .hex("#000000")], locations: [0, 0.5, 1], opacity: 1)
        
        // layout
        view.addSubview(shadowBackground)
        TestView.addSubview(label)
        shadowBackground.layout(X: .center(nil), W: .equal(nil, 0.75), Y: .center(nil), H: .equal(nil, 0.75))
        label.layout(XW: .leadingAndCenter(nil, 20), YH: .topAndCenter(nil, 20))
        
        // rotate
        shadowBackground.rotate(angle: 5)
        
        // corners
        TestView.corners(.all, radius: 30)
                
        // fill
        TestView.fill(image: "twd", contentMode: .scaleToFill)
        
        // stroke
        TestView.stroke(color: .hex("#ffffff"), width: 20)
      
        // shadow
        TestView.shadow(container: shadowBackground, color: .hex("#000000"), opacity: 0.50, H: 20, W: 20, radius: 20)
       
        // shape
        TestView.shape(.square(size: 350, X: .center(nil), Y: .center(nil)))
        
        // text
        label.create(string: ["T", "W", "D"], colors: [.rgb(50, 168, 82), .hex("#ffffff")], sizes: [135], weights: [.bold], stroke: [0, 5], alignment: .center)

        // animate
        UIView.animate(views: [TestView], duration: 1, delay: 0.5, velocity: 0.5, animation: .curveEaseInOut,
                       transforms: [.scale(X: -0.1, Y: -0.1), .rotate(angle: 180), .rotate(angle: 20), .original])
        
        UIView.animate(views: [label], duration: 1, delay: 0, velocity: 0.5, animation: .curveEaseInOut,
                       transforms: [.scale(X: 0.1, Y: 0.1), .rotate(angle: 20), .rotate(angle: 180), .original])
        
        UIView.animate(views: [TestView], duration: 1, delay: 0.5, velocity: 0.5, animation: .curveEaseInOut, transforms: [.action(changeToYellow), .action(changeToWhite)])
                        
    }
    
    // animation actions
    func changeToYellow() {
        self.TestView.stroke(color: .rgb(50, 168, 82), width: 20)
    }
    
    func changeToWhite() {
        self.TestView.stroke(color: .color(.white), width: 20)
    }

    
}
