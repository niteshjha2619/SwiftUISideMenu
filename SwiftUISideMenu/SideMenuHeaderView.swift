//
//  SideMenuHeadeView.swift
//  SwiftUISideMenu
//
//  Created by Nitesh jha on 31/03/21.
//

import SwiftUI

struct SideMenuHeaderView: View {
    @Binding var isShowing: Bool
    
    var body: some View {
        ZStack(alignment: .topTrailing) {
            Button(action: {
                withAnimation(.spring()) {
                    isShowing.toggle()
                }
            }, label: {
                Image(systemName: "xmark")
                    .frame(width: 32, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                    .foregroundColor(.white)
                    .padding()
            })
        VStack(alignment: .leading) {
            Image(systemName: "person.circle")
                .resizable()
                .clipped()
                .scaledToFill()
                .frame(width: 64, height: 64)
                .clipShape(Circle())
                .padding(.bottom, 16)
            
            Text("Nitesh Jha")
                .font(.system(size: 24, weight: .semibold))
            Text("@Nitesh")
                .font(.system(size: 15))
                .padding(.bottom , 20)
            
            HStack(spacing: 12) {
//                HStack(spacing: 4) {
//                    Text("abc")
//                    Text("hdsfb")
//                }
//                HStack(spacing: 4) {
//                    Text("abc")
//                    Text("hdsfb")
//                }
                Spacer()
            }
            
            Spacer()
                
        }
    }
        .foregroundColor(.white)
        .padding()
    }
}

struct SideMenuHeadeView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuHeaderView(isShowing: .constant(true))
    }
}
