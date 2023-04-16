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
        ZStack {
            Ring(lineWidth: 20, backgroundColor: Color.blue.opacity(0.2), foregroundColor: Color.blue,
                 percentage: percentage1)
        .frame(width: 200, height: 200)
        .onTapGesture {
            self.percentage1 = 50
        }
        .offset(x:  -200.0, y: -200.0)
            
            Ring(lineWidth: 20, backgroundColor: Color.red.opacity(0.2), foregroundColor: Color.red,
                 percentage: percentage2)
        .frame(width: 200, height: 200)
        .onTapGesture {
            self.percentage2 = 50
        }
        .offset(x:  -200.0, y: 0.0)
            
            Ring(lineWidth: 20, backgroundColor: Color.green.opacity(0.2), foregroundColor: Color.green,
                 percentage: percentage3)
        .frame(width: 200, height: 200)
        .onTapGesture {
            self.percentage3 = 50
        }
        .offset(x:  -200.0, y: 200.0)
    }
        
    }

}

struct MainPage_Previews: PreviewProvider {
    static var previews: some View {
        MainPage()
    }
}

