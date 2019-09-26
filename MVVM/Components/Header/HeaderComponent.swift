//
//  Header.swift
//  MVVM
//
//  Created by ArifRachman on 20/09/19.
//  Copyright © 2019 Telkom. All rights reserved.
//

import UIKit

class HeaderComponent: UIView {
    
    @IBOutlet weak var LabelHeader: UILabel!
    
    @IBOutlet weak var btnBackHeader: UIButton!
    
    var contentView : UIView!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        xibSetup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        xibSetup()
    }
    
    func xibSetup() {
        contentView = loadViewFromNib()
        
        // use bounds not frame or it'll be offset
        contentView.frame = bounds
        
        // Make the view stretch with containing view
        contentView.autoresizingMask = [UIView.AutoresizingMask.flexibleWidth, UIView.AutoresizingMask.flexibleHeight]
        
        // Make the view Background to Transparent
        contentView.backgroundColor = UIColor.clear
        
        // Adding custom subview on top of our view
        addSubview(contentView)
    }
    
    func loadViewFromNib() -> UIView! {
        
        let bundle = Bundle(for: type(of: self))
        let nib = UINib(nibName: String(describing: type(of: self)), bundle: bundle)
        let view = nib.instantiate(withOwner: self, options: nil).first as! UIView
        
        return view
    }
    

}
