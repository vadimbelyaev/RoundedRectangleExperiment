import SwiftUI

struct ExampleView: View {
    var body: some View {
        VStack {
            HStack {
                Text(".circular")
                    .frame(maxWidth: .infinity)
                Spacer()
                Text(".continuous")
                    .frame(maxWidth: .infinity)
            }
            ForEach(48...64, id: \.self) { height in
                HStack {
                    RoundedRectangle(cornerRadius: 24, style: .circular)
                        .strokeBorder()
                        .frame(height: CGFloat(height))
                        .overlay(Text("h = \(height)"))
                    Spacer()
                    RoundedRectangle(cornerRadius: 24, style: .continuous)
                        .strokeBorder()
                        .frame(height: CGFloat(height))
                        .overlay(Text("h = \(height)"))
                }
            }
        }
            .padding()
    }
}

struct ExampleView_Previews: PreviewProvider {
    static var previews: some View {
        ScrollView {
            ExampleView()
        }
    }
}
