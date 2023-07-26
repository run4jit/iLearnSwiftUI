//
//  MyButton.swift
//  ILearnSwiftUI
//
//  Created by Ranjeet Singh on 24/07/23.
//

import SwiftUI

enum ButtonType: String {
    case basic = "Default Button"
    case capsul = "Capsule Button"
}
/*
struct CustomButton: View {
    @Environment(\.isEnabled) var isEnabled

    struct ButtonAtribute {
        let title: String
        let foreground: Color = .blue
        let background: Color = .gray
        let image: Image? = nil
    }
    
    enum ButtonState: CaseIterable {
        case enabled(atribute: ButtonAtribute)
        case disabled(atribute: ButtonAtribute)
        case highlited(atribute: ButtonAtribute)
        
        static var allCases: [CustomButton.ButtonState] = [.enabled(atribute: ButtonAtribute(title:"")), .disabled(atribute: ButtonAtribute(title:"")), .highlited(atribute: ButtonAtribute(title:""))]
        
        
    }
    
    private var states: [ButtonState]
    private let action: (() -> Void)

    
    
    var body: some View {
        Button {
                    action()
                } label: {
                    HStack {
                        icon
                        Text(text).font(.body)
                    }
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity)
                    .padding(8)
                }
                .buttonStyle(CustomButtonStyle(isEnabled: isEnabled))
            }
    }


private struct CustomButtonStyle: ButtonStyle {
    let isEnabled: Bool

    @ViewBuilder
    func makeBody(configuration: Configuration) -> some View {
        let backgroundColor = isEnabled ? Color.purple : Color(UIColor.lightGray)
        let pressedColor = Color.red
        let background = configuration.isPressed ? pressedColor : backgroundColor

        configuration.label
            .foregroundColor(.white)
            .background(background)
            .cornerRadius(8)
    }
}
*/
struct MyButton: View {
    var body: some View {
        VStack {
            Button(ButtonType.basic.rawValue) {
                buttonAction(.basic)
            }
            .buttonStyle(.bordered)
            .foregroundColor(.red)
            
            Button(ButtonType.basic.rawValue, role: .cancel) {
                buttonAction(.basic)
            }
            .buttonStyle(.borderedProminent)
            
            Button() {
                buttonAction(.basic)
            } label: {
                Text(ButtonType.basic.rawValue)
                    .font(.title)
                    .foregroundColor(.yellow)
                    .frame(width: 300)
                    .padding(EdgeInsets(top: 10, leading: 20, bottom: 10, trailing: 20))
                    .background(.red)
                    .clipShape(Capsule())
                
            }
            
            Button(role: .cancel) {
                buttonAction(.basic)
            } label: {
                Label("Weather", systemImage: "cloud.rain")
                    
            }
            .buttonStyle(.bordered)
            .tint(.purple)
            
            
            
        }.navigationTitle(UIElementName.button.rawValue)
    }
    func buttonAction(_ type: ButtonType) {
        debugPrint(type.rawValue)
    }
    
}

struct MyButton_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            MyButton()
        }
    }
}
