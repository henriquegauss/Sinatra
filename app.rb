require 'sinatra'
require 'sinatra/contrib' # disponibilizar diversas novas funções comuns
require 'sinatra/reloader'
require 'sinatra/namespace'
require 'mongoid'

Mongoid.load! 'mongoid.yml'

class Atweet
    include Mongoid::Document  # include dessa classe Document que permite usar coisas fixes(não sei ainda :))
    include Mongoid::Timestamps # include dessa classe Timestamps(no momento que fazemos um post ou atualizamos já será incluido os campos "created ate" e "updated at" automaticamente em nosso documento de infomração indicando as horas) 

    field :author, type: String, default: 'ANON'
    field :content, type: String
    field :image, type: String
    field :tags, type: Array, default: []
    field :likes, type: Integer, default: 0
end

get '/api/v1/tweets' do
    'Hello Ruben tudo bem? aaaa'
end
