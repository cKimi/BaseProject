//
//  Badge.swift
//  BaseProject
//
//  Created by Carlos Kimura on 08/11/22.
//

import UIKit

public class Badge: UILabel {
    
    // MARK: - Properties
    var topConstraint: NSLayoutConstraint?
    var centerXConstraint: NSLayoutConstraint?
    
    override public var intrinsicContentSize: CGSize {
        var contentSize = super.intrinsicContentSize
        contentSize.width += 10.0
        return contentSize
    }
    
    // MARK: - Init
    override public init(frame: CGRect) {
        super.init(frame: frame)
        
        layer.backgroundColor = UIColor.red.cgColor
        layer.cornerRadius = frame.size.width / 2
        
        translatesAutoresizingMaskIntoConstraints = false
        
        configureNumberLabel()
        createSizeConstraints(frame.size)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public class func badge() -> Badge {
        return Badge(frame: CGRect(x: 0, y: 0, width: 18, height: 18))
    }
    
    // MARK: - Create
    internal func createSizeConstraints(_ size: CGSize) {
        let widthConstraint = NSLayoutConstraint(
            item: self,
            attribute: .width,
            relatedBy: .greaterThanOrEqual,
            toItem: nil,
            attribute: .notAnAttribute,
            multiplier: 1,
            constant: size.width)
        addConstraint(widthConstraint)

        let heightConstraint = NSLayoutConstraint(
            item: self,
            attribute: .height,
            relatedBy: .equal,
            toItem: nil,
            attribute: NSLayoutConstraint.Attribute.notAnAttribute,
            multiplier: 1,
            constant: size.height)
        addConstraint(heightConstraint)
    }

    fileprivate func configureNumberLabel() {
        textAlignment = .center
        font = .systemFont(ofSize: 13)
        textColor = .white
    }

    // PRAGMA: public

    open func addBadgeOnView(_ onView: UIView) {

        onView.addSubview(self)

        // create constraints
        let top = NSLayoutConstraint(item: self,
                                           attribute: .top,
                                           relatedBy: .equal,
                                           toItem: onView,
                                           attribute: .top,
                                           multiplier: 1,
                                           constant: 3)
        onView.addConstraint(top)
        topConstraint = top

        let centerX = NSLayoutConstraint(item: self,
                                               attribute: .centerX,
                                               relatedBy: .equal,
                                               toItem: onView,
                                               attribute: .centerX,
                                               multiplier: 1,
                                               constant: 10)
        onView.addConstraint(centerX)
        centerXConstraint = centerX
    }
}
