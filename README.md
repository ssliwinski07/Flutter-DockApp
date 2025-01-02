# ADDITIONAL INFO

1. I've used this package https://pub.dev/packages/reorderables to make icons reorderable in the dock
2. I've added `isReorderable` property in `Dock widget` to control whether icons in dock should be reorderable or not - that makes the widget more universal.
3. I've separeted widget `DockElement` used in the `Dock class` in property `builder` as a class. Based on that I've learnt so far, it's better to choose classes over functions when it comes to widget creation. I think it's more efficient + code is more redeable and easy to handle.
4. App is also hosted on Github Pages - https://ssliwinski07.github.io/Flutter-DockApp/
