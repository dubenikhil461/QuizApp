import 'package:quizapp/models/quiz_question.dart';

const questions = [
  QuizQuestion(
    'Why do stateless systems scale better?',
    [
      'Because servers don not store user session data',
      'Because they use more RAM',
      'Because they avoid databases',
      'Because they are faster by default',
    ],
  ),
  QuizQuestion(
    'What is the primary role of a load balancer?',
    [
      'Distributes incoming traffic across multiple servers',
      'Stores user data securely',
      'Encrypts API responses',
      'Manages database indexes',
    ],
  ),
  QuizQuestion(
    'Why are refresh tokens considered more secure?',
    [
      'They are sent less frequently and have a longer lifespan',
      'They are smaller in size',
      'They are stored in localStorage',
      'They replace access tokens',
    ],
  ),
  QuizQuestion(
    'What happens when DNS fails?',
    [
      'Websites cannot be resolved using domain names',
      'The entire internet stops working',
      'Databases crash',
      'Load balancers stop working',
    ],
  ),
  QuizQuestion(
    'Why is O(1) time complexity considered best?',
    [
      'Execution time does not depend on input size',
      'It uses less memory',
      'It only works for small datasets',
      'It runs once per program',
    ],
  ),
  QuizQuestion(
    'What is the main benefit of using a message queue?',
    [
      'It decouples services and improves reliability',
      'It replaces databases',
      'It speeds up UI rendering',
      'It avoids APIs',
    ],
  ),
  QuizQuestion(
    'What does HTTPS add on top of HTTP?',
    [
      'Encryption and data integrity',
      'Faster response time',
      'Smaller payload size',
      'Stateless behavior',
    ],
  ),
  QuizQuestion(
    'Why are database indexes used?',
    [
      'To speed up read queries',
      'To store backup data',
      'To reduce table size',
      'To encrypt columns',
    ],
  ),
  QuizQuestion(
    'What is the biggest advantage of microservices?',
    [
      'Independent deployment and scalability',
      'Fewer network calls',
      'Single codebase',
      'No need for DevOps',
    ],
  ),
  QuizQuestion(
    'Why is caching used in systems like Redis?',
    [
      'To reduce database load and latency',
      'To permanently store data',
      'To replace backend logic',
      'To handle authentication',
    ],
  ),
];
