//
//  FrameworkElementView.swift
//  AppleFrameworks
//
//  Created by Jakub Gawecki on 31/01/2021.
//

import SwiftUI

struct FrameworkDetailedView: View {
    @Binding var isShowingDetailView: Bool
    @State private var isShowingSafariView = false
    
    var framework: Framework
    
    var body: some View {
        VStack {
            HStack {
                Spacer()
                CrossButton(isShowingDetailView: $isShowingDetailView)
            }
            .padding(.trailing)
            
            Spacer()
            
            FrameworkTitleView(framework: framework)
            
            Description(framework: framework)
            
            Spacer()
            
            LearnMoreButtonView(isShowingSafariView: $isShowingSafariView)
        }
        .fullScreenCover(isPresented: $isShowingSafariView, content: {
            SafariView(url: URL(string: framework.urlString) ?? URL(string: "www.apple.co.uk")!)
        })
    }
}

struct FrameworkElementView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkDetailedView(isShowingDetailView: .constant(false), framework: MockData.sampleFramework)
            .preferredColorScheme(.dark)
    }
}

//MARK:- Views

struct CrossButton: View {
    @Binding var isShowingDetailView: Bool
    var body: some View {
        Button {
            isShowingDetailView = false
        } label: {
            Image(systemName: "xmark")
                .foregroundColor(Color(.label))
                .imageScale(.large)
                .frame(width: 44, height: 44, alignment: .center)
        }
    }
}

struct Description: View {
    let framework: Framework
    
    var body: some View {
        Text(framework.description)
            .font(.body)
            .padding()
    }
}

struct LearnMoreButtonView: View {
    @Binding var isShowingSafariView: Bool
    var body: some View {
        Button {
            isShowingSafariView = true
        } label: {
            Text("Learn More")
                .font           (.title2)
                .fontWeight     (.semibold)
                .frame          (width: 280, height: 50, alignment: .center)
                .background     (Color.red)
                .foregroundColor(.white)
                .cornerRadius   (10)
                
        }
    }
}


