//
//  GradientView.swift
//  TempSparrow24_02_01
//
//  Created by Egor Ledkov on 02.02.2024.
//

import UIKit

final class GradientView: UIView {
	
	private let gradientLayer = CAGradientLayer()
	
	init(colors: [CGColor], cornerRadius: CGFloat = 0) {
		super.init(frame: .zero)
		
		gradientLayer.frame = self.bounds
		gradientLayer.colors = colors
		gradientLayer.cornerRadius = cornerRadius
		gradientLayer.startPoint = CGPointMake(0.0, 0.5)
		
		self.layer.addSublayer(gradientLayer)
	}
	
	required init?(coder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}
	
	override func layoutSubviews() {
		super.layoutSubviews()
		gradientLayer.frame = self.bounds
	}
}
