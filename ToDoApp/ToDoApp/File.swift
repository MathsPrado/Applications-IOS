//
//  File.swift
//  ToDoApp
//
//  Created by Matheus Prado on 04/11/20.
//

import Foundation
import SwiftUI
import Combine

struct Task : Identifiable {
    var id = String()
    var toDoItem = String()
}

class TaskStore : ObservableObject {
    @Published var tasks = [Task]()
}
