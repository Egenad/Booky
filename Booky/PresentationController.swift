//
//  PresentationController.swift
//  Booky
//
//  Created by Angel Terol on 13/11/23.
//

import UIKit

class PresentationController: UIViewController, UIPageViewControllerDataSource, UIPageViewControllerDelegate {
    
    var book : Book? = nil
    
    var pageViewController : UIPageViewController?
    
    var darkTheme = true

    override func viewDidLoad() {
        super.viewDidLoad()
        
        changeTabBarColors(UIColor.white, UIColor.black)
        
        let addButton = UIBarButtonItem(image: UIImage(systemName: "sun.min.fill"), style: .plain, target: self, action: #selector(changeMainTheme))
        navigationItem.rightBarButtonItem = addButton

        self.pageViewController = self.storyboard?.instantiateViewController(withIdentifier: "PageViewController") as! UIPageViewController?
        self.pageViewController?.dataSource = self
        self.pageViewController?.delegate = self
        
        let startingViewController = self.viewControllerAtIndex(index: 0)
        let viewControllers = [startingViewController!]
        
        self.pageViewController?.setViewControllers(viewControllers, direction: UIPageViewController.NavigationDirection.forward, animated: false, completion: nil)

        self.addChild(self.pageViewController!)
        self.view.addSubview((self.pageViewController?.view)!)
        self.pageViewController?.didMove(toParent: self)
    }
    
    @objc func changeMainTheme() {
        
        if let currentPageViewController = pageViewController?.viewControllers?.first {
            
            let current = currentPageViewController as! PresentationContentController
            
            if(darkTheme){
                changeTabBarColors(UIColor.black, UIColor.white)
                current.view.backgroundColor = UIColor.white
                current.content.backgroundColor = UIColor.white
                current.changeColorText(color: "#000000")
                current.index.textColor = UIColor.black
                
            }else{
                changeTabBarColors(UIColor.white, UIColor.black)
                current.view.backgroundColor = UIColor.black
                current.content.backgroundColor = UIColor.black
                current.changeColorText(color: "#FFFFFF")
                current.index.textColor = UIColor.white
            }
        }
        
        darkTheme = !darkTheme
    }
    
    private func changeTabBarColors(_ itemColor: UIColor, _ backgroundColor: UIColor){
        if let tabBarController = self.tabBarController {
            tabBarController.tabBar.barTintColor = backgroundColor
            
            if let selectedTabBarItem = tabBarController.tabBar.selectedItem {
                selectedTabBarItem.setTitleTextAttributes([NSAttributedString.Key.foregroundColor: itemColor], for: .normal)
                
                if let originalImage = selectedTabBarItem.image {
                    let tintedImage = originalImage.withRenderingMode(.alwaysOriginal)
                    let coloredImage = tintedImage.withTintColor(itemColor)
                    selectedTabBarItem.selectedImage = coloredImage
                }
            }
        }
        
        if let navigationController = self.navigationController {
            navigationController.navigationBar.tintColor = itemColor
            navigationController.navigationBar.topItem?.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
            navigationController.navigationBar.barTintColor = backgroundColor
        }
    }

    func viewControllerAtIndex(index : Int) -> PresentationContentController? {
        if self.book?.pages.count == 0 || index >= self.book?.pages.count ?? 0 {
            return nil
        }

        let pcc = self.storyboard?.instantiateViewController(withIdentifier: "PageContentViewController") as! PresentationContentController
        
        pcc.pageIndex = index
        pcc.totalPages = self.book?.pages.count ?? 0
        pcc.contentString = self.book?.pages[index].content ?? ""
        pcc.darkTheme = darkTheme
        
        return pcc
    }

    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {

        let pcc = viewController as! PresentationContentController
        var index = pcc.pageIndex

        if index == 0 || index == Foundation.NSNotFound {
            return nil
        }

        index -= 1

        return self.viewControllerAtIndex(index: index)
    }

    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {

        let pcc = viewController as! PresentationContentController
        var index = pcc.pageIndex

        if index == Foundation.NSNotFound {
            return nil
        }

        index += 1
        if index == self.book?.pages.count {
            return nil
        }
        
        return self.viewControllerAtIndex(index: index)
    }
    
    func presentationCount(for pageViewController: UIPageViewController) -> Int {
        return self.book?.pages.count ?? 0
    }

    func presentationIndex(for pageViewController: UIPageViewController) -> Int {
        return 0
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)

        if isMovingFromParent {
            changeTabBarColors(UIColor.black, UIColor.white)
        }
    }
}
