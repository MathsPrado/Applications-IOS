//
//  chart.swift
//  Gymnastics Monitoring
//
//  Created by Matheus Prado on 12/04/21.
//
import SwiftUICharts
import SwiftUI

struct chart: View {
    
     var info: String
    
    var body: some View {
        NavigationView{
            ScrollView{
                VStack{
                    let iphone12 = Legend(color: .blue, label: "\(info)")
                    
                    let points: [DataPoint] = [
                        .init(value: 2, label: "2", legend: iphone12),
                        .init(value: 4, label: "4", legend: iphone12),
                        .init(value: 6, label: "6", legend: iphone12),
                        .init(value: 2, label: "8", legend: iphone12),
                        .init(value: 20, label: "10", legend: iphone12)
                    ]
                    
                    Section(header: Text("")){
                        LineChartView(dataPoints: points)
                    }
                }
            }
            .navigationTitle("Relação de Presenças")
        }
        
    }
}

struct chart_Previews: PreviewProvider {
    var info : String
    static var previews: some View {
  
        
        chart(info: "Teste")
    }
}
