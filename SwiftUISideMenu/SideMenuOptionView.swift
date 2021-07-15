//
//  SideMenuOptionView.swift
//  SwiftUISideMenu
//
//  Created by Nitesh jha on 31/03/21.
//

import SwiftUI

struct SideMenuOptionView: View {
    
    let optionModel: SideMenuViewModel
    
    var body: some View {
        HStack(spacing: 16) {
            Image(systemName: optionModel.image)
                .frame(width: 25, height: 25)
            Text(optionModel.title)
                .font(.system(size: 15, weight: .semibold))
            
            Spacer()
        }
        .foregroundColor(.white)
        .padding()
    }
}

struct SideMenuOptionView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuOptionView(optionModel: .Profile)
    }
}
