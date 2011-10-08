# -*- encoding: utf-8 -*-
Dado /^que estou na pagina inicial$/ do
  visit "/" 
end

Quando /^eu clico em "([^"]*)"$/ do |link|
  click_on link
end

Quando /^preencho os dados corretamente$/ do
  fill_in "Descrição", :with => "Evento Teste"
  fill_in "data", :with => "02/02/2002"
  fill_in "hora", :with => "10:00"
  fill_in "Local", :with => "Traf"
  click_on "Gravar"
end

Entao /^eu devo ver o evento cadastrado$/ do
  page.should have_content "Evento Teste"
  page.should have_content "02/02/2002"
  page.should have_content "10:00"
  page.should have_content "Traf"
end
