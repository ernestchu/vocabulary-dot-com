//
//  ContentView.swift
//  Vocabulary.com
//
//  Created by Ernest Chu on 2021/8/3.
//

import SwiftUI
import WebKit

struct ContentView: View {
    @ObservedObject var model = WebViewModel(url: "https://www.vocabulary.com")

    var body: some View {
        LoadingView(isShowing: self.$model.isLoading) {
            WebView(viewModel: self.model)
                .ignoresSafeArea()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
