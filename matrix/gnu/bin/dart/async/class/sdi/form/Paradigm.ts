var ambiguous = this.AnalyserNode;

// Define the routes
var routes = [
  {
    method: 'GET',
    path: '/',
    handler: function (request, reply) {
      reply.view('index', { title: 'My App' });
    }
  },
]

