//
//  CDBaseUISwitch.swift
//  SwitchExample
//
//  Created by Nguyễn Trọng Anh Tuấn on 08/11/2017.
//  Copyright © 2017 Nguyễn Trọng Anh Tuấn. All rights reserved.
//

import UIKit

class CDBaseUISwitch: UISwitch {
    var longPressGesture:UILongPressGestureRecognizer? = nil
    var panGesture:UIPanGestureRecognizer? = nil
    
    override func awakeFromNib() {
        super.awakeFromNib()
        if let visualSwitchView = self.subviews.first {
            for gesture:UIGestureRecognizer in visualSwitchView.gestureRecognizers! {
                if gesture is UILongPressGestureRecognizer {
                    self.longPressGesture = gesture as? UILongPressGestureRecognizer
                }
                else if gesture is UIPanGestureRecognizer {
                    self.panGesture = gesture as? UIPanGestureRecognizer
                }
                else if let _ = self.longPressGesture, let _ = self.panGesture {
                    break;
                }
            }
        }
        
        if let _ = self.longPressGesture {
            print("has long press")
            self.longPressGesture?.addTarget(self, action: #selector(handleLongPressGesture(_:)))
        }
        
        if let _ = self.panGesture {
            print("has pan press")
            self.panGesture?.addTarget(self, action: #selector(handlePanGesture(_:)))
        }
    }



    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    
    @objc func handleLongPressGesture(_ sender:UILongPressGestureRecognizer) {
        print("handleLongPressGesture ", sender)
    }
    
    @objc func handlePanGesture(_ sender:UIPanGestureRecognizer) {
        print("handlePanGesture ", sender)
    }
    
}
