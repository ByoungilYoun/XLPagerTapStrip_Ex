//
//  TenthViewController.swift
//  XLPagerTapStrip_Ex
//
//  Created by 윤병일 on 2022/08/14.
//

import Foundation
import UIKit
import XLPagerTabStrip

class TenthViewController : UIViewController, IndicatorInfoProvider {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .purple
    }
    
    
    func indicatorInfo(for pagerTabStripController: PagerTabStripViewController) -> IndicatorInfo {
        return IndicatorInfo(title: "10번째")
    }
}

