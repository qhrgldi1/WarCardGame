//
//  ScoreView.swift
//  SwiftUIWarCardGame
//
//  Created by JSworkstation on 2020/07/06.
//  Copyright © 2020 JSworkstation. All rights reserved.
//

import SwiftUI

struct ScoreView: View {
    
    let whoIs: String
    let whoScore: Int
    
    var body: some View {
        VStack {
            Text(whoIs)
                .padding(.vertical)
            Text(String(whoScore))
        }
    }
}

struct ScoreView_Previews: PreviewProvider {
    static var previews: some View {
        ScoreView(whoIs: "Who?", whoScore: 0)
            .previewLayout(.fixed(width: 100, height: 100))
    }
}
