//
//  CalculationView.swift
//  X.000.000.003
//
//  Created by Develop on 14.05.21.
//

import SwiftUI

struct CalculationView: View {
    @State var a = ""
    @State var b = ""
    @State var c = ""
    @State var alpha = ""
    @State var beta = ""
    @State var gamma = ""
    
    var body: some View {
        List {
            
            PictureView()
            
            Section(header: Text("Values")) {
                Button(action: {
                        a = ""
                        b = ""
                        c = ""
                        alpha = ""
                        beta = ""
                        gamma = ""
                }) {
                    Text("Delete all Values")
                        .font(.headline)
                        .foregroundColor(.red)
                }
                TextField("0.0", text: $a).standartTextField("a")
                TextField("0.0", text: $b).standartTextField("b")
                TextField("0.0", text: $c).standartTextField("c")
                TextField("0.0", text: $alpha).standartTextField("alpha")
                TextField("0.0", text: $beta).standartTextField("beta")
                TextField("0.0", text: $gamma).standartTextField("gamma")
            }
            
            Section(header: Text("Solutions")) {
                if generalConditions([a, b, c]) {
                    NavigationLink("Calculate (a, b, c)", destination: CalculatedView(triangle: Calculation(a: a, b: b, c: c)))
                }
                
                Group {
                    if generalConditions([a, b, alpha]) && angleConditions([alpha]) {
                        NavigationLink("Calculate (a, b, alpha)", destination: CalculatedView(triangle: Calculation(a: a, b: b, alpha: alpha)))
                    }
                    
                    if generalConditions([a, b, beta]) && angleConditions([beta]) {
                        NavigationLink("Calculate (a, b, beta)", destination: CalculatedView(triangle: Calculation(a: a, b: b, beta: beta)))
                    }
                    
                    if generalConditions([a, b, gamma]) && angleConditions([gamma]) {
                        NavigationLink("Calculate (a, b, gamma)", destination: CalculatedView(triangle: Calculation(a: a, b: b, gamma: gamma)))
                    }
                }
                
                Group {
                    if generalConditions([a, c, alpha]) && angleConditions([alpha]) {
                        NavigationLink("Calculate (a, c, alpha)", destination: CalculatedView(triangle: Calculation(a: a, c: c, alpha: alpha)))
                    }
                    
                    if generalConditions([a, c, beta]) && angleConditions([beta]) {
                        NavigationLink("Calculate (a, c, beta)", destination: CalculatedView(triangle: Calculation(a: a, c: c, beta: beta)))
                    }
                    
                    if generalConditions([a, c, gamma]) && angleConditions([gamma]) {
                        NavigationLink("Calculate (a, c, gamma)", destination: CalculatedView(triangle: Calculation(a: a, c: c, gamma: gamma)))
                    }
                }
                
                Group {
                    if generalConditions([b, c, alpha]) && angleConditions([alpha]) {
                        NavigationLink("Calculate (b, c, alpha)", destination: CalculatedView(triangle: Calculation(b: b, c: c, alpha: alpha)))
                    }
                    
                    if generalConditions([b, c, beta]) && angleConditions([beta]) {
                        NavigationLink("Calculate (b, c, beta)", destination: CalculatedView(triangle: Calculation(b: b, c: c, beta: beta)))
                    }
                    
                    if generalConditions([b, c, gamma]) && angleConditions([gamma]) {
                        NavigationLink("Calculate (b, c, gamma)", destination: CalculatedView(triangle: Calculation(b: b, c: c, gamma: gamma)))
                    }
                }
                
                Group {
                    if generalConditions([alpha, beta, a]) && angleConditions([alpha, beta]) {
                        NavigationLink("Calculate (alpha, beta, a)", destination: CalculatedView(triangle: Calculation(alpha: alpha, beta: beta, a: a)))
                    }
                    
                    if generalConditions([alpha, beta, b]) && angleConditions([alpha, beta]) {
                        NavigationLink("Calculate (alpha, beta, b)", destination: CalculatedView(triangle: Calculation(alpha: alpha, beta: beta, b: b)))
                    }
                    
                    if generalConditions([alpha, beta, c]) && angleConditions([alpha, beta]) {
                        NavigationLink("Calculate (alpha, beta, c)", destination: CalculatedView(triangle: Calculation(alpha: alpha, beta: beta, c: c)))
                    }
                }
                
                Group {
                    if generalConditions([alpha, gamma, a]) && angleConditions([alpha, gamma]) {
                        NavigationLink("Calculate (alpha, gamma, a)", destination: CalculatedView(triangle: Calculation(alpha: alpha, gamma: gamma, a: a)))
                    }
                    
                    if generalConditions([alpha, gamma, b]) && angleConditions([alpha, gamma]) {
                        NavigationLink("Calculate (alpha, gamma, b)", destination: CalculatedView(triangle: Calculation(alpha: alpha, gamma: gamma, b: b)))
                    }
                    
                    if generalConditions([alpha, gamma, c]) && angleConditions([alpha, gamma]) {
                        NavigationLink("Calculate (alpha, gamma, c)", destination: CalculatedView(triangle: Calculation(alpha: alpha, gamma: gamma, c: c)))
                    }
                }
                
                Group {
                    if generalConditions([beta, gamma, a]) && angleConditions([beta, gamma]) {
                        NavigationLink("Calculate (beta, gamma, a)", destination: CalculatedView(triangle: Calculation(beta: beta, gamma: gamma, a: a)))
                    }
                    
                    if generalConditions([beta, gamma, b]) && angleConditions([beta, gamma]) {
                        NavigationLink("Calculate (beta, gamma, b)", destination: CalculatedView(triangle: Calculation(beta: beta, gamma: gamma, b: b)))
                    }
                    
                    if generalConditions([beta, gamma, c]) && angleConditions([beta, gamma]) {
                        NavigationLink("Calculate (beta, gamma, c)", destination: CalculatedView(triangle: Calculation(beta: beta, gamma: gamma, c: c)))
                    }
                }
            }
            
            
            
        }
        .navigationTitle("Solve Triangles")
    }
    
}

struct CalculationView_Previews: PreviewProvider {
    static var previews: some View {
        CalculationView()
    }
}
