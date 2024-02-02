//
//  ViewController.swift
//  TempSparrow24_02_01
//
//  Created by Egor Ledkov on 02.02.2024.
//

#if DEBUG
import SwiftUI
#endif

import UIKit

class ViewController: UIViewController {
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		view.backgroundColor = .white
	}
}

// MARK: - PreviewProvider

#if DEBUG
struct MainViewControllerProvider: PreviewProvider {
	static var previews: some View {
		ViewController()
			.preview()
	}
}

extension UIViewController {
	struct Preview: UIViewControllerRepresentable {
		let viewController: UIViewController
		
		func makeUIViewController(context: Context) -> some UIViewController {
			viewController
		}
		
		func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) { }
	}
	
	func preview( ) -> some View {
		Preview(viewController: self)
	}
}
#endif
