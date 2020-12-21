//
//  MoviesList.swift
//  TestingAlamo
//
//  Created by Roberta Jorgo on 15.12.20.
//

import SwiftUI

struct MoviesListView: View {
    
    @ObservedObject var viewModel = MoviesListViewModel()
    
    var body: some View {
        List {
            Text("Hello, World!")
            Text("Hello, World!")
            Text("Hello, World!")
            Text("Hello, World!")
        }
    }
}

struct MoviesList_Previews: PreviewProvider {
    static var previews: some View {
        MoviesListView()
    }
}
