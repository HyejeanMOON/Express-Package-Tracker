//
//  ContentView.swift
//  ExpressPackageTracker
//
//  Created by MOON on 2023/02/05.
//

import SwiftUI

struct ExpressCompanyListView: View {
    
    var body: some View {
        NavigationView{
            List{
                Section(header:Text("会社")){
                    ForEach(ExpressCompany.allCases, id:\.self){ comapny in
                        NavigationLink(destination: ExpressPackageDetailView()) {
                            Label(comapny.rawValue,systemImage: "house")
                        }
                    }
                }
                
                Section(header: Text("検索履歴")){
                    Label("検索履歴なし",systemImage: "magnifyingglass")
                }
            }
            .navigationTitle(Text("Package Tracker"))
            .navigationBarHidden(false)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ExpressCompanyListView()
    }
}
