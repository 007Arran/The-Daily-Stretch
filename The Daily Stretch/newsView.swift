//
//  newView.swift
//  The Daily Stretch
//
//  Created by Arran James on 4/15/23.
//

import SwiftUI

struct newsView: View {
    var body: some View {
        webView(urlToGo: "https://www.morningbrew.com/daily/issues/latest")
    }
}

struct newView_Previews: PreviewProvider {
    static var previews: some View {
        newsView()
    }
}
