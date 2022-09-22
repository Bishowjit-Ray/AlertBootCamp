//
//  ContentView.swift
//  AlertBootCamp
//
//  Created by Bishowjit Ray on 15/9/22.
//

import SwiftUI

struct ContentView: View {
    @State var showAlert: Bool = false
    @State var alertType: MyAlerts? = nil
    @State var alertTitle: String = ""
    @State var alertMessage: String = ""
    @State var backgroundColor: Color = Color.yellow
    enum MyAlerts{
        case success
        case error
    }
    var body: some View {
        ZStack {
            backgroundColor.edgesIgnoringSafeArea(.all)
            
            VStack {
                Button("Button 1"){
                    alertType = .error
//                    alertTitle = "Error uploading Video"
//                    alertMessage = "This video could not be uploaded"
                    showAlert.toggle()
                }
                
                Button("Button 2"){
                    alertType = .success
//                    alertTitle = "Successfully uploaded video 🤩"
//                    alertMessage = "Your Video is noow public!!!"
                    showAlert.toggle()
                }
           
           
            }
            .alert(isPresented: $showAlert ) {
                getAlert()
        }
        }
    }
    func getAlert() -> Alert{
        
        
        switch alertType {
        case.error:
            return Alert(title: Text("There is an error"),
            message: nil,
                         dismissButton: .default(Text("Ok"), action: {
                backgroundColor = .green
            }))
        case .success:
            return Alert(title: Text("There is a Success"),
            message: nil,
                         dismissButton: .default(Text("Ok"), action: {
                backgroundColor = .green
            }))
        default:
            return Alert(title: Text("ERROR"))
        }
        
//     return Alert(title: Text(alertTitle),
//                  message: Text(alertMessage),
//                  dismissButton: .default(Text("Ok")))
        //Alert(title: Text("This is the title"),
//                       message: Text("Here we will describe the error."),
//                       primaryButton: .destructive(Text("Delete"), action: {
//                     backgroundColor = .purple
//                 }),
//                       secondaryButton: .cancel())
                 //Alert(title: Text("There was an error"))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
