//
//  ContentView.swift
//  ExpressPackageTracker
//
//  Created by MOON on 2023/02/05.
//

import SwiftUI

struct ExpressCompanyListView: View {
    
    var body: some View {
        List{
            Section(header:Text("郵送会社")){
                ForEach(ExpressCompany.allCases, id:\.self){ comapny in
                    Label(comapny.rawValue,systemImage: "house")
                    
                }
            }.padding()
            
            Section(header: Text("検索履歴")){
                Label("検索履歴なし",systemImage: "magnifyingglass")
            }.padding()
        }
        .navigationTitle("Epxress Package Tracker")
        .navigationBarHidden(false)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ExpressCompanyListView()
    }
}
