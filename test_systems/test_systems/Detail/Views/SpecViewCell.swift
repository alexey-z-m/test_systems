import SwiftUI

struct SpecViewCell: View {
    var data: ProductModel
    var index: Int
    var body: some View {
        ZStack() {
            Text(String(repeating: ".", count: 100))
                .foregroundColor(.gray)
                .scaledToFit()
            HStack() {
                Text(data.specifications[index].name)
                    .padding(.trailing, 5)
                    .font(.system(size: 15))
                    .background(Color.white)
                Spacer()
                Text(data.specifications[index].description)
                    .padding(.leading, 5)
                    .font(.system(size: 15))
                    .background(Color.white)
            }
        }
    }
}
