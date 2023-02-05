//
//  ExpressPackageDetailView.swift
//  ExpressPackageTracker
//
//  Created by MOON on 2023/02/05.
//

import SwiftUI

struct ExpressPackageDetailView: View {
    var body: some View {
        List{
            Text("日本郵便")
        }
        .navigationTitle("日本郵便")
        .navigationBarHidden(false)
    }
}

struct ExpressPackageDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ExpressPackageDetailView()
    }
}
