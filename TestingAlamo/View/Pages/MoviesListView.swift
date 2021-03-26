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
    
    @State private var showPopUp: Bool = false
    
    var body: some View {
        ZStack {
            
            VStack {
                
//                Link("Visit google", destination: URL(string: "https://google.com")!)
                Link("Visit google", destination: URL(string: "tel://1234567890")!)
                
                let tel = "123-456-7890"
                Text(tel)
                    .onTapGesture {
                        let telLink = ("tel:" + "1234567890")
                        guard let url = URL(string: telLink) else { return }
                        UIApplication.shared.open(url)
                }
                
                List(viewModel.films, id: \.self) { movie in
                    
                    let isExpanded = false//self.selection?.id == movie.id
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
            
            if $showPopUp.wrappedValue {
                ZStack {
                    Color.white
                    VStack {
                        Text(selection?.title ?? "").fontWeight(.bold)
                        Text(selection?.openingCrawl.twoFirstSentences ?? "")
                        Spacer()
                        Button(action: {
                            self.showPopUp = false
                        }, label: {
                            Text("Close")
                        })
                    }.padding()
                }
                .frame(width: 300, height: 200)
                .cornerRadius(20).shadow(radius: 20)
            }
            
        }
    }
    
    private func selectDeselect(_ movie: Movie) {
        if self.selection?.id == movie.id {selection = nil}
        else { selection = movie }
        
        self.showPopUp = true
    }
}

struct MoviesList_Previews: PreviewProvider {
    static var previews: some View {
        MoviesListView()
    }
}
