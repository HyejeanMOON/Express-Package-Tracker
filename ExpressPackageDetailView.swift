//
//  ExpressPackageDetailView.swift
//  ExpressPackageTracker
//
//  Created by MOON on 2023/02/05.
//

import SwiftUI

struct ExpressPackageDetailView: View {
    @State var expressCompany:ExpressCompany
    var body: some View {
        List{
            Text("日本郵便")
        }
        .navigationTitle(Text(expressCompany.rawValue))
    }
}

struct ExpressPackageDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ExpressPackageDetailView(expressCompany: .PostJapan)
    }
}
