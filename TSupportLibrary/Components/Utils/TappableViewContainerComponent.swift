//
//  TappableViewContainerComponent.swift
//  TSupportLibrary
//
//  Created by Matteo Corradin on 16/05/18.
//  Copyright © 2018 Matteo Corradin. All rights reserved.
//

import Foundation
import UIKit

public class TappableViewContainerComponent : UIView {
    private var mTappableViews = Array<TappableViewComponent>()
    
    var tappableViews: Array<TappableViewComponent> {
        return mTappableViews
    }
    
    public func addTappableView(_ view: TappableViewComponent){
        if !mTappableViews.contains(view) {
            mTappableViews.append(view)
        }
    }
    
}
