//
//  ViewController.swift
//  oikawa-fight
//
//  Created by 及川ひな on 2017/02/10.
//  Copyright © 2017年 oikawa. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa
import RxDataSources

class ViewController: UIViewController, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!

    var disposeBag: DisposeBag = DisposeBag()

    let dataSource = RxTableViewSectionedReloadDataSource<SectionModel<String, String>>(configureCell: {(_, _, _, _ ) in
        fatalError()
    })
    let viewModel: ViewModel = ViewModel()

    var cellItems: Variable<[String]> = Variable([])

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.tableFooterView = UIView()
        tableView.backgroundColor = UIColor.lightGray

        let nib = UINib(nibName: "RxTableViewCell", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: "RxTableViewCell")

        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "Cell")

        //elementはSectionModelの対応するitem
        dataSource.configureCell = { (_, table: UITableView, indexPath: IndexPath, element: String) in
            let cell = table.dequeueReusableCell(withIdentifier: "RxTableViewCell") as! RxTableViewCell
            cell.textLabel?.value(forKey: element)
            return cell
        }

        //sectionのタイトルを設定する
        dataSource.titleForHeaderInSection = { dataSource, sectionIndex in
            return dataSource[sectionIndex].model
        }

        viewModel.observableItems.bind(to: tableView.rx.items(dataSource: dataSource))
            .disposed(by: disposeBag)

        tableView.rx
            .setDelegate(self)
            .disposed(by: disposeBag)

    }

    // to prevent swipe to delete behavior
    func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCellEditingStyle {
        return .none
    }

    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 40
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

