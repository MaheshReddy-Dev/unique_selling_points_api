class ResumeController < ApplicationController
    def summary
      role = params[:role]
  
      if role.present?
        prompt = "As a #{role}, I am looking for opportunities that allow me to leverage my skills and expertise. Generate a summary of my unique selling points to differentiate me from my competitors."
        response = generate_gpt_response(prompt)
        if response
          render json: { summary: response['choices'][0]['text'] }
        else
          render json: { error: 'Error generating summary.' }, status: 500
        end
      else
        render json: { error: 'Invalid input. Please provide the "role" parameter.' }, status: 400
      end
    end
  
    def experience
      role = params[:role]
  
      if role.present?
        prompt = "As an experienced #{role}, I am seeking opportunities that allow me to apply my skills and contribute to the growth of an organization. My previous roles in various positions have equipped me with valuable experience and expertise."
        response = generate_gpt_response(prompt)
        if response
          render json: { summary: response['choices'][0]['text'] }
        else
          render json: { error: 'Error generating experience summary.' }, status: 500
        end
      else
        render json: { error: 'Invalid input. Please provide the "role" parameter.' }, status: 400
      end
    end
  
    def generate_skills
      text = params[:text]
  
      if text.present?
        prompt = "Please provide a list of skills in an array. The text: #{text}."
        response = generate_gpt_response(prompt)
        if response
          generated_skills = extract_skills_from_text(response['choices'][0]['text'])
          render json: { skills: generated_skills }
        else
          render json: { error: 'Error generating skills.' }, status: 500
        end
      else
        render json: { error: 'Invalid input. Please provide the "text" parameter.' }, status: 400
      end
    end
  
    private
  
    def generate_gpt_response(prompt)
      openai_api_key = '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'
      model_endpoint = 'https://api.openai.com/v1/engines/text-davinci-003/completions'
      headers = {
        'Content-Type': 'application/json',
        'Authorization': "Bearer #{openai_api_key}",
      }
  
      data = {
        prompt: prompt,
        max_tokens: 200,
        temperature: 0.7,
        n: 1,
        stop: nil,
      }
  
      response = HTTParty.post(model_endpoint, body: data.to_json, headers: headers)
      response.parsed_response
    rescue HTTParty::Error => e
      puts "Error making API call to OpenAI: #{e.message}"
      nil
    end
  
    def extract_skills_from_text(text)
      text.split(',').map(&:strip)
    end
  end
  