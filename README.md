<h1>Movies Application</h1>

<p>This is a Flutter-based application that allows users to browse and search for movies. The application is built using the Clean Architecture pattern, which promotes separation of concerns and maintainability.</p>

<h2>Features</h2>

<ul>
  <li>Browse and search for movies</li>
  <li>View movie details including title, release date, genre, and overview</li>
  <li>Mark movies as favorites</li>
  <li>Sort movies by popularity, rating, or release date</li>
</ul>

<h2>Prerequisites</h2>

<ul>
  <li>Flutter SDK: <a href="https://flutter.dev/docs/get-started/install">Install Flutter</a></li>
  <li>Dart SDK: <a href="https://dart.dev/get-dart">Install Dart</a></li>
  <li>Android Studio (for Android development) or Xcode (for iOS development)</li>
</ul>

<h2>Getting Started</h2>

<ol>
  <li>Clone this repository: <code>git clone https://github.com/akddah/movies-application.git</code></li>
  <li>Change to the project directory: <code>cd movies-app</code></li>
  <li>Install dependencies: <code>flutter pub get</code></li>
  <li>Run the application: <code>flutter run</code></li>
</ol>

<h2>Folder Structure</h2>

<p>The project follows the Clean Architecture pattern, which consists of the following layers:</p>

<pre>
|-- lib
    |-- data
        |-- repositories
        |-- models
        |-- datasources
    |-- domain
        |-- models
        |-- repositories
        |-- usecases
    |-- presentation
        |-- components
        |-- controller
        |-- screens
</pre>

<h2>Dependencies</h2>

<p>The project uses the following dependencies:</p>

<ul>
  <li><code>flutter_bloc</code>: State management library using the BLoC pattern.</li>
  <li><code>dio</code>: HTTP client for making API requests.</li>
  <li><code>dartz</code>: Dartz is a functional programming library for Dart that provides a collection of monads and utilities for working with functional programming concepts in Dart.</li>
  <li><code>equatable</code>: Equatable is a Dart package that provides a simple way to implement value equality for objects by automatically generating == and hashCode methods based on the object's properties.</li>
</ul>

<p>For a complete list of dependencies and their versions, please refer to the <code>pubspec.yaml</code> file.</p>

<h2>Contributing</h2>

<p>Contributions are welcome! If you have any suggestions, bug reports, or feature requests, please open an issue or submit a pull request.</p>

<h2>License</h2>

<p>This project is licensed under the <a href="LICENSE">MIT License</a>.</p>

<h2>Acknowledgments</h2>

<ul>
  <li><a href="https://blog.cleancoder.com/uncle-bob/2012/08/13/the-clean-architecture.html">Clean Architecture by Robert C. Martin</a></li>
  <li><a href="https://flutter.dev/docs">Flutter Documentation</a></li>
  <li><a href="https://dart.dev/guides">Dart Documentation</a></li>
</ul>
