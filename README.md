<!DOCTYPE html>
<html>


<body>
  <h1>ChatGPT API Server</h1>
  <p>This is a Node.js application that serves as an API server for generating summaries and extracting skills using OpenAI's GPT-3 language model. The API provides endpoints to generate summaries based on user input and extract skills from a given text.</p>

  <h2>Requirements</h2>
  <ul>
    <li>Node.js (version 14.17.0 or later)</li>
    <li>npm (Node Package Manager)</li>
    <li>OpenAI API Key</li>
  </ul>

  <h2>Endpoints</h2>
  <p><strong>1. Generate Summary</strong></p>
  <p>Endpoint: POST /summary</p>
  <p>Generates a summary based on user input, including role.</p>
  <h4>Request Body:</h4>
  <pre>
    {
      "role": "Your role"
    }
  </pre>
  <h4>Response:</h4>
  <pre>
    {
      "summary": "Generated summary text here..."
    }
  </pre>

  <p><strong>2. Generate Experience Summary</strong></p>
  <p>Endpoint: POST /experience</p>
  <p>Generates an experience summary based on user input, including role.</p>
  <h4>Request Body:</h4>
  <pre>
    {
      "role": "Your role"
    }
  </pre>
  <h4>Response:</h4>
  <pre>
    {
      "summary": "Generated experience summary text here..."
    }
  </pre>

  <p><strong>3. Generate Skills from Text</strong></p>
  <p>Endpoint: POST /generateSkills</p>
  <p>Extracts skills from the provided text using natural language processing (NLP).</p>
  <h4>Request Body:</h4>
  <pre>
    {
      "text": "Your text containing skills..."
    }
  </pre>
  <h4>Response:</h4>
  <pre>
    {
      "skills": ["Skill1", "Skill2", "Skill3"]
    }
  </pre>

  <h2>Usage</h2>
  <p>You can use this API server to generate summaries and extract skills for various use cases, such as creating personalized profiles, generating job application summaries, or analyzing skills from a given text.</p>
  <p>Make sure to use appropriate error handling and validation for user input when integrating this API into your applications.</p>

</body>

</html>
