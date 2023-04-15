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
            Text("The stretching video")
            VideoView(videoID: "FI51zRzgIe4")
                .frame(minHeight: 0, maxHeight: UIScreen.main.bounds.height * 0.3)
                .cornerRadius(13.0)
                .padding(.horizontal, 24)
        }//end vstack
    }//end view
}//end struct

struct StretchVideo_Previews: PreviewProvider {
    static var previews: some View {
        StretchVideo()
    }
}
