//
//  ContentView.swift
//  ActivityRingDemo
//
//  Created by Michayal Mathew on 4/15/23.
//

import SwiftUI

struct MainPage: View {
    @State var percentage1: Double = 0
    @State var percentage2: Double = 0
    @State var percentage3: Double = 0
    
    
    var body: some View {
        NavigationView{
            VStack{
                Text(Date(), style: .date)
                    .padding(.top, 10)
                Text("The Daily Stretch")
                    .font(
                    .custom("raleway", size: 34)
                    .weight(.heavy)
                    ) // end font
//                    .padding(.bottom, UIScreen.main.bounds.height * 0.455)
                // All buttons
                VStack(alignment: .leading){
                    // align the buttons to the rings
                    HStack{
                        // ring stuff
                        Ring(lineWidth: 20, backgroundColor: Color.blue.opacity(0.2), foregroundColor: Color.blue,
                             percentage: percentage1)
                        .frame(width: 200, height: 200)
                        .onTapGesture {
                        self.percentage1 = 50
                        }
                        .offset(x: -150)
                        
                        // Button to open youtube link view
                        NavigationLink(destination: StretchVideo()) {
                            Text("Stretch Page")
                            .foregroundColor(Color.black)
                            .padding(.all, 13.0)
                            .background(Color.green)
                            .cornerRadius(15)

                        }// end navigation link
                    } // end hstack1
                    HStack{
                        Ring(lineWidth: 20, backgroundColor: Color.red.opacity(0.2), foregroundColor: Color.red,
                             percentage: percentage2)
                        .frame(width: 200, height: 200)
                        .onTapGesture {
                            self.percentage2 = 50
                        }
                        .offset(x:  -150.0)
                        // journalling page
                        NavigationLink(destination: MainPageOld()) {
                            Text("Other Page")
                            .foregroundColor(Color.black)
                            .padding(.all, 13.0)
                            .background(Color.green)
                            .cornerRadius(15)

                        }// end navigation link
                        
                    } // end hstack2
                    HStack{
                        Ring(lineWidth: 20, backgroundColor: Color.green.opacity(0.2), foregroundColor: Color.green,
                             percentage: percentage3)
                        .frame(width: 200, height: 200)
                        .onTapGesture {
                            self.percentage3 = 50
                        }
                        .offset(x:  -150.0)
                        // journalling page
                        NavigationLink(destination: JournalView()) {
                            Text("Journal Page")
                            .foregroundColor(Color.black)
                            .padding(.all, 13.0)
                            .background(Color.green)
                            .cornerRadius(15)

                        }// end navigation link
                    }// end hstack3
                } // end zstack
            }// end vstack
            .navigationBarHidden(true)
        } // end nav
    } // end view

} // end struct

struct MainPage_Previews: PreviewProvider {
    static var previews: some View {
        MainPage()
    }
}

