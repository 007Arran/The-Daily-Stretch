//
//  SwiftUIView.swift
//  tset
//
//  Created by Arran James on 4/15/23.
//

import SwiftUI

struct MainPageOld: View {
        
    var body: some View {
            // make entire screen a page
        NavigationView{
                // Vertically stack the title with the navitagtion view
                // Stack the stuff
                VStack{
                    Text(Date(), style: .date)
                        .padding(.top, 10)
                    Text("The Daily Stretch")
                        .font(
                        .custom("raleway", size: 34)
                        .weight(.heavy)
                        ) // end font
                        .padding(.bottom, UIScreen.main.bounds.height * 0.455)
                        // All buttons
                        HStack{
                            // Button to open youtube link view
                            NavigationLink(destination: StretchVideo()) {
                                Text("Stretch Page")
                                .foregroundColor(Color.black)
                                .padding(.all, 13.0)
                                .background(Color.green)
                                .cornerRadius(15)

                            }// end navigation link
                            // journalling page
                            NavigationLink(destination: JournalView()) {
                                Text("Journal Page")
                                .foregroundColor(Color.black)
                                .padding(.all, 13.0)
                                .background(Color.green)
                                .cornerRadius(15)

                            }// end navigation link
                        } // end hstack
                    Spacer()
                }// end vstack
                .navigationBarHidden(true)
                .background(Image("Test image"))
                Spacer()
        }//end navview
    }//end view
}//end struct

struct MainPageOld_Previews: PreviewProvider {
    static var previews: some View {
        MainPageOld()
    }
}
