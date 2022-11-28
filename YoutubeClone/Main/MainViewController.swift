//
//  MainViewController.swift
//  YoutubeClone
//
//  Created by Jefferson Naranjo rodríguez on 25/11/22.
//

import UIKit

class MainViewController: UIViewController {
    var rootPageViewController : RootPageViewController!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? RootPageViewController {
            destination.delegateRoot = self
            rootPageViewController = destination
        }
    }
}

extension MainViewController : RootPageProtocol {
    func currentPage(_ index: Int) {
        print("currentPage: ", index)
    }
}
