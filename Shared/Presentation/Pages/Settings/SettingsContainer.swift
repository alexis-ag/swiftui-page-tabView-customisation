import SwiftUI

struct SettingsContainer: View {
    var body: some View {
        pageContent()
                .navigationBarHidden(true)
    }

    @ViewBuilder
    private func pageContent() -> some View {
        VStack {
            Text("Settings container")
            NavigationLink(destination: Text("Details")) {
                Text("Details")
            }
        }
    }
}
