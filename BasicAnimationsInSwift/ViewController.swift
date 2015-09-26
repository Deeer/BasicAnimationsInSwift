//
//  ViewController.swift
//  BasicAnimationsInSwift
//
//  Created by Dee on 15/9/14.
//  Copyright (c) 2015年 Dee. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var basicSqure: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.whiteColor()
        
    }
    override func viewWillAppear(animated: Bool) {
        /**
        *  基本用法，和oc差不多
        */
//        basicSqure.center.x -= view.bounds.width
//        UIView.animateWithDuration(0.5, animations: { () -> Void in
//            self.basicSqure.center.x += self.view.bounds.width
//        })
        
        /**
        *  只有option类型似乎方便些
        */
//        UIView.animateWithDuration(0.5, delay: 0.2, options: .Repeat, animations: { () -> Void in
//            self.basicSqure.center.x -= self.view.bounds.width
//        }, completion: nil)
        
        /**
        *  多重optio,的确很方便,产生的动画效果让人意外 +1
        */
//        UIView.animateWithDuration(0.5, delay: 0.2, options: .Repeat | .Autoreverse, animations: { () -> Void in
//            self.basicSqure.center.x -= self.view.bounds.width
//            }, completion: nil)
        
        /**
        *  看了下option类型，没怎么看懂，似乎直接将这些动画选项直接static了.说实话，感觉这样的效果接近弹跳效果了
        */
//        UIView.animateWithDuration(0.5, delay: 0.2, options: .Repeat | .Autoreverse | .CurveEaseOut , animations: { () -> Void in
//            self.basicSqure.center.y -= self.view.bounds.height
//            }, completion: nil)
        
        /**
        *  额。。碰壁效果
        */
//        UIView.animateWithDuration(0.5, delay: 0.2, options: .Repeat | .Autoreverse | .CurveEaseIn , animations: { () -> Void in
//            self.basicSqure.center.y -= self.view.bounds.height
//            }, completion: nil)
        
        /**
        *  跳的好萌，适合做宠物弹跳动画  usingSpringWithDamping：0-1 :0.1的时候抽风一样，1的时候好萌啊 
        *  一步步下去，越来越萌。。。
        */
//        UIView.animateWithDuration(0.5, delay: 0.5, usingSpringWithDamping: 1, initialSpringVelocity: 0.5, options: .Repeat | .Autoreverse , animations: { () -> Void in
//            self.basicSqure.center.y -= self.view.frame.height
//            self.basicSqure.alpha = 1.0 //原来直接设置为1.会从0开始做动画。。不用管初始值啊
//            self.basicSqure.bounds.size.width += 70
////            self.basicSqure.center = CGPoint(x: 40.0, y: -self.view.frame.size.height/2)
//        }, completion: nil)
        
        /**
        
        */
        UIView.animateWithDuration(5.5, delay: 0.5, usingSpringWithDamping: 1, initialSpringVelocity: 0.5, options: .CurveEaseOut | .TransitionFlipFromBottom | .Repeat, animations: { () -> Void in
//            self.basicSqure.center.y -= self.view.frame.height
//            self.basicSqure.hidden = true
            }, completion: nil)
        
        
      //结语:差不多就是这样，最后还是比较偏爱弹簧效果，真心不错！！
        
        
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

