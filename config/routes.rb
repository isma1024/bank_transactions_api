Rails.application.routes.draw do
  get 'welcome/index'

  #transactions routes
  get 'transaction/list'

  get 'transaction/get/:id' => 'transaction#get'

  post 'transaction/create'

  put 'transaction/edit/:id' => 'transaction#update'

  delete 'transaction/delete/:id' => 'transaction#delete'

  #account routes
  get 'account/list'

  get 'account/get/:id' => 'account#get'

  post 'account/create'

  put 'account/edit/:id' => 'account#update'

  delete 'account/delete/:id' => 'account#delete'

  get 'account/:id/transactions' => 'account#get_transactions'

  #categories routes
  get 'category/list'

  get 'category/get/:id' => 'category#get'

  post 'category/create'

  put 'category/edit/:id' => 'category#update'

  delete 'category/delete/:id' => 'category#delete'

  get 'category/:id/transactions' => 'category#get_transactions'

  root 'welcome#index'
end
