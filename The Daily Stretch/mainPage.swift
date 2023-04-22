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
    @ObservedObject var store: GoalStore
    
    
    
    var body: some View {
        NotificationView()
        NavigationView{
            VStack{
                Text(Date(), style: .date)
                    .padding(.top, UIScreen.main.bounds.height * -0.03)
                Text("The Daily Stretch")
                    .font(
                    .custom("raleway", size: 34)
                    .weight(.heavy)
                    ) // end font
                    .padding(.top, UIScreen.main.bounds.height * -0.01)
                    .padding(.bottom, UIScreen.main.bounds.height * 0.01)
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
                        }// end ring
                        .offset(x: -150)
                        
                        // Button to open youtube link view
                        NavigationLink(destination: StretchVideo()) {
                            Text("Body Stretch")
                            .foregroundColor(Color.black)
                            .padding(.all, 13.0)
                            .background(Color.green)
                            .cornerRadius(15)

                        }// end navigation link
                    } // end hstack1
//                    .background("Body")
                    HStack{
                        Ring(lineWidth: 20, backgroundColor: Color.red.opacity(0.2), foregroundColor: Color.red,
                             percentage: percentage2)
                        .frame(width: 200, height: 200)
                        .onTapGesture {
                            self.percentage2 = 50
                        }// end ring
                        .offset(x:  -150.0)
                        // news page
                        NavigationLink(destination: newsView()) {
                            Text("Mind Stretch")
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
                        } //end ring
                        .offset(x:  -150.0)
                        // journalling page
                        NavigationLink(destination: goalsView3(store: store)) {
                            Text("Soul Stretch")
                            .foregroundColor(Color.black)
                            .padding(.all, 13.0)
                            .background(Color.green)
                            .cornerRadius(15)
                            

                        }// end navigation link
                        
                    }// end hstack3

                } // end Vstack of buttons and rings
            }// end vstack of title and buttons
            .navigationBarHidden(true)

        } // end nav
        
    } // end view

} // end struct

struct MainPage_Previews: PreviewProvider {
    static var previews: some View {
        MainPage(store: testStore)
    }
}

