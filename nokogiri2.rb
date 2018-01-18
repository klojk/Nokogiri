require 'rubygems'
require 'nokogiri'
require 'open-uri'

# Methode pour récupérer les url
def get_all_the_urls_of_val_doise_townhalls(url)
  page = Nokogiri::HTML(open("http://annuaire-des-mairies.com"))
  tab_link = []
  link = page.css("a.lientxt").each { |b| tab_link << "http://annuaire-des-mairies.com" + b["href"].slice(1..-1) }
  tab_link.each do |l|
    get_the_email_of_a_townhal_from_its_webpage(l)
  end
  # tab_link : je déclare une variable avec une array vide pour accueuillir mes futures url.
  # link = page.css("a.lientxt") : je sélectionne tous les liens avec la classe "lientxt". Les url des différentes mairies.
  # each : je push toutes les URLs trouvées dans mon array "tab_link"> Je rajoute le début générique de l'url.
  # tab_link.each : je fais un each sur chaque élément donc url. Et sur chacunm j'applique la méthode de récupération d'e-mail vu plus haut.
  # je crie Yalllaaaaaaaaa parce que ça marche ^^tr
end