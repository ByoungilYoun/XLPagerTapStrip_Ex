//
//  SixthViewController.swift
//  XLPagerTapStrip_Ex
//
//  Created by 윤병일 on 2022/08/14.
//

import Foundation
import UIKit
import XLPagerTabStrip

class SixthViewController : UIViewController, IndicatorInfoProvider {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .green
    }
    
    
    func indicatorInfo(for pagerTabStripController: PagerTabStripViewController) -> IndicatorInfo {
        return IndicatorInfo(title: "6번째 뷰컨트롤러")
    }
}

