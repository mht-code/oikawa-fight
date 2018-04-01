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

        // flatMap Sample Code
        let _ = single.subscribe { singleEvent in
            print(singleEvent)
        }

        // flatMap Traning Code
        let _ = single3.subscribe { event in
            print(event)
        }
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

    enum SomeError: Error {
        case a
    }

    // Sample Code
    let single = Single<Int>.create { singleEvent in
        singleEvent(.success(1))
        return Disposables.create()
        }.flatMap { value in
            return Single<Int>.create { singleEvent in
                singleEvent(.success(value + 1))
                return Disposables.create()
            }
        }.flatMap { value in
            return Single<Int>.create { singleEvent in
                singleEvent(.error(SomeError.a))
                return Disposables.create()
            }
        }.flatMap { value in
            return Single<Int>.create { singleEvent in
                singleEvent(.success(value * 2))
                return Disposables.create()
            }
    }

    // Traning Code
    let single2 = Single<Int>.create { singleEvent in
        singleEvent(.success(1))
        return Disposables.create()
        // 1回目
        }.flatMap { value in
            return Single<Int>.create { singleEvent in
                singleEvent(.success(value + 1))
                return Disposables.create()
            }
            // 2回目
        }.flatMap { value in
            return Single<Int>.create { singleEvent in
                singleEvent(.error(SomeError.a))
                return Disposables.create()
            }
            // 3回目
        }.flatMap { value in
            return Single<Int>.create { singleEvent in
                singleEvent(.success(value * 2))
                return Disposables.create()
            }
    }

    let single3 = Single<Int>.create { event in
        event(.success(1))
        return Disposables.create()
        // 1回目
        }.flatMap { value in
            return Single<Int>.create { event in
                event(.success(value + 1))
                return Disposables.create()
            }
            // 2回目
        }.flatMap { value in
            return Single<Int>.create { event in
                event(.error(SomeError.a))
                return Disposables.create()
            }
            // 3回目
        }.flatMap { value in
            return Single<Int>.create { event in
                event(.success(value * 2))
                return Disposables.create()
            }
    }

}
