require 'open-uri'
require 'nokogiri'
require 'http'

# URL de la page listant toutes les mairies du Val d'Oise
listing_url = "https://lannuaire.service-public.fr/navigation/ile-de-france/val-d-oise/mairie"

# Tableau pour stocker les résultats
townhall_emails = []

# Ouvrir la page principale et récupérer tous les liens vers les mairies
listing_page = Nokogiri::HTML(URI.open(listing_url))
links = listing_page.xpath('//*[@id="main"]/div/div/div/article/div[3]/ul//a')

# Pour chaque mairie
links.each do |link|
  href = link['href']
  # Construire l'URL complète si nécessaire
  url = href.start_with?('http') ? href : "https://lannuaire.service-public.fr#{href}"

  # Ouvrir la page de la mairie
  town_page = Nokogiri::HTML(URI.open(url))

  # Récupérer le nom de la ville et l'email
  ville = town_page.xpath('//h1').text.strip
  email = town_page.xpath('//*[@id="contentContactEmail"]/span[2]/a').text.strip rescue ""

  townhall_emails << { ville => email }
end

puts townhall_emails

def menu(townhall_emails)
    loop do
        puts "\n=== Menu Mairies ==="
        