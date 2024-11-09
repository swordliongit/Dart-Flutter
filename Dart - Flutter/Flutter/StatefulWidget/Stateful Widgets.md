Flutter's (Stateful) Widget Lifecycle
Every Flutter Widget has a built-in lifecycle: A collection of methods that are automatically executed by Flutter (at certain points of time).

There are three extremely important (stateful) widget lifecycle methods you should be aware of:

1. ==initState()==: Executed by Flutter when the StatefulWidget's State object is initialized
2. ==build()==: Executed by Flutter when the Widget is built for the first time AND after setState() was called
3. ==dispose()==: Executed by Flutter right before the Widget will be deleted (e.g., because it was displayed conditionally)


[[intiState]]