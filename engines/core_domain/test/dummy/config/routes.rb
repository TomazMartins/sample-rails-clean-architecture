Rails.application.routes.draw do
  mount CoreDomain::Engine => "/core_domain"
end
