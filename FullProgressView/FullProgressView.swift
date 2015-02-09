//
//  FullProgressView.swift
//  FullProgress
//
//  Created by Seyhun Akyurek on 01/02/15.
//  Copyright (c) 2015 seyhunak. All rights reserved.
//

import UIKit

@IBDesignable class FullProgressView : UIView {
    
  var containerView = UIView()
  var progressView = UIView()
  var activityIndicator = UIActivityIndicatorView()

  class var shared: FullProgressView {
    
    struct Static {
      static let instance: FullProgressView = FullProgressView()
    }
    
    return Static.instance
  }
    
  @IBInspectable var overlayColor: UIColor = UIColor.clearColor() {
        
    didSet {
      layer.backgroundColor = overlayColor.CGColor
    }
        
  }

  @IBInspectable var cornerRadius: CGFloat = 0 {
    
    didSet {
      layer.cornerRadius = cornerRadius
    }
    
  }

}