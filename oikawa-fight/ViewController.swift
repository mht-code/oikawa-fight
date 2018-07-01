//
//  ViewController.swift
//  oikawa-fight
//
//  Created by 及川ひな on 2017/02/10.
//  Copyright © 2017年 oikawa. All rights reserved.
//

import UIKit
import AWSS3

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func uploadTextFile(_ sender: Any) {
        // textFileを作成している
        let docDir = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)[0] as String
        let text = "Upload File."
        let fileName = "test.txt"
        let filePath = "\(docDir)/\(fileName)"
        try! text.write(toFile: filePath, atomically: true, encoding: String.Encoding.utf8)
        let transferManager = AWSS3TransferManager.default()

        // アップロードする先のS3とアップロードするデータを整形
        let uploadRequest = AWSS3TransferManagerUploadRequest()
        uploadRequest?.bucket = "YOUR BUCKET NAME"
        uploadRequest?.key = "sample.txt"
        uploadRequest?.body = URL(string: "file://\(filePath)")!
        uploadRequest?.acl = .publicRead
        uploadRequest?.contentType = "text/plain"

        // アップロードタスクを生成
        transferManager.upload(uploadRequest!).continueWith { (task: AWSTask) -> AnyObject? in
            if task.error == nil {
                print("success")
            } else {
                print("fail")
            }
            return nil
        }
    }

}

