Rails.application.routes.draw do
  resources :participant_relationships
  resources :relationship_types
  resources :participant_documents
  resources :document_types
  resources :countries
  resources :tasks
  resources :task_statuses
  resources :participant_params
  resources :param_sub_values
  resources :param_values
  resources :params
  resources :param_tables do
    resources :param_values
  end
  resources :table_types
  resources :param_categories do
    resources :params
  end
  resources :participants
  resources :param_matrices do
    resources :param_categories
  end
  resources :matrix_types
  resources :users
  resources :participant_types
  resources :genders
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
