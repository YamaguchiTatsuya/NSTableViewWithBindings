//
//  ViewController.swift
//  NSTableViewWithBindings
//
//  Created by TATSUYA YAMAGUCHI on 2020/01/21.
//  Copyright © 2020 TATSUYA YAMAGUCHI. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {

    @IBOutlet var arrayController: NSArrayController?
    
    @objc dynamic var propsArray: [TableProps] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let tp1 = TableProps(name: "apple")
        let tp2 = TableProps(name: "banana")
        let tp3 = TableProps(name: "chocolate")

        assert(arrayController != nil, "arrayController is nil")

        arrayController?.addObject(tp1)
        arrayController?.addObject(tp2)
        arrayController?.addObject(tp3)
                
        for tp in propsArray {
            print(tp.name)
        }
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }


}



class TableProps: NSObject {

    @objc dynamic var name: String = ""
    
    init(name: String) {
        super.init()
        
        self.name = name
    }
}
