//
//  ContentView.swift
//  chartsInSwiftUi
//
//  Created by Matheus Prado on 27/01/21..
//

import SwiftUICharts
import SwiftUI

//##pie chart

struct ContentView: View {
    var body: some View {
        VStack {
//            Spacer()
//            //MARK: line Chat
//            LineChartView(data:[12,12,6,1,2,18,6], title: "Line Chart")
//            Spacer()


            
            
            //MARK:  Bar chart
            BarChartView(
                data: ChartData(values: [
                    ("Jan",12),
                    ("Feb",11),
                    ("Mar",10),
                    ("Apr",13),
                    ("May",19),
                ]),
                title: "Bar chart"
            )
//            Spacer()
//
//            //MARK: Pie Chart
//
//            PieChartView(data: [10,8,6], title: "Pie Chart")
//            Spacer()
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


struct Home : View {
    var body: some View{
        ScrollView(.vertical, showsIndicators: false){
            VStack{
                HStack{
                    Text("Hello Fi")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                
                    Spacer(minLength: 0)
                
                    Button(action: {}){
                        Image("menu")
                            .renderingMode(.original)
                            .foregroundColor(.white)
                    }
                }
            }
        }
        .background(Color.black.edgesIgnoringSafeArea(.all))
    }
}
