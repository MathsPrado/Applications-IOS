//
//  ContentView.swift
//  MVVM
//
//  Created by Matheus Prado on 31/01/21.
//

import SwiftUI

let apiUrl = "http://api.letsbuildthatapp.com/static/courses.json"

struct Course: Identifiable, Decodable {
    var id = UUID()
    var name: String
}

class CoursesViewModel: ObservableObject {
    
    @Published var messages = "Message insede observable object"
    
    @Published var courses: [Course] = [
        .init(name: "Course 1"),
        .init(name: "Course 2"),
        .init(name: "Course 3")
    ]
    
    func changeMessage(){
        self.messages = "TEST TEST TEST"
        
    }
    
    func fetchCourses(){
      //JSON AND DECODE AND UPDATE SOME ARRAY PROPERTYE
        guard let url = URL(string: apiUrl) else { return }
        URLSession.shared.dataTask(with: url) { (data, resp, err) in
            
            DispatchQueue.main.async {
                self.courses = try JSONDecoder().decode([Course].self, from: data!)
            }
        }.resume()
    }
    
}

struct ContentView: View {
    
  @ObservedObject var coursesVW = CoursesViewModel()
    
    var body: some View {
        
        NavigationView{
            ScrollView {
                Text(coursesVW.messages)
                
                ForEach(coursesVW.courses){ course in
                    Text(course.name)
                }
                
            }.navigationTitle("Exemple")
            .navigationBarItems(trailing: Button(action: {
                print("Fetching json data")

//                    self.coursesVW.fetchCourses()
//                    self.coursesVW.messages = "Change @ObservedObject"

                self.coursesVW.fetchCourses()

            }, label: {
                Text("fetch Courses")
            }))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
