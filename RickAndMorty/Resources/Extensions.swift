//
//  Extensions.swift
//  RickAndMorty
//
//  Created by Harold Davidson on 1/26/23.
//

import UIKit

extension UIView {
    func addSubviews(_ views: UIView...) {
        views.forEach({
            addSubview($0)
        })
    }
}
