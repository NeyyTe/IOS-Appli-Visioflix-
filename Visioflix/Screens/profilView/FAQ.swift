//
//  FAQ.swift
//  ProjetPierre
//
//  Created by apprenant63 on 13/03/2024.
//

import SwiftUI


struct FAQ: View {
    @State private var selectedFAQ: FAQItem?
    @Environment(\.dismiss) var dismiss
    var body: some View {
        NavigationView {
            ZStack{
                colorBackground
                    .edgesIgnoringSafeArea(.top)
                
                VStack(spacing: 0) {
                    VStack(spacing: 0) {
                        ForEach(faqs) { faq in
                            DisclosureGroup(
                                isExpanded: Binding<Bool>(
                                    get: { selectedFAQ == faq },
                                    set: { expanded in
                                        if expanded {
                                            selectedFAQ = faq
                                        } else {
                                            selectedFAQ = nil
                                        }
                                    }
                                ),
                                content: {
                                    Text(faq.answer)
                                        .font(.system(size: 17))
                                        .foregroundColor(.white)
                                        .padding(EdgeInsets(top: 15, leading: 20, bottom: 15, trailing: 20))
                                },
                                label: {
                                    HStack {
                                        Text(faq.question)
                                            .font(.system(size: 23))
                                            .foregroundColor(.white)
                                    }
                                    .padding(EdgeInsets(top: 15, leading: 20, bottom: 15, trailing: 20))
                                }
                            )
                            .padding()
                            .background(Color.gray.opacity(0.2))
                            .cornerRadius(10)
                        }
                        .padding()
                    }
                    
                    .navigationBarTitle("FAQ")
                    .navigationBarTitleDisplayMode(.inline)
                    
                    Spacer()
                }
                
            }
        }
        .navigationBarBackButtonHidden(true)
            .navigationBarItems(leading:
                                    Button(action: {
                dismiss()
            }) {
                Image(systemName: "chevron.left")
                    .foregroundColor(.white)
                Text("Profil")
                    .foregroundStyle(.white)
            })
    }
}


#Preview {
    FAQ()
}
