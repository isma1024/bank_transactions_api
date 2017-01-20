Rails.application.routes.draw do
  get 'welcome/index'

  get 'transaction/list'

  get 'transaction/get/:id' => 'transaction#get'

  post 'transaction/create'

  put 'transaction/edit/:id' => 'transaction#update'

  delete 'transaction/delete/:id' => 'transaction#delete'

  root 'welcome#index'
end
