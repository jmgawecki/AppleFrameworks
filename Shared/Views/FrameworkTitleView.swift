//
//  GridElement.swift
//  AppleFrameworks
//
//  Created by Jakub Gawecki on 30/01/2021.
//

import SwiftUI

struct FrameworkTitleView: View {
    var framework: Framework
    
    var body: some View {
        VStack {
            Image(framework.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 90, height: 90, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            
            Text(framework.name)
                .font(.title2)
                .fontWeight(.semibold)
                .scaledToFit()              /// Will shrink if neeeded
                .minimumScaleFactor(0.6)    /// But only down to 60%
        }
        .padding()
    }
}

