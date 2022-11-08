//
//  SwiftUIView.swift
//  PersonalCard
//
//  Created by lpereira on 08/11/22.
//

import SwiftUI

struct InfoView: View {
    let info: String
    let imageName: String
    var body: some View {
        ZStack {
            Rectangle()
                .frame(height: 56, alignment: .center)
                .cornerRadius(20)
                .foregroundColor(.white)
            HStack {
                Image(systemName: imageName)
                    .foregroundColor(.cyan)
                Text(info)
                    .font(.system(size: 15))
                    .foregroundColor(.black)
            }
        }.padding(.all)
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView(info: "email@gmail.com", imageName: "mail")
            .previewLayout(.sizeThatFits)
    }
}
