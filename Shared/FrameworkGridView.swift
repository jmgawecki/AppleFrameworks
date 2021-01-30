//
//  ContentView.swift
//  Shared
//
//  Created by Jakub Gawecki on 30/01/2021.
//

import SwiftUI

struct FrameworkGridView: View {
    
    let columns: [GridItem] = [GridItem(.flexible()),
                               GridItem(.flexible()),
                               GridItem(.flexible()),] /// .flexible - based on how many columns you have, its gonna fill that screen
    
    var body: some View {
        LazyVGrid(columns: columns, content: {
            FrameworkTitleView(imageName: "arkit", title: "Arkit")
            FrameworkTitleView(imageName: "arkit", title: "Arkit")
            FrameworkTitleView(imageName: "arkit", title: "Arkit")
            FrameworkTitleView(imageName: "arkit", title: "Arkit")
            FrameworkTitleView(imageName: "arkit", title: "Arkit")
            FrameworkTitleView(imageName: "arkit", title: "Arkit")
            FrameworkTitleView(imageName: "arkit", title: "Arkit")
            FrameworkTitleView(imageName: "arkit", title: "Arkit")
            FrameworkTitleView(imageName: "arkit", title: "Arkit")
            FrameworkTitleView(imageName: "arkit", title: "Arkit")


        })
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkGridView()
    }
}
