//
//  SwiftUIView.swift
//  tset
//
//  Created by Arran James on 4/15/23.
//

import SwiftUI

struct mainPage: View {
        
    var body: some View {
            // make entire screen a page
            NavigationView {
                // Vertically stack the title with the navitagtion view
                VStack{
                    Text("The Daily Stretch")
                        .padding(.top, 13.0)
                        .font(
                        .custom("raleway", size: 34)
                        .weight(.heavy)
                        ) // end font
                // create a natigation view to switch pages to the stretch video
                // stack the image and the button
                ZStack{
                    // Tree image load
                    Image("Test image")
                    // Button to open youtube link view
                    NavigationLink(destination: StretchVideo()) {
                        Text("Stretch Page")
                        .padding(.all, 13.0)
                        .background(Color.green)
                        .cornerRadius(15)
                        .alignmentGuide(VerticalAlignment.center, computeValue: { _ in -81.5 }
                        ) // end alignement

                    }// end navigation link
                }// end zstack
            }//end vstck
        }//end navview
    }//end view
}//end struct

struct mainPage_Previews: PreviewProvider {
    static var previews: some View {
        mainPage()
    }
}
