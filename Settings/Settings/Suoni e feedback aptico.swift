//
//  Suoni e feedback aptico.swift
//  Settings
//
//  Created by Valentina Golia on 20/11/23.
//

import SwiftUI

struct Suoni_e_feedback_aptico: View {
    @State var tastiOn: Bool = false
    @State var suonoOn: Bool = true
    @State var feedbackOn: Bool = true
    @State var sliderValue = 10.0
    
    var body: some View {
        
        NavigationStack{
            List {
                Section() {
                    
                    
                    HStack{
                        Image(systemName: "volume.fill")
                            .foregroundColor(.gray)
                        Slider(value: $sliderValue,
                               in: 0...10)
                               
                        Image(systemName: "volume.2.fill")
                            .foregroundColor(.gray)
                    }
                    
                    HStack {
                        Text("Modifica con tasti")
                        Toggle(isOn: $tastiOn) {
                        }
                    }
                    
                    NavigationLink(destination:{}, label: {
                        HStack {
                            Text("Feedback aptici")
                            Spacer()
                            Text("Riproduci sempre")
                                .foregroundStyle(.gray)
                            
                        }
                        
                    })
                    
                    
                }
                
            header: {
                Text("SUONERIA E AVVISI")}
                
                
            footer: {
                Text("I pulsanti del volume non modificheranno il volume delle suonerie e degli avvisi.")
            }
                
                Section() {
                    
                    NavigationLink(destination:{}, label: {
                        HStack {
                            Text("Suoneria")
                            Spacer()
                            Text("Riflesso")
                                .foregroundStyle(.gray)
                            
                        }
                        
                    })
                    
                    
                    NavigationLink(destination:{}, label: {
                        HStack {
                            Text("Suoneria SMS")
                            Spacer()
                            Text("Nota")
                                .foregroundStyle(.gray)
                            
                        }
                        
                    })
                    
                    NavigationLink(destination:{}, label: {
                        HStack {
                            Text("Messaggio segreteria")
                            Spacer()
                            Text("Goccia")
                                .foregroundStyle(.gray)
                            
                        }
                        
                    })
                    
                    NavigationLink(destination:{}, label: {
                        HStack {
                            Text("Nuova email")
                            Spacer()
                            Text("Nessuno")
                                .foregroundStyle(.gray)
                            
                        }
                        
                    })
                    
                    NavigationLink(destination:{}, label: {
                        HStack {
                            Text("Email inviata")
                            Spacer()
                            Text("Fruscio")
                                .foregroundStyle(.gray)
                            
                        }
                        
                    })
                    
                    NavigationLink(destination:{}, label: {
                        HStack {
                            Text("Avvisi calendario")
                            Spacer()
                            Text("Accordo")
                                .foregroundStyle(.gray)
                            
                        }
                        
                    })
                    
                    NavigationLink(destination:{}, label: {
                        HStack {
                            Text("Avvisi promemoria")
                            Spacer()
                            Text("Accordo")
                                .foregroundStyle(.gray)
                            
                        }
                        
                    })
                    
                }
                
                Section() {
                    
                    NavigationLink(destination:{}, label: {
                        HStack {
                            Text("Feedback tastiera")
                            Spacer()
                            Text("Suoni")
                                .foregroundStyle(.gray)
                            
                        }
                        
                    })
                    
                    HStack {
                        Text("Suono di blocco")
                        Toggle(isOn: $suonoOn) {
                        }
                    }
                    
                    HStack {
                        Text("Feedback aptici di sistema")
                        Toggle(isOn: $feedbackOn) {
                        }
                    }
                    
                }
            header: {
                Text("SUONI DI SISTEMA E FEEDBACK APTICI")}
            }
            
            .navigationTitle("Suoni e feedback aptico")
            .navigationBarTitleDisplayMode(.inline)
            
        }
    }
}




#Preview {
    Suoni_e_feedback_aptico()
}
