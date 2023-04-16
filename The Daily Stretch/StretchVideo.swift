//
//  StretchVideo.swift
//  tset
//
//  Created by Arran James on 4/15/23.
//

import SwiftUI

struct StretchVideo: View {
    var body: some View {
        
        VStack{
            Text("Today's Stretch")
                .font(.largeTitle)
                .padding(.top, UIScreen.main.bounds.height * 0.0)
            VideoView(videoID: "FI51zRzgIe4")
                .frame(minHeight: 0, maxHeight: UIScreen.main.bounds.height * 0.5)
                .cornerRadius(13.0)
                .padding(.horizontal, 24)
            Spacer()
        }//end vstack
    }//end view
}//end struct

struct StretchVideo_Previews: PreviewProvider {
    static var previews: some View {
        StretchVideo()
    }
}
