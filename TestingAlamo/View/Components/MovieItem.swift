//
//  MovieItem.swift
//  TestingAlamo
//
//  Created by Roberta Jorgo on 20.12.20.
//

import SwiftUI

struct MovieItem: View {
    
    private let movie: Movie
    private let isExpanded: Bool
    
    @State var showingAlert = false
    @State var showingActionSheet = false

    init(movie: Movie, isExpanded: Bool) {
        self.movie = movie
        self.isExpanded = isExpanded
    }
    
    var body: some View {
        
        VStack(alignment: HorizontalAlignment.leading) {
            Text(movie.title).font(.system(.largeTitle))
            Text("Episode \(movie.id), directed by \(movie.director)").font(.system(.body))
            Text("Released in \(movie.releaseDateDisplayable)").font(.system(.body))
            Spacer()
            if isExpanded {
                Text(movie.openingCrawl.twoFirstSentences).font(.system(.largeTitle)).foregroundColor(Color.yellow)
            }
            Spacer()
            
//            Button(action: {
//                        self.showingAlert = true
//                    }) {
//                        Text("More info")
//                    }.alert(isPresented: $showingAlert, content: {
//                        Alert(title: Text("Important"),
//                              message: Text("message"),
//                              primaryButton: .destructive(Text("Delete")) {
//                                    print("test")
//                              },
//                              secondaryButton: .cancel(Text("Cancel")))
//                    })
            
//            Button(action: {
//                        self.showingActionSheet = true
//                    }) {
//                        Text("More info")
//                    }.actionSheet(isPresented: $showingActionSheet, content: {
//                        ActionSheet(title: Text("Action sheet"),
//                                    message: Text("What will you choose?"),
//                                    buttons: [.default(Text("Continue")) {print("Continue")}, .cancel()])
//                    })

        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .topLeading)
    }
}

struct MovieItem_Previews: PreviewProvider {
    static var previews: some View {
        MovieItem(movie: Movie.mockMovie(), isExpanded: false)
    }
}
