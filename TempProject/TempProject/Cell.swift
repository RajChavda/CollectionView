//
//  Cell.swift
//  TempProject
//
//  Created by Rudrarajsinh Chavda on 19/08/19.
//  Copyright © 2019 Rudrarajsinh Chavda. All rights reserved.
//

import UIKit


class Cell: UICollectionViewCell {

    @IBOutlet weak var label: UILabel!

    let label1 = UILabel()

    override init(frame: CGRect) {
        super.init(frame: frame)

        label1.numberOfLines = 0
        label1.backgroundColor = .orange
        contentView.addSubview(label1)
        label = label1
        label1.translatesAutoresizingMaskIntoConstraints = false
        label1.topAnchor.constraint(equalTo: contentView.layoutMarginsGuide.topAnchor).isActive = true
        label1.leadingAnchor.constraint(equalTo: contentView.layoutMarginsGuide.leadingAnchor).isActive = true
        label1.trailingAnchor.constraint(equalTo: contentView.layoutMarginsGuide.trailingAnchor).isActive = true
        label1.bottomAnchor.constraint(equalTo: contentView.layoutMarginsGuide.bottomAnchor).isActive = true
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder:  aDecoder)
        //fatalError("init(coder:) has not been implemented")
    }

//    required init?(coder aDecoder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }

    override func preferredLayoutAttributesFitting(_ layoutAttributes: UICollectionViewLayoutAttributes) -> UICollectionViewLayoutAttributes {
        layoutIfNeeded()
        label.preferredMaxLayoutWidth = label.bounds.size.width
        layoutAttributes.bounds.size.height = contentView.systemLayoutSizeFitting(UIView.layoutFittingCompressedSize).height
        return layoutAttributes
    }

    // Alternative implementation
    /*
     override func preferredLayoutAttributesFitting(_ layoutAttributes: UICollectionViewLayoutAttributes) -> UICollectionViewLayoutAttributes {
     label.preferredMaxLayoutWidth = layoutAttributes.size.width - contentView.layoutMargins.left - contentView.layoutMargins.right
     layoutAttributes.bounds.size.height = contentView.systemLayoutSizeFitting(UIView.layoutFittingCompressedSize).height
     return layoutAttributes
     }
     */

}
