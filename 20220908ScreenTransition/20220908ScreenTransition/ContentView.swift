//
//  ContentView.swift
//  20220908ScreenTransition
//
//  Created by いーま on 2022/09/08.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isShowingView: Bool = false

    var body: some View {
        Button {
            isShowingView.toggle()
        } label: {
            Text("下からぬるっと表示")
        }
        .sheet(isPresented: $isShowingView) {
            SecondView()
        }
    }
}

struct SecondView: View {
    
    @Environment(\.dismiss) var dismiss

    var body: some View {
        Button {
            dismiss()
        } label: {
            Text("押下または、下スワイプで戻る")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
