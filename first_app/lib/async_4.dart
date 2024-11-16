// Example 1: Basic Stream Usage
void main() async {
  // Create a stream of numbers 1 to 5
  final numberStream = Stream<int>.fromIterable([1, 2, 3, 4, 5]);
  
  print('Starting sum calculation...');
  final sum = await sumStream(numberStream);
  print('Sum is: $sum');
}

Future<int> sumStream(Stream<int> stream) async {
  var sum = 0;
  print('Starting stream processing');
  
  await for (final value in stream) {
    print('Received value: $value');
    sum += value;
    print('Current sum: $sum');
  }
  
  print('Stream processing completed');
  return sum;
}

// Example 2: Stream Controller
import 'dart:async';

void main() async {
  // Create a StreamController
  final controller = StreamController<int>();
  
  // Start processing the stream
  print('Starting stream processing');
  final Future<int> sumFuture = sumStream(controller.stream);
  
  // Add values to the stream
  print('Adding values to stream');
  controller.add(1); // First value
  await Future.delayed(Duration(seconds: 1));
  controller.add(2); // Second value
  await Future.delayed(Duration(seconds: 1));
  controller.add(3); // Third value
  
  // Close the stream
  await controller.close();
  
  // Wait for final result
  final sum = await sumFuture;
  print('Final sum: $sum');
}

// Example 3: Periodic Stream
void main() async {
  // Create a periodic stream that emits incrementing numbers every second
  final periodicStream = Stream<int>.periodic(
    Duration(seconds: 1),
    (count) => count + 1
  ).take(5); // Only take first 5 values
  
  print('Starting periodic stream processing');
  final sum = await sumStream(periodicStream);
  print('Final sum of periodic stream: $sum');
}

// Example 4: Error Handling in Streams
Future<int> sumStreamWithErrorHandling(Stream<int> stream) async {
  var sum = 0;
  
  try {
    await for (final value in stream) {
      if (value < 0) {
        throw Exception('Negative values not allowed');
      }
      sum += value;
    }
  } catch (e) {
    print('Error occurred: $e');
    rethrow;
  }
  
  return sum;
}