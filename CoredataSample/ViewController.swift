//
//  ViewController.swift
//  CoredataSample
//
//  Created by 伊藤 剛 on 2017/04/09.
//  Copyright © 2017年 dw-test01. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        
        let viewContext = appDelegate.persistentContainer.viewContext
        let model = NSEntityDescription.entity(forEntityName: "Model", in: viewContext)
        let newRecord = NSManagedObject(entity: model!, insertInto: viewContext)
        newRecord.setValue("値", forKey: "someDataA") //値を代入
        do {
            try viewContext.save()
        } catch {
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func tapMybutton(_ sender: Any) {
        let appDelegate: AppDelegate = UIApplication.shared.delegate as! AppDelegate
        let viewContext = appDelegate.persistentContainer.viewContext
        let query: NSFetchRequest<Model> = Model.fetchRequest()
        
        do {
            let fetchResults = try viewContext.fetch(query)
            for result: AnyObject in fetchResults {
                let testString: String? = result.value(forKey: "someDataA") as? String
                print(testString ?? "")
            }
        } catch {
        }

    }

}

