//



//  SwiftBootComp
//
//  Created by Yogesh on 19/07/23.
//


class EnvironmentViewModel:ObservableObject{
    
    @Published var dataArray: [String] = []
    
    init(){
        getData()
    }
    func getData(){
        self.dataArray.append(contentsOf: ["iphone","ipad","iMac","Apple watch"])
    }
}

import SwiftUI

struct EnvironmentObjectBootCamp: View {
    
    @StateObject var viewModel:EnvironmentViewModel = EnvironmentViewModel()
      
    var body: some View {
        NavigationView{
            List {
                
                ForEach(viewModel.dataArray, id: \.self) { item in
                
                    NavigationLink(destination: DetailView(selectedItem: item)) {
                        Text(item)
                    }
                    
                }
            }
            .navigationTitle("iOS Devices")
        }
        .environmentObject(viewModel)
    }
}


struct DetailView: View{
    
    let selectedItem :String
    
    
    var body: some View{
        ZStack{
            Color.orange
            
            NavigationLink(destination: FinalView()){
                Text(selectedItem)
                    .font(.headline)
                    .foregroundColor(.orange)
                    .padding()
                    .padding(.horizontal)
                    .background(.white)
                    .cornerRadius(30)
            }
            
            
        }
       
    }
    
}

struct FinalView:View{
    
    @EnvironmentObject var viewModel:EnvironmentViewModel
    
    var body: some View{
        ZStack{
            //background
            LinearGradient(gradient: Gradient(colors: [Color.red,Color.blue]), startPoint: .topLeading,
                endPoint: .bottomTrailing)
            .edgesIgnoringSafeArea(.all)
            
            //foreground
            ScrollView{
                VStack(spacing:20){
                    ForEach(viewModel.dataArray, id:\.self){ item in
                        Text(item)
                    }

                }
                .foregroundColor(.white)
                .font(.largeTitle)
            }
        }
    }
}

struct EnvironmentObjectBootCamp_Previews: PreviewProvider {
    static var previews: some View {
         EnvironmentObjectBootCamp()
        //FinalView()
        //DetailView(selectedItem: "iphone")
    }
}


