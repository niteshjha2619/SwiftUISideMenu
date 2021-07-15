//
//  SIdeMenuView.swift
//  SwiftUISideMenu
//
//  Created by Nitesh jha on 31/03/21.
//

import SwiftUI

struct SIdeMenuView: View {
    @Binding var isShowing: Bool
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color.blue, Color.purple]), startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            
            VStack {
                // For Header
                SideMenuHeaderView(isShowing: $isShowing)
                    .frame(height: 170)
                
                //For Cell
                
                ForEach(SideMenuViewModel.allCases, id: \.self) { option in
                    NavigationLink(
                        destination: Text(option.title),
                        label: {
                            SideMenuOptionView(optionModel: option)
                        })

                }
                Spacer()
            }
        }.navigationBarHidden(true)
    }
}

struct SIdeMenuView_Previews: PreviewProvider {
    static var previews: some View {
        SIdeMenuView(isShowing: .constant(true))
    }
}
