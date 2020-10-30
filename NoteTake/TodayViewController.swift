//
//  TodayViewController.swift
//  NoteTake
//
//  Created by Can Kalender on 2.09.2020.
//  Copyright © 2020 Can Kalender. All rights reserved.
//

import Cocoa
import NotificationCenter
import CoreData


class TodayViewController: NSViewController, NCWidgetProviding {
    var textsData: [NSManagedObject] = []

    @IBOutlet var textView: NSTextView!
    var textStorage: NSTextStorage!
    override var nibName: NSNib.Name? {
        return NSNib.Name("TodayViewController")
    }
    
    func widgetPerformUpdate(completionHandler: (@escaping (NCUpdateResult) -> Void)) {
        // Update your data and prepare for a snapshot. Call completion handler when you are done
        // with NoData if nothing has changed or NewData if there is new data since the last
        // time we called you
        textStorage = NSTextStorage()
        
        completionHandler(.noData)
    }
    
    

}
