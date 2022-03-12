//
//  animate.swift
//  DesignX
//
//  Created by Belal Samy on 12/03/2022.
//

import Foundation
import UIKit

public extension UIView {
    
    enum transform {
        case action(() -> Void)
        case move(X: CGFloat, Y: CGFloat)
        case scale(X: CGFloat, Y: CGFloat)
        case rotate(angle: CGFloat)
        case original
    }
    
    static func animate(views: [UIView]!, duration: TimeInterval, delay: CGFloat, velocity: CGFloat, animation: UIView.AnimationOptions ,transforms: [transform]) {
        
        for (index, transform) in transforms.enumerated() {
            UIView.animate(withDuration: duration * Double(index) + 1, delay: delay, usingSpringWithDamping: 1, initialSpringVelocity: velocity, options: animation) {
                switch transform {
                    
                case .action(let action):
                    action()

                case .move(let X, let Y):
                    // transform
                    if views != nil {
                        views!.forEach { view in
                            view.transform = CGAffineTransform(translationX: X, y: Y)
                        }
                    }
                    
                case .scale(X: let X, Y: let Y):
                    // transform
                    if views != nil {
                        views!.forEach { view in
                            view.transform = CGAffineTransform(scaleX: X, y: Y)
                        }
                    }
                    
                case .rotate(let angle):
                    // transform
                    if views != nil {
                        views!.forEach { view in
                            view.transform = CGAffineTransform(rotationAngle: angle)
                        }
                    }
                
                case .original:
                    // transform
                    if views != nil {
                        views!.forEach { view in
                            view.transform = CGAffineTransform.identity
                        }
                    }
                    
                } // switch transform
            } // animation func
        } // transforms loop
    }
}
