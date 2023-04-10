//
//  ViewController.swift
//  testDynamicLink
//
//  Created by Hà Quang Hưng on 07/04/2023.
//

import UIKit
import FirebaseDynamicLinks

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func didTapCreateLink(_ sender: Any) {
        guard let link = URL(string: "https://hunguet.page.link/test-dynamic-link") else { return }
        let dynamicLinksDomainURIPrefix = "https://hunguet.page.link"
        let linkBuilder = DynamicLinkComponents(link: link, domainURIPrefix: dynamicLinksDomainURIPrefix)
        linkBuilder?.iOSParameters = DynamicLinkIOSParameters(bundleID: "hunguet.testDynamicLink")
        linkBuilder?.androidParameters = DynamicLinkAndroidParameters(packageName: "com.example.android")

        guard let longDynamicLink = linkBuilder?.url else { return }
        print("The long URL is: \(longDynamicLink)")
    }
    
}

