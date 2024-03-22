//
//  FAQAnswer.swift
//  ProjetPierre
//
//  Created by apprenant63 on 14/03/2024.
//

import SwiftUI



struct FAQAnswer: View {
    var reponse: String
    
    var body: some View {
        HStack{
            Spacer()
            Text(reponse)
                .font(.system(size: 23))
                .multilineTextAlignment(.center)
                .bold()
            Spacer()
        }
    }
}

#Preview {
    FAQAnswer(reponse: faqs[1].answer)
}
