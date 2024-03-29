//
//  OnboardingView.swift
//  Fructus
//
//  Created by Семён Рытенков on 03.04.2021.
//

import SwiftUI

struct OnboardingView: View {
    
    // MARK: - PROPERTIES
    
    var fruits: [Fruit] = fruitsData
    
    // MARK: - BODY
    
    var body: some View {
        TabView {
            ForEach(fruits[0 ... 5]) { item in
                FruitCardView(fruit: item)
            } //: LOOP
        } //: TAB VIEW
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
    } //: BODY
}

// MARK: - PREVIEW

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView(fruits: fruitsData)
            .previewDevice("iPhone 11 Pro")
    }
}
