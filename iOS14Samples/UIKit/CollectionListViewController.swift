//
//  CollectionListViewController.swift
//  iOS14Samples
//
//  Created by Takuya Yokoyama on 2020/06/23.
//

import UIKit

class CollectionListViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    private lazy var dataSource = UICollectionViewDiffableDataSource<Int, Int>(collectionView: collectionView, cellProvider: { (collectionView, indexPath, item) -> UICollectionViewCell? in
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "collectionViewCell", for: indexPath) as! UICollectionViewListCell
        var content = cell.defaultContentConfiguration()
        content.text = "\(item)"
        cell.contentConfiguration = content
        return cell
    })
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.register(UICollectionViewListCell.self, forCellWithReuseIdentifier: "collectionViewCell")
        
        let layout = UICollectionViewCompositionalLayout.list(using: .init(appearance: .plain))
        collectionView.setCollectionViewLayout(layout, animated: true)
        
        collectionView.dataSource = dataSource
        
        var snapshot = NSDiffableDataSourceSnapshot<Int, Int>()
        snapshot.appendSections([0])
        snapshot.appendItems(Array((0..<1000)), toSection: 0)
        dataSource.apply(snapshot)
    }
}

import SwiftUI

struct CollectionListView: UIViewControllerRepresentable {
    func makeUIViewController(context: Context) -> CollectionListViewController {
        CollectionListViewController()
    }
    
    func updateUIViewController(_ uiViewController: CollectionListViewController, context: Context) {
    }
}
