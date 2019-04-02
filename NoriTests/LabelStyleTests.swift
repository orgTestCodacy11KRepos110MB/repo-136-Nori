//
//  LabelStyleTests.swift
//  Nori
//
//  Created by yukiasai on 11/22/16.
//  Copyright © 2016 yukiasai. All rights reserved.
//

import XCTest
@testable import Nori

class LabelStyleTests: XCTestCase {
    func testSuperViewStyle() {
        let view = UILabel()
        let style = SwitchStyle {
            $0.backgroundColor = UIColor.blue
        }
        view.stylize(with: style)
        XCTAssertEqual(view.backgroundColor?.cgColor, style.backgroundColor?.cgColor)
    }
    
    func testTextColor() {
        let style = LabelStyle {
            $0.textColor = UIColor.green
        }
        let view = UILabel()
        view.stylize(with: style)
        XCTAssertEqual(view.textColor.cgColor, style.textColor?.cgColor)
    }
    
    func testFont() {
        let style = LabelStyle {
            $0.font = UIFont(name: "Helvetica-Bold", size: 32)
        }
        let view = UILabel()
        view.stylize(with: style)
        XCTAssertEqual(view.font, style.font)
    }
    
    func testAlignment() {
        let style = LabelStyle {
            $0.align = .right
        }
        let view = UILabel()
        view.stylize(with: style)
        XCTAssertEqual(view.textAlignment, style.align)
    }
    
    func testNumberOfLines() {
        let style = LabelStyle {
            $0.lines = 100
        }
        let view = UILabel()
        view.stylize(with: style)
        XCTAssertEqual(view.numberOfLines, style.lines)
    }
    
    func testMinimumScaleFactor() {
        let style = LabelStyle {
            $0.minimumScale = 0.1
        }
        let view = UILabel()
        view.stylize(with: style)
        XCTAssertEqual(view.minimumScaleFactor, style.minimumScale!, accuracy: CGFloat(Float.ulpOfOne))
        XCTAssertTrue(view.adjustsFontSizeToFitWidth)
    }
}
