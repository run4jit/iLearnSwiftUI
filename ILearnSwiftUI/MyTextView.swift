//
//  MyTextView.swift
//  ILearnSwiftUI
//
//  Created by Ranjeet Singh on 23/07/23.
//

import SwiftUI

struct MyTextView: View {
    let title: String
    
    var body: some View {
        VStack(alignment:.trailing) {
            Text("\"Faith is the bird that feels the light and sings when the dawn is still dark.\"")
                .font(.headline)
                .foregroundColor(.primary)
        
            Text("- By Rabindranath Tagore")
                .font(.system(size: 15, weight: .light, design: .serif))
                .foregroundColor(.secondary)
                .italic()
                .padding()
                .lineLimit(1)
                .frame(width: 230)
                .offset(y: -10)
            
        }
        .navigationTitle(title)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct MyTextView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            MyTextView(title: UIElementName.text.rawValue)
        }
    }
}
