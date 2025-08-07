//
//  ContentView.swift
//  calorsinlimite
//
//  Created by Kevin Flores on 8/6/25.
//

import SwiftUI

struct ContentView: View {
    
    @State private var message = ""
    @State private var messages: [String] = ["🔥 Bienvenido a Calor Sin Límite 🔥"]
    var body: some View {
        VStack {
            ScrollView {
                ForEach(messages, id: \.self) { msg in
                    HStack {
                        Text(msg)
                            .padding()
                            .background(Color.gray.opacity(0.2))
                            .cornerRadius(10)
                            .padding(5)
                        Spacer()
                    }
                }
            }
            HStack {
                TextField("Escribe tu mensaje...", text: $message)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                Button("Enviar") {
                    if !message.isEmpty {
                        messages.append(message)
                        message = ""
                    }
                }
            }
            .padding()
        }
        .navigationTitle("Chat General")
    }
}

#Preview {
    ContentView()
}
