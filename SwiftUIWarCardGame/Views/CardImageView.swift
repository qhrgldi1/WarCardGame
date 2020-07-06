//
//  CardImageView.swift
//  SwiftUIWarCardGame
//
//  Created by JSworkstation on 2020/07/06.
//  Copyright © 2020 JSworkstation. All rights reserved.
//

import SwiftUI

struct CardImageView: View {
    
    @Binding var imgName: String
    
    var body: some View {
        Image(imgName)
            .padding(5)
    }
}

struct CardImageView_Previews: PreviewProvider {
    static var previews: some View {
        CardImageView(imgName: Binding.constant("card14"))
            .previewLayout(.fixed(width: 150, height: 200))
    }
}
