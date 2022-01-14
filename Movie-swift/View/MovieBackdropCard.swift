//
//  MovieBackdropCard.swift
//  Movie-swift
//
//  Created by Camila Marques Vasconcelos Loureiro on 13/01/22.
//

import SwiftUI

struct MovieBackdropCard: View {
    
    let movie: Movie
    @ObservedObject var imageLoader = ImageLoader()
    
    var body: some View {
        VStack(alignment: .leading) {
                ZStack {
                    Rectangle()
                        .fill(Color.gray.opacity(0.3))
                    
                    if self.imageLoader.image != nil {
                        Image(uiImage: self.imageLoader.image!)
                        .resizable()
                        
                    }
                }
                .aspectRatio(16/9, contentMode: .fit)
                //.cornerRadius(8)
                .shadow(radius: 4)
            
                Text(movie.title).padding()
               
            }
            .lineLimit(3)
             .onAppear {
                 self.imageLoader.loadImage(with: self.movie.backdropURL.standardized)
                 
            }
       
        }
    }

    struct MovieBackdropCard_Previews: PreviewProvider {
        static var previews: some View {
            MovieBackdropCard(movie: Movie.stubbedMovie)
        }
    }
