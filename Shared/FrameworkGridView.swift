//
//  ContentView.swift
//  Shared
//
//  Created by Jakub Gawecki on 30/01/2021.
//

import SwiftUI

struct FrameworkGridView: View {
    
    @StateObject var viewModel = ViewModel()
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: viewModel.columns, content: {
                    ForEach(MockData.frameworks) { framework in
                        FrameworkTitleView(framework: framework)
                            .onTapGesture {
                                viewModel.selectedFramework = framework
                            }
                    }
                })
            }
            .navigationTitle("🍏 Frameworks")
            .sheet(isPresented: $viewModel.isShowingDetail, content: {
                FrameworkDetailedView(isShowingDetailView: $viewModel.isShowingDetail, framework: viewModel.selectedFramework!)
            })
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkGridView()
            .preferredColorScheme(.dark)
    }
}
