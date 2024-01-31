import SwiftUI

struct SpecView: View {
    var data: ProductModel
    @State var allSpec: Bool = false
    var body: some View {
        VStack (alignment: .leading, spacing: 8) {
            Text("Основные характеристики")
                .bold()
            if (data.specifications.count > 5 && allSpec == false) {
                ForEach(0..<5) { index in
                    SpecViewCell(data: data, index: index)
                }
                Button(action: {
                    allSpec = true
                }, label: {
                    Text("Все характеристики")
                        .font(.system(size: 17,weight: .bold, design: .rounded))
                        .foregroundColor(.green)
                })
            }
            else {
                ForEach(0..<data.specifications.count, id: \.self) { index in
                    SpecViewCell(data: data, index: index)
                }
                Button(action: {
                    allSpec = false
                }, label: {
                    Text("Свернуть")
                        .font(.system(size: 17,weight: .bold, design: .rounded))
                        .foregroundColor(.green)
                })
            }
        }
    }
}
