//
//  ExpressPackageDetailView.swift
//  ExpressPackageTracker
//
//  Created by MOON on 2023/02/05.
//

import SwiftUI

struct ExpressPackageDetailView: View {
    @State var expressCompany:ExpressCompany
    @State var trackerIdList: [String] = []
    @State private var currentId: String = ""
    @FocusState private var focusState: Bool
    
    var body: some View {
        VStack{
            List{
                Section("追跡ID"){
                    TextField("追跡IDを入力してください",text: $currentId)
                        .focused($focusState)
                    Button {
                        trackerIdList.append(currentId)
                        currentId = ""
                    } label: {
                        Text("追加")
                    }
                }
                
                Section("追跡IDリスト"){
                    ForEach(trackerIdList, id:\.self){ trackerId in
                        Label(trackerId, systemImage: "exclamationmark.circle")
                    }
                    .onDelete { index in
                        trackerIdList.remove(atOffsets: index)
                    }
                }
            }
        }
        .navigationTitle(Text(expressCompany.rawValue))
        .toolbar {
            Button {
                // TODO
            } label: {
                Image(systemName: "magnifyingglass")
            }

        }
    }
}

struct ExpressPackageDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ExpressPackageDetailView(expressCompany: .PostJapan, trackerIdList: [""])
    }
}
