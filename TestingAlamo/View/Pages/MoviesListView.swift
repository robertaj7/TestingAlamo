//
//  MoviesList.swift
//  TestingAlamo
//
//  Created by Roberta Jorgo on 15.12.20.
//

import SwiftUI

struct MoviesListView: View {
    
    // note ObservedObject annotation
    @ObservedObject var viewModel = MoviesListViewModel()
    
    @State private var selection: Movie? = nil
    
    var body: some View {
        List(viewModel.films, id: \.self) { movie in
            
            let isExpanded = self.selection?.id == movie.id
            MovieItem(movie: movie, isExpanded: isExpanded)
                .onTapGesture { self.selectDeselect(movie) }
                .modifier(ListRowModifier())
                .animation(.linear(duration: 0.3))
            
        }
        .listStyle(PlainListStyle())
        .onAppear {
            // when the list appears, trigger view model to fetch the movies list
            self.viewModel.fetchFilms()
        }
        .onDisappear {
            print("onDisappear")
        }
        .navigationBarTitle(Text("Movies"))
        .navigationBarItems(trailing:
                                NavigationLink(destination: PlanetsListView()) {
                                    Image("planet")
                                }
        )
    }
    
    private func selectDeselect(_ movie: Movie) {
        if self.selection?.id == movie.id {selection = nil}
        else { selection = movie }
    }
}

struct MoviesList_Previews: PreviewProvider {
    static var previews: some View {
        MoviesListView()
    }
}
