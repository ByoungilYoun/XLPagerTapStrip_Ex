//
//  MainViewController.swift
//  XLPagerTapStrip_Ex
//
//  Created by 윤병일 on 2022/08/14.
//

import UIKit
import XLPagerTabStrip
import SnapKit

class MainViewController : ButtonBarPagerTabStripViewController {
    
    // MARK: - Properties

    // MARK: - LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setUI()
        configureButtonBar()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    // MARK: - Functions
    private func setUI() {
        view.backgroundColor = .white
        title = "XLPagerTapStrip"
        
        buttonBarView.snp.makeConstraints {
            $0.top.equalTo(view.safeAreaLayoutGuide)
            $0.leading.trailing.equalToSuperview()
            $0.height.equalTo(40)
        }
        
        buttonBarView.backgroundColor = .white
        buttonBarView.selectedBar.backgroundColor = .blue
    }
    
    func configureButtonBar() {
        settings.style.buttonBarBackgroundColor = .white
        settings.style.buttonBarItemBackgroundColor = .white
        settings.style.buttonBarItemFont = UIFont.systemFont(ofSize: 16, weight: .bold)
        settings.style.buttonBarItemLeftRightMargin = 14
        settings.style.buttonBarMinimumLineSpacing = 0
        settings.style.buttonBarItemsShouldFillAvailableWidth = true
        settings.style.buttonBarLeftContentInset = 0
        settings.style.buttonBarRightContentInset = 0
        
        // Changing item text color on swipe
        changeCurrentIndexProgressive = { [weak self] (oldCell: ButtonBarViewCell?, newCell: ButtonBarViewCell?, progressPercentage: CGFloat, changeCurrentIndex: Bool, animated: Bool) -> Void in
            guard changeCurrentIndex == true else { return }
            oldCell?.label.textColor = .lightGray
            newCell?.label.textColor = .blue
        }
    }

    
    override func viewControllers(for pagerTabStripController: PagerTabStripViewController) -> [UIViewController] {
     
        let firstVC = FirstViewController()
        let secondVc = SecondViewController()
        let thirdVC = ThirdViewController()
        let fourthVC = FourthViewController()
        let fifthVC = FifthViewController()
        let sixthVC = SixthViewController()
        let seventhVC = SeventhViewController()
        let eighthVC = EighthViewController()
        let ninthVC = NinthViewController()
        let tenthVC = TenthViewController()
        return [firstVC, secondVc, thirdVC, fourthVC, fifthVC, sixthVC, seventhVC, eighthVC, ninthVC, tenthVC]
    }
}
