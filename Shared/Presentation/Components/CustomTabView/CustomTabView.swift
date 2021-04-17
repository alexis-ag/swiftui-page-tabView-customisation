import SwiftUI

struct CustomTabView: View {
    let props: CustomTabViewProps

    var body: some View {
        VStack(alignment: .center, spacing: 0) {
            Spacer()
            HStack(alignment: .bottom, spacing: 0) {
                ForEach(props.items) { item in
                    navItem(item: item, props: props)
                            .transition(.scale)
                            .animation(.linear)
                }
            }
                    .padding(10)
                    .background(props.defaultColor.opacity(0.7))
                    .background(props.accentColor.opacity(0.3))
                    .clipShape(RoundedRectangle(cornerRadius: 20))
        }
    }


    @ViewBuilder
    private func navItem(item: BottomNavTab, props: CustomTabViewProps) -> some View {
        let isSelected = item == props.selectedNavBarTab

        HStack(alignment: .bottom, spacing: 0) {
            HStack(alignment: .bottom) {
                VStack(alignment: .center, spacing: 0) {
                    navigationItemIcon(item: item, props: props)
                    if isSelected {
                        Text(item.label)
                                .font(Font.system(size: 10))
                                .fixedSize(horizontal: true, vertical: true)
                                .foregroundColor(isSelected ? props.accentColor : props.defaultColor)
                                .padding(.bottom, 1)
                                .padding(.top, 3)
                    }
                }
            }
        }
                .padding(.horizontal, 10)
                .contentShape(Rectangle())
                .onTapGesture(perform: { props.onTap(item) })
                .onLongPressGesture(perform: { props.onLongTap(item) })
    }

    @ViewBuilder
    private func navigationItemIcon(item: BottomNavTab, props: CustomTabViewProps) -> some View {
        let imgSize: CGFloat = 28
        let isSelected = item == props.selectedNavBarTab
        switch item {
        case .dashboard:
            CircleIcon(
                    props: .init(
                            size: imgSize,
                            style: .systemImage(
                                    systemImageName:  isSelected ? "pianokeys.inverse" : "pianokeys",
                                    font: .title,
                                    backgroundColor: .clear,
                                    foregroundColor: isSelected ? props.accentColor : props.defaultColor)
                    )
            )

        case .contacts:
            CircleIcon(
                    props: .init(
                            size: imgSize,
                            style: .systemImage(
                                    systemImageName:  isSelected ? "person.2.circle.fill" : "person",
                                    font: .title,
                                    backgroundColor: .clear,
                                    foregroundColor: isSelected ? props.accentColor : props.defaultColor)
                    )
            )

        case .messages:
            CircleIcon(
                    props: .init(
                            size: imgSize,
                            style: .systemImage(
                                    systemImageName:  isSelected ? "person.3.fill" : "person.3",
                                    font: .title,
                                    backgroundColor: .clear,
                                    foregroundColor: isSelected ? props.accentColor : props.defaultColor)
                    )
            )
        case .events:
            CircleIcon(
                    props: .init(
                            size: imgSize,
                            style: .systemImage(
                                    systemImageName:  isSelected ? "location.circle.fill" : "location.circle",
                                    font: .title,
                                    backgroundColor: .clear,
                                    foregroundColor: isSelected ? props.accentColor : props.defaultColor)
                    )
            )
        case .settings:
            CircleIcon(
                    props: .init(
                            size: imgSize,
                            style: .systemImage(
                                    systemImageName:  isSelected ? "gearshape.2.fill" : "gearshape.2",
                                    font: .title,
                                    backgroundColor: .clear,
                                    foregroundColor: isSelected ? props.accentColor : props.defaultColor)
                    )
            )
        }
    }
}
