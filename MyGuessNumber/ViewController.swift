//
//  ViewController.swift
//  MyGuessNumber
//
//  Created by sample on 2017/9/8.
//  Copyright © 2017年 sample. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {
    var answar = ""
    
    @IBOutlet weak var guess: NSTextField!
    @IBOutlet weak var hist: NSScrollView!
    @IBOutlet weak var hist2: NSTextField!
    @IBOutlet weak var hist3: NSTextField!
    
    
    @IBAction func doGuese(_ sender: Any) {
      
    }
    
    @IBAction func doReset(_ sender: Any) {
    
    }
    
    func createAnswar() -> String{
//        var nums = (0...9)
//        var numsv = shullfe(source: Array(nums))
        var rand = Array(0...9)
        rand = shullfe(source: rand)
        var ret = ""
        for v in 0..<3{
            ret += String(rand[v])
        }
//        print(type(of:rand))
        return ret
    }
    
    func shullfe(source:Array<Int>) -> Array<Int> {
        var poker = source
        let n = poker.count
        var rand = -1
        var temp = -1
        var max = -1
        for i in 0 ..< n{
            max = n - i
            rand = Int(arc4random_uniform(UInt32(max)))
            //swap : poker[rand] <-> poker[last]
            temp = poker[rand]
            poker[rand] = poker[ max - 1 ]
            poker[ max - 1 ] = temp
        }
        return poker
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        answar = createAnswar()
        print(answar)
        // Do any additional setup after loading the view.
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }


}

