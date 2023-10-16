//
//  ActionSheetBootCamp.swift
//  SwiftBootComp
//
//  Created by Yogesh on 11/07/23.
//

import SwiftUI

struct ActionSheetBootCamp: View {
    @State var showActionSheet: Bool = false
    @State var actionSheetOption: ActionSheetOptions = .isOtherPost
    enum ActionSheetOptions{
        case isMyPost
        case isOtherPost
    }
    var body: some View {
        
        
        VStack {
            HStack {
                Circle()
                    .frame(width: 20, height: 30)
                Text("@username")
                Spacer()
                Button(action: {
                    actionSheetOption = .isOtherPost
//                    actionSheetOption = .isMyPost
                    showActionSheet.toggle()
                },
                       label:{
                Image(systemName: "ellipsis")
                })
                .accentColor(.primary)
            }
            .padding(.horizontal)
            Rectangle()
                .aspectRatio(1.5, contentMode: .fit)
          
    //        Button("Click Me")
    //        {
    //            showActionSheet.toggle()
    //        }
            
        }
        .actionSheet(isPresented: $showActionSheet, content: getActionSheet)
    }
    func getActionSheet() -> ActionSheet {
        
        let shareButton:ActionSheet.Button = .default(Text("Share"),action: {
            //add code to share post
        })
        let  reportButton: ActionSheet.Button = .destructive(Text("Report")){
            // add code ti report this post
        }
        let deleteButton : ActionSheet.Button = .destructive(Text("Delete")){
            //add code to delete this post
        }
        let cancelButton : ActionSheet.Button = .cancel()
        let title  = Text("What would you like to do ?")
        switch actionSheetOption {
        case .isMyPost:
            return ActionSheet(title: title , message: nil,
            buttons: [shareButton, reportButton, cancelButton])
        case .isOtherPost:
          return  ActionSheet(title: title, message: nil,
            buttons: [shareButton, reportButton, deleteButton, cancelButton])
        }
        
        
        
//        let button1: ActionSheet.Button = .default(Text("default"))
//        let button2: ActionSheet.Button = .destructive(Text("destructive"))
//        let button3: ActionSheet.Button = .cancel(Text("Cancel"))
//        return ActionSheet(title: Text("This is the title "), message: Text("This is the message"),
//                           buttons: [button1, button2, button3])
        
        //return ActionSheet(title: Text("This is action sheet title"))
    }
}

struct ActionSheetBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        ActionSheetBootCamp()
    }
}
