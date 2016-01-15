//
//  UIViewController+HUD.swift
//  PKHUD
//
//  Created by hwh on 16/1/15.
//  Copyright © 2016年 NSExceptional. All rights reserved.
//

import UIKit

extension UIViewController {
    /**
     networking in loading 网路请求
     */
    func showHud() {
        PKHUD.sharedHUD.contentView = PKHUDProgressView()
        PKHUD.sharedHUD.show()
    }
    /**
     hide networking loading 移除网络请求
     */
    func hideHud() {
        PKHUD.sharedHUD.hide()
    }
    
    /**
     notify user request sucess! (提示用户请求成功）
     
     - parameter title: sucess tips/  成功提示(可选)
     */
    func showSucess(title: String? = nil) {
        if let text = title {
            PKHUD.sharedHUD.contentView = PKHUDTextView(text: text)
        }else {
            PKHUD.sharedHUD.contentView = PKHUDSuccessView()
        }
        PKHUD.sharedHUD.show()
        PKHUD.sharedHUD.hide(afterDelay: 1.5)
    }
    func showError(title: String? = nil) {
        if let text = title {
            PKHUD.sharedHUD.contentView = PKHUDTextView(text: text)
        }else {
            PKHUD.sharedHUD.contentView = PKHUDErrorView()
        }
        PKHUD.sharedHUD.show()
        PKHUD.sharedHUD.hide(afterDelay: 1.5)
    }
}
