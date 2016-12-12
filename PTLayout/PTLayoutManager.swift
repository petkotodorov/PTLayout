//
//  PTLayoutManager.swift
//  PTLayout
//
//  Created by Petko Todorov on 12/12/16.
//  Copyright © 2016 Petko Todorov. All rights reserved.
//

import Foundation

public class PTLayoutManager {
    
    public class func centerHorizontallyInContainer (_ viewToCenter: UIView) {
        viewToCenter.translatesAutoresizingMaskIntoConstraints = false
        let constraint = NSLayoutConstraint.init(item: viewToCenter,
                                                 attribute: .centerX,
                                                 relatedBy: .equal,
                                                 toItem: viewToCenter.superview,
                                                 attribute: .centerX,
                                                 multiplier: 1.0,
                                                 constant: 0.0)
        viewToCenter.superview?.addConstraint(constraint)
    }
    
    public class func centerVerticallyInContainer (_ viewToCenter: UIView) {
        viewToCenter.translatesAutoresizingMaskIntoConstraints = false
        let constraint = NSLayoutConstraint.init(item: viewToCenter,
                                                 attribute: .centerY,
                                                 relatedBy: .equal,
                                                 toItem: viewToCenter.superview,
                                                 attribute: .centerY,
                                                 multiplier: 1.0,
                                                 constant: 0.0)
        viewToCenter.superview?.addConstraint(constraint)
    }
    
    public class func setHeightTo (view: UIView, height: CGFloat) {
        view.translatesAutoresizingMaskIntoConstraints = false
        let constraint = NSLayoutConstraint.init(item: view,
                                                 attribute: .height,
                                                 relatedBy: .equal,
                                                 toItem: nil,
                                                 attribute: .notAnAttribute,
                                                 multiplier: 1.0,
                                                 constant: height)
        view.addConstraint(constraint)
    }
    
    public class func setWidthTo (view: UIView, width: CGFloat) {
        view.translatesAutoresizingMaskIntoConstraints = false
        let constraint = NSLayoutConstraint.init(item: view,
                                                 attribute: .width,
                                                 relatedBy: .equal,
                                                 toItem: nil,
                                                 attribute: .notAnAttribute,
                                                 multiplier: 1.0,
                                                 constant: width)
        view.addConstraint(constraint)
    }
    
    public class func setWidthProportionalToSuperview (view: UIView, multiplier: CGFloat) {
        view.translatesAutoresizingMaskIntoConstraints = false
        let constraint = NSLayoutConstraint.init(item: view,
                                                 attribute: .width,
                                                 relatedBy: .equal,
                                                 toItem: view.superview,
                                                 attribute: .width,
                                                 multiplier: multiplier,
                                                 constant: 0.0)
        view.addConstraint(constraint)
    }
}
