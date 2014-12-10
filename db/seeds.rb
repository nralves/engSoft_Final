# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(name: "Pedro Dias", email: "pedro.fct.unl.pt", institute: "FCT", profession: "estudante", statistics: 1)
User.create(name: "Nuno Alves", email: "nuno.fct.unl.pt", institute: "FCT", profession: "estudante", statistics: 1)
User.create(name: "Mónica Silvestre", email: "monica.fct.unl.pt", institute: "FCT", profession: "estudante", statistics: 1)
User.create(name: "Paulo Ricardo", email: "paulo.fct.unl.pt", institute: "FCT", profession: "estudante", statistics: 1)

Skill.create(name: "Ruby on Rails")
Skill.create(name: "Software Engineering")
Skill.create(name: "Web Develpment")
Skill.create(name: "Oracle DB")
Skill.create(name: "C++")
Skill.create(name: "Java")
Skill.create(name: "Artificial Intellingence")
Skill.create(name: "Computational Logic")
Skill.create(name: "Computer Networks")
Skill.create(name: "Network Security")

Question.create(title: "Como criar uma aplicação RoR?", body: "Gostaria de saber como criar uma aplicação Ruby on Rails em ambiente Linux", user_id: 1)
Question.create(title: "O que é o modelo Kaos?", body: "Alguem pode explicar o que é o modelo kaos?", user_id: 2)
Question.create(title: "Para que serve o padding utilizado nas cifras?", body: "Não percebo para que serve o padding aplicado nas mensagens antes de se fazer a cifra da mesma, alguem pode explicar?", user_id: 3)

Answer.create(body: "Fazer download do Rails e utilizar o comando na linha de comandos: rails new <App Name>",question_id: 1, user_id:2)

Job.create(title: "Software Engineering Junior", body:"Requere-se um recem licenciado para trabalhar como Software Engineer Junior na nosa empresa a full-time.", author:"OpenSoft", available: true, user_id: 1)
Job.create(title: "RoR Develpment", body:"Requere-se um recem licenciado para trabalhar como Ruby on Rails Developer na nosa empresa a full-time.", author:"OpenWeb", available: true)
Job.create(title: "Computer Networks Manager", body:"Requere-se um recem licenciado para trabalhar como Computer Network Manager Junior na nosa empresa a full-time.", author:"OpenNetwork", available: false)

Publication.create(name: "Enunciado de CI", body: "Este é o enunciado de Codificação de Informação",user_id: 1, :document => File.open(File.join(Rails.root, '/public/system/publications/pdf/tea.pdf')) )
Publication.create(name: "Static Typing for Ruby on Rails", body: "Ruby on Rails (or just “Rails”) is a popular web application framework built on top of Ruby, an object-oriented scripting language. While Ruby’s powerful features help make Rails development extremely lightweight, this comes at a cost: Ruby is dynamically typed, and so type errors in a Rails application can remain latent until run time, making debugging and maintenance harder. In this paper, we describe DRails, a novel tool that brings static typing to Rails applications to detect a range of run time errors. DRails works by translating Rails programs into pure Ruby code in which Rails’s numerous implicit conventions are made explicit. We then discover type errors by applying DRuby, a previously developed static type inference system, to the translated program. We ran DRails on a suite of applications and found that it was able to detect several previously unknown errors.",user_id: 1, :document => File.open(File.join(Rails.root, '/public/system/publications/pdf/stror.pdf')) )



user = User.find_by_id(1)
user.skills << Skill.find_by_id(1)