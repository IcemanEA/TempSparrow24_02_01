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
	
	private lazy var squareView: UIView = makeSquareView()
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		setup()
	}
	
	private func setup() {
		view.backgroundColor = .white
		
		view.addSubview(squareView)
		
		layout()
	}
}

// MARK: - Layout

private extension ViewController {
	
	private func layout() {
		NSLayoutConstraint.activate(
			[
				squareView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 100),
				squareView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
				squareView.widthAnchor.constraint(equalToConstant: 100),
				squareView.heightAnchor.constraint(equalToConstant: 100)
			]
		)
	}
}

// MARK: - Constructors

private extension ViewController {
	
	func makeSquareView() -> UIView {
		let firstColor = CGColor(red: 92/256, green: 142/256, blue: 184/256, alpha: 1)
		let secondColor = CGColor(red: 231/256, green: 68/256, blue: 53/256, alpha: 1)
		
		let uiView = GradientView(colors: [firstColor, secondColor], cornerRadius: 15)
		uiView.translatesAutoresizingMaskIntoConstraints = false
		
		uiView.layer.shadowColor = UIColor.lightGray.cgColor
		uiView.layer.shadowOpacity = 1
		uiView.layer.shadowRadius = 10
		uiView.layer.shadowOffset = CGSize(width: 10, height: 10)
		
		return uiView
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
