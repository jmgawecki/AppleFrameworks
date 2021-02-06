//
//  FrameworkGridViewModel.swift
//  AppleFrameworks
//
//  Created by Jakub Gawecki on 31/01/2021.
//

import SwiftUI

final class ViewModel: ObservableObject {
    
    var selectedFramework: Framework? {
        didSet {
            isShowingDetail = true
        }
    }
    
    @Published var isShowingDetail = false
    
    let columns: [GridItem] = [GridItem(.flexible()),
                               GridItem(.flexible()),
                               GridItem(.flexible()),] /// .flexible - based on how many columns you have, its gonna fill that screen
    
}
