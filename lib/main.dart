import "package:flutter/material.dart";

void main() {
  runApp(
    MaterialApp(
      home: Scaffold( // Scaffold provides structure to the app, such as app bar, body, etc. as well as styling.
        // backgroundColor: Color.fromARGB(255, 129, 96, 139), // Null is default color // Select color using Colors. then the color or Color. then rgb values.
        body: GradientContainer(),
      ),
    ),
  );
}

class GradientContainer extends StatelessWidget {
  @override // Makes sure you are overriding a method from the parent class(StatelessWidget)
  Widget build(context) { // Build must return a widget, therefore the return type is Widget.
    return Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
              Color.fromARGB(255, 104, 255, 242), 
              Color.fromARGB(255, 129, 96, 139)
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ), // BoxDecoration allows you to style the container with borders, colors, gradients, etc. In the background color, we can add gradients because it also accepts one color so we use this.
          child: const Center( // Remove const from in front of MateriaAPP to this. 
            child: Text('Hello, World!', // Text widget displays a string of text with single style.
              style: TextStyle(
                fontSize: 40.0,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ); 

  } 
   

}





// Convert numbers to strings by putting it in parenthesis
// Text widget only accepts strings.
// Put 'int' in front of a parameter so that it knows to expect an integer value. If you put a string it will throw an error
// In a list, you separate items with commas. You can also add strings, integers, widgets, etc. in a list, as well as other lists and colors.
// Use Colors. then the color name to select a color. You can also use Color. then the rgb values in parenthesis to select a color.with a gradient.
// LinearGradient creates a gradient that transitions between multiple colors in a straight line. It takes a list of colors as input to define the gradient stops.
// const is used as a cash store, allowing them to be reused without being recreated each time. This improves performance by reducing memory usage and speeding up widget rebuilds.
// By defult, radiant colors go from top to bottom. You can change the direction by adding begin:Alignment.topLeft, end: Alignment.bottomRight, for example.
// If you want to style a widget or configure it, add a comma after the widget and press enter. This will automatically indent the next line and add the necessary parentheses.
// Style: is what allows you to change the appearance of a widget, such as font size, color, weight, etc. Textstyle is used to style text widgets.
// Class is used to create your own widgets that contain multiple other widgets and functionality.
// Classes start with a capital leetter and if using more than one word, use an underscore.
// The extends keyword is used to create a subclass that inherits properties and methods from a parent class. In Flutter, custom widgets often extend StatelessWidget or StatefulWidget.
// StatelessWidget is a widget that adds data that does not change over time or in response to user interactions. It is immutable and only needs to be built once.
// void is A return type that indicates that a function does not return any value. It is used for functions that perform actions but do not produce a result.
// Reutrn type is the data type of the value that a function returns. In Flutter, widget build methods typically have a return type of Widget, indicating that they return a widget to be displayed in the UI. The returned value will be used my flutter.