//
//  AlertBootcamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Yessimkhan on 18.06.2023.
//

import SwiftUI

struct AlertBootcamp: View {
    
    @State var showAlert: Bool = false
    @State var alertType: MyAlerts? = nil
    @State var backgroundColor: Color = .yellow
   // @State var alertTitle: String = ""
   // @State var alertMessage: String = ""
    
    
    enum MyAlerts {
        case success
        case error
    }
    
    var body: some View {
        ZStack {
           backgroundColor.ignoresSafeArea()
            
            VStack {
                Button("BUTTON 1") {
                    alertType = .error
//                    alertTitle = "ERROR UPLOADING VIDEO"
//                    alertMessage = "The video could not be uploaded"
                    showAlert.toggle()
                }
                Button("BUTTON 2") {
                    alertType = .success
//                    alertTitle = "Successfulky uploaded video 🤩"
//                    alertMessage = "Your video is now public!"
                    showAlert.toggle()
                }
            }
                .alert(isPresented: $showAlert, content: {
                 getAlert()
                   // Alert(title: Text ("There was an error!"))
            })
            }
        }
    
    
    func getAlert () -> Alert {
        switch alertType {
        case .error:
            return Alert(title: Text ("There was an error!"))
        case .success:
            return Alert(title: Text("This was a success"), message: nil, dismissButton: .default(Text("Ok"), action: {
                backgroundColor = .green
            }))
        default:
            return Alert(title: Text("ERROR"))
        }
//        return Alert(
//            title: Text(alertTitle),
//            message: Text(alertMessage),
//            dismissButton: .default(Text("OK")))
//        return    Alert(
//            title: Text("This is the title"),
//            message: Text("Here we will describe the error."),
//            primaryButton: .destructive(Text("DELETE"), action: {
//                backgroundColor = .green
//            }),
//            secondaryButton: .cancel())
    }
}

struct AlertBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AlertBootcamp()
    }
}
