//
//  ActivityIndicatorView.swift
//  Movie-swift
//
//  Created by Camila Marques Vasconcelos Loureiro on 14/01/22.
//

import SwiftUI

struct ActivityIndicatorView: UIViewRepresentable {
    
    func updateUIView(_ uiView: UIActivityIndicatorView, context: Context) {}
    
    func makeUIView(context: Context) -> UIActivityIndicatorView {
        let view = UIActivityIndicatorView(style: .large)
        view.startAnimating()
        return view
    }
    
}
