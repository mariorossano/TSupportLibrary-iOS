//
//  AppGCollectionTappableCell.swift
//  TSupportLibrary
//
//  Created by Matteo Corradin on 30/12/18.
//  Copyright © 2018 Matteo Corradin. All rights reserved.
//

import UIKit

public class AppGCollectionTappableCell: AppGCollectionCell {
    let tapGesture = UITapGestureRecognizer()
    
    public func makeViewTappable(view: UIView) {
        if let grs = view.gestureRecognizers {
            if (!grs.contains(tapGesture)){
                addTapGesture(view)
            }
        }else{
            addTapGesture(view)
        }
    }
    
    public func makeTappable() {
        makeViewTappable(view: contentView)
    }
    
    private func addTapGesture(_ view: UIView){
        tapGesture.numberOfTapsRequired = 1
        view.addGestureRecognizer(tapGesture)
    }
    
    override public func awakeFromNib() {
        super.awakeFromNib()
        makeTappable()
    }
}
