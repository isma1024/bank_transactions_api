Rails.application.routes.draw do
  get 'welcome/index'

  get 'transaction/list'

  get 'transaction/get/:id' => 'transaction#get'

  post 'transaction/create'

  put 'transaction/edit/:id' => 'transaction#update'

  delete 'transaction/delete/:id' => 'transaction#delete'

  get 'account/list'

  get 'account/get/:id' => 'account#get'

  post 'account/create'

  put 'account/edit/:id' => 'account#update'

  delete 'account/delete/:id' => 'account#delete'

  get 'account/:id/transactions' => 'account#get_transactions'

  root 'welcome#index'
end
