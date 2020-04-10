//
//  LLSpinner.swift
//  LLSpinner
//
//  Created by Aleph Retamal on 9/22/16.
//  Copyright © 2016 lalafon. All rights reserved.
//

import UIKit

open class LLSpinner {
    internal static var spinnerView: UIActivityIndicatorView?

    public static var style: UIActivityIndicatorView.Style = .large

    public static var backgroundColor: UIColor = #colorLiteral(red: 0.5613301079, green: 0.5613301079, blue: 0.5613301079, alpha: 0.3961633134)
    
    public static var indicatorColor : UIColor = .white

    internal static var touchHandler: (() -> Void)?

    public static func spin(style: UIActivityIndicatorView.Style = style, backgroundColor: UIColor = backgroundColor, indicatorColor :UIColor = .white, touchHandler: (() -> Void)? = nil) {
        if spinnerView == nil,
            let window = UIApplication.shared.windows.first {
            let frame = UIScreen.main.bounds
            spinnerView = UIActivityIndicatorView(frame: frame)
            //spinnerView!.backgroundColor = backgroundColor
            spinnerView!.style = style
            spinnerView!.color = indicatorColor
            window.addSubview(spinnerView!)
            spinnerView!.startAnimating()
        }

        if touchHandler != nil {
            self.touchHandler = touchHandler
            let tapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(runTouchHandler))
            spinnerView!.addGestureRecognizer(tapGestureRecognizer)
        }
    }
    
    public static func spin(style: UIActivityIndicatorView.Style = style, backgroundColor: UIColor = backgroundColor,  touchHandler: (() -> Void)? = nil) {
        if spinnerView == nil,
            let window = UIApplication.shared.windows.first {
            let frame = UIScreen.main.bounds
            spinnerView = UIActivityIndicatorView(frame: frame)
            //spinnerView!.backgroundColor = backgroundColor
            spinnerView!.style = style
            spinnerView!.color = indicatorColor
            window.addSubview(spinnerView!)
            spinnerView!.startAnimating()
        }

        if touchHandler != nil {
            self.touchHandler = touchHandler
            let tapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(runTouchHandler))
            spinnerView!.addGestureRecognizer(tapGestureRecognizer)
        }
    }
    
    public static func spin(touchHandler: (() -> Void)? = nil) {
          if spinnerView == nil,
              let window = UIApplication.shared.windows.first {
              let frame = UIScreen.main.bounds
              spinnerView = UIActivityIndicatorView(frame: frame)
              //spinnerView!.backgroundColor = backgroundColor
              spinnerView!.style = style
              spinnerView!.color = indicatorColor
              window.addSubview(spinnerView!)
              spinnerView!.startAnimating()
          }

          if touchHandler != nil {
              self.touchHandler = touchHandler
              let tapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(runTouchHandler))
              spinnerView!.addGestureRecognizer(tapGestureRecognizer)
          }
      }

    @objc internal static func runTouchHandler() {
        if touchHandler != nil {
            touchHandler!()
        }
    }

    public static func stop() {
        if let _ = spinnerView {
            spinnerView!.stopAnimating()
            spinnerView!.removeFromSuperview()
            spinnerView = nil
        }
    }
}
