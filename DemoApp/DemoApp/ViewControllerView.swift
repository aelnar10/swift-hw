//
//  ViewControllerView.swift
//  DemoApp
//
//  Created by allyza elnar on 8/24/23.
//

/* sarunw.com/posts/uiviewcontroller-in-swiftui/ */
/* www.hackingwithswift.com/books/ios-swiftui/wrapping-a-uiviewcontroller-in-a-swiftui-view */

import Foundation
import SwiftUI

struct MyView: UIViewControllerRepresentable {
    
    func makeUIViewController(context: Context) -> MyViewController {
        let vc = MyViewController()
        return vc
    }
    
    func updateUIViewController(_ uiViewController: MyViewController, context: Context) {
    }

}
