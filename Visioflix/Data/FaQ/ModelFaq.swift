//
//  ModelFaq.swift
//  Visioflix
//
//  Created by apprenant73 on 17/03/2024.
//


import SwiftUI

struct FAQItem: Identifiable, Equatable {
    let id = UUID()
    let question: String
    let answer: String
}

