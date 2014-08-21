//
//  TaskManager.swift
//  My Task List
//
//  Created by jobron on 7/25/14.
//  Copyright (c) 2014 jobron. All rights reserved.
//

import UIKit

var taskMgr : TaskManager = TaskManager()

struct task{
    var name = "In-Named"
    var desc = "Un-Described"
}

class TaskManager: NSObject {
    
    var tasks = [task]()
    
    func addTask(name : String, desc: String){
        tasks.append(task(name:name, desc:desc))
    }
}
