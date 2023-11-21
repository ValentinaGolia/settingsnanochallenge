//
//  Wi-Fi.swift
//  Settings
//
//  Created by Valentina Golia on 17/11/23.
//

import SwiftUI

struct Wi_Fi: View {
    
    @State var wifiOn: Bool = true
    
    var body: some View {
        
        NavigationStack {
            
            
        
           
            
            List {
                
                Section() {
                    
                    
                    HStack {
                        Text("Wi-Fi")
                        Toggle(isOn: $wifiOn) {
                        }
                    }
                    
                    if (wifiOn) {
                        
                        HStack {
                            Image(systemName: "checkmark")
                                .foregroundColor(.blue)
                                .bold()
                            
                            VStack (alignment: .leading){
                                Text("SwiftFun")
                                
                                Text("Avviso sulla privacy")
                                    .font(.footnote)
                            }
                            
                            Spacer()
                            Image(systemName: "lock.fill")
                            Image(systemName: "wifi")
                            Image(systemName: "info.circle")
                                .resizable()
                                .frame(width: 25, height:25)
                                .foregroundColor(Color.blue)
                            
                        }
                    }
                    
                    
                }
                
                
                if (wifiOn) {
                    Section() {
                        HStack {
                            Text("Altro...")
                        }
                    }
                header: {
                    Text("RETI")}
                }
                
                
                
                if (wifiOn) {
                    Section {
                        NavigationLink(destination: {
                            
                        }, label: {
                            HStack {
                                Text("Richiedi accesso reti")
                                Spacer()
                                Text("Notifica")
                                    .foregroundStyle(.gray)
                            }
                        })
                        
                    } footer: {
                        Text("L'accesso alle reti conosciute sarà automatico. Se non è disponibile nessuna rete conosciuta, riceverai una notifica con le reti disponibili.")
                    }
                }
                
                
                if (wifiOn) {
                Section() {
                    NavigationLink(destination: {
                        
                    }, label: {
                        HStack {
                            Text("Accesso automatico hotspot")
                            Spacer()
                            Text("Chiedi")
                                .foregroundStyle(.gray)
                        }
                    })
                    
                }
            footer: {
                Text("Consenti al dispositivo di scoprire automaticamente hotspot personali nelle vicinanze quando non sono disponibili reti Wi-Fi.")
            }
                
            }
                
                
                
            }
            .navigationTitle("Wi-Fi")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar(content: {
                Text("Modifica")
                    .foregroundStyle(.blue)
            })
        }
    }
}

#Preview {
    Wi_Fi()
}

