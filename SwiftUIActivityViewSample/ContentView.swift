//
//  ContentView.swift
//  SwiftUIActivityViewSample
//
//  Created by Hiroaki Tomiyoshi on 2019/11/05.
//  Copyright © 2019 Hiroaki Tomiyoshi. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var text: String = ""
    @State private var showActivityView: Bool = false
    
    var body: some View {
        VStack {
            TextField("text", text: $text)
            Button(action: {
                self.showActivityView = true
            }) {
                Image(systemName: "square.and.arrow.up")
            }
            .sheet(isPresented: self.$showActivityView) {
                ActivityView(
                    activityItems: [text],
                    applicationActivities: nil
                )
            }
        }
        .padding(16)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
