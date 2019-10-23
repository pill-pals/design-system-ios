//
//  DrugCard.swift
//  DesignSystem
//
//  Created by William Harvey on 2019-10-05.
//  Copyright © 2019 PillPals. All rights reserved.
//

import Foundation
import UIKit
import CoreData

public class DrugCard: UIView {
    @IBOutlet public var cardView: UIView!
    @IBOutlet public weak var drugCard: UIView!
    @IBOutlet public weak var drugName: UILabel!
    @IBOutlet public weak var drugTime: UILabel!
    @IBOutlet public weak var lateLabel: UILabel!
    @IBOutlet public weak var logButton: UIButton!
    @IBOutlet public weak var countdownLabel: UILabel!
    @IBOutlet public weak var doneImage: UIImageView!
    public var schedule: NSManagedObject?

    @IBAction public func logDrug(_ sender: Any) {
    }
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    
    func commonInit() {
        //Bundle.main.loadNibNamed("DrugCard", owner: self, options: nil)
//        let bundle = Bundle(for: type(of: self))
//        let nib = UINib(nibName: "DrugCard", bundle: bundle)
//        let nibView = nib.instantiate(withOwner: self, options: nil).first
//        self.fixInView(nibView as? UIView)
        
        let view = UINib(nibName: "DrugCard", bundle: Bundle(for: type(of: self))).instantiate(withOwner: self, options: nil)[0] as! UIView

        //view.frame = 

        //view.autoresizingMask = [.flexibleWidth]
        
        self.addSubview(view);
    }
    
    public func stretchToSuperView()
    {
        self.translatesAutoresizingMaskIntoConstraints = false

        guard let superview = self.superview else {
            print("Error! `superview` was nil – call `addSubview(view: UIView)` before calling `bindFrameToSuperviewBounds()` to fix this.")
            return
        }

        NSLayoutConstraint(item: self.subviews[0], attribute: NSLayoutConstraint.Attribute.width, relatedBy: NSLayoutConstraint.Relation.equal, toItem: superview, attribute: NSLayoutConstraint.Attribute.width, multiplier: 1, constant: 0).isActive = true
        self.heightAnchor.constraint(equalToConstant: 72).isActive = true
    }
}
