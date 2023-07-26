//
//  UIModel.swift
//  ILearnSwiftUI
//
//  Created by Ranjeet Singh on 23/07/23.
//

import Foundation
import SwiftUI


protocol SomeView: View {
    
}

func makeNavigationLink<Destination: View>(label: String, destination: Destination) -> some View {
        NavigationLink(destination: destination, label: {
            Text(label)
                .foregroundColor(.primary)
                
        })
    }

enum UIElementName: String, CaseIterable {
    case text = "Text"
    case button = "Button"
    case image = "Image"
    case textField = "TextField"
    case picker = "Picker"
    case toggle = "Toggle"
    case slider = "Slider"
    case segmentBar = "Segment Bar"
    case activityIndecator = "Activity Indecator"
    case progress = "Progress View"
    case scrollView = "Scroll View"
    case tableView = "Table View"
    case gridView = "Grid View"
    case audio = "Audio Player"
    case video = "Video Player"
    case map = "Map"
    case splitView = "Split View"
    
    @ViewBuilder
    var viewFactory: some View {
        switch self {
        case .text:
            makeNavigationLink(label: self.rawValue, destination: MyTextView(title: self.rawValue))
        case .button:
            makeNavigationLink(label: self.rawValue, destination: MyButton())

            //        case .image:
            //            <#code#>
            //        case .textField:
            //            <#code#>
            //        case .picker:
            //            <#code#>
            //        case .toggle:
            //            <#code#>
            //        case .slider:
            //            <#code#>
            //        case .segmentBar:
            //            <#code#>
            //        case .activityIndecator:
            //            <#code#>
            //        case .progress:
            //            <#code#>
            //        case .scrollView:
            //            <#code#>
            //        case .tableView:
            //            <#code#>
            //        case .gridView:
            //            <#code#>
            //        case .audio:
            //            <#code#>
            //        case .video:
            //            <#code#>
            //        case .map:
            //            <#code#>
            //        case .splitView:
            //            <#code#>
        default:
            makeNavigationLink(label: self.rawValue, destination: MyTextView(title: self.rawValue))
        }
        
    }
}


