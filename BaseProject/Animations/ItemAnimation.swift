//
//  ItemAnimation.swift
//  BaseProject
//
//  Created by Carlos Kimura on 08/11/22.
//

import UIKit

public protocol ItemAnimationProtocol {
    func playAnimation(_ icon: UIImageView, textLabel: UILabel)
    func deselectAnimation(_ icon: UIImageView, textLabel: UILabel, defaultTextColor: UIColor, defaultIconColor: UIColor)
    func selectedState(_ icon: UIImageView, textLabel: UILabel)
}

public class ItemAnimation: NSObject, ItemAnimationProtocol {
    
    // MARK: - Constants
    struct Constants {
        struct AnimationKeys {
            static let scale = "transform.scale"
            static let rotation = "transform.rotation"
            static let keyFrame = "contents"
            static let positionY = "position.y"
            static let opacity = "opacity"
        }
    }
    
    // MARK: - Properties
    @IBInspectable public var duration: CGFloat = 0.5
    @IBInspectable public var textSelectedColor: UIColor = UIColor(red: 0, green: 0.478431, blue: 1, alpha: 1)
    @IBInspectable public var iconSelectedColor: UIColor!
    
    
    // MARK: - Conforms to
    public func playAnimation(_ icon: UIImageView, textLabel: UILabel) {
        fatalError("override method in subclass")
    }
    
    public func deselectAnimation(_ icon: UIImageView, textLabel: UILabel, defaultTextColor: UIColor, defaultIconColor: UIColor) {
        fatalError("override method in subclass")
    }
    
    public func selectedState(_ icon: UIImageView, textLabel: UILabel) {
        fatalError("override method in subclass")
    }
    
    public func deselectedState(_: UIImageView, textLabel _: UILabel) {}
}
