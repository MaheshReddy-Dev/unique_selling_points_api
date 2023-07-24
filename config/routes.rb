Rails.application.routes.draw do
  post '/summary', to: 'resume#summary'
  post '/experience', to: 'resume#experience'
  post '/generateSkills', to: 'resume#generate_skills'
end
