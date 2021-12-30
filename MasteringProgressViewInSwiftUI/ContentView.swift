//
//  ContentView.swift
//  MasteringProgressViewInSwiftUI
//
//  Created by ramil on 30.12.2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            ProgressView()
            ProgressView("Loading")
            ProgressView(value: 250, total: 1000)
                .padding(.horizontal)
            ProgressView {
                Text("Loading")
                    .font(.title)
            }
            ProgressView("Loading")
                .progressViewStyle(.horizontal)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct HorizontalProgressViewStyle: ProgressViewStyle {
    func makeBody(configuration: Configuration) -> some View {
        HStack(spacing: 8) {
            ProgressView()
                .progressViewStyle(.circular)
            configuration.label
        }.foregroundColor(.secondary)
    }
}

extension ProgressViewStyle where Self == HorizontalProgressViewStyle {
    static var horizontal: HorizontalProgressViewStyle { .init() }
}
