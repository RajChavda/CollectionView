//
//  ViewController.swift
//  TempProject
//
//  Created by Rudrarajsinh Chavda on 19/08/19.
//  Copyright © 2019 Rudrarajsinh Chavda. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate,UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {

    @IBOutlet weak var collection_custom : UICollectionView!

    let items = [
        "Ab",
        "Lorem ipsum dolor sit amet.Lorem ipsum dolor sit amet.Lorem ipsum dolor sit amet.",
        "CDE",
        "Xyz",
        "P",
        "QR",
        "Lorem ipsum dolor sit amet.",
        "Lorem ipsum dolor sit.",
        "Lorem ipsum dolor sit amet, consectetur adipiscing.",
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor.",
        "Lorem ipsum dolor sit amet, consectetur."
    ]

    let columnLayout = ColumnFlowLayout(
        cellsPerRow: 3,
        minimumInteritemSpacing: 5,
        minimumLineSpacing: 5,
        sectionInset: UIEdgeInsets(top: 5, left: 5, bottom: 5, right: 5)
    )
    
    //MARK:- Life Cycle

    override func viewDidLoad()
    {
        super.viewDidLoad()
        collection_custom.collectionViewLayout = columnLayout
        collection_custom.contentInsetAdjustmentBehavior = .always
//        collection_custom.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "Cell")
        collection_custom.delegate = self
        collection_custom.dataSource = self
    }
    override func viewWillAppear(_ animated: Bool)
    {
        super.viewWillAppear(true)
    }

    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }

     func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 6
    }

     func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collection_custom.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! Cell
        cell.backgroundColor = UIColor.orange
        cell.label.text = items[indexPath.row]

        return cell
    }
//    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
//        collection_custom.collectionViewLayout.invalidateLayout()
//        super.viewWillTransition(to: size, with: coordinator)
//    }
}

