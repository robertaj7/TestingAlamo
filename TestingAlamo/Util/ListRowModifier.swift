//
//  ListRowModifier.swift
//  TestingAlamo
//
//  Created by Roberta Jorgo on 20.12.20.
//

import SwiftUI

struct ListRowModifier: ViewModifier {
    func body(content: Content) -> some View {
        Group {
            content
            Divider()
        }.offset(x: 20)
    }
}
