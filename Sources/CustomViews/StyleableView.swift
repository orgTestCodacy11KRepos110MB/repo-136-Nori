//
//  StyleableView.swift
//  Nori
//
//  Created by yukiasai on 11/22/16.
//  Copyright © 2016 yukiasai. All rights reserved.
//

open class StyleableView: UIView {
    open override func awakeFromNib() {
        super.awakeFromNib()
        #if !TARGET_INTERFACE_BUILDER
            setupStyle()
        #endif
    }
    
    open override func didMoveToWindow() {
        super.didMoveToWindow()
        #if TARGET_INTERFACE_BUILDER
            setupStyle()
        #endif
    }

    open override func layoutSubviews() {
        super.layoutSubviews()
        setupStyle()
    }
    
    open func setupStyle() {
        stylize(with: intrinsicStyle())
    }
    
    open func intrinsicStyle() -> ViewStyle {
        return ViewStyle()
    }
}
