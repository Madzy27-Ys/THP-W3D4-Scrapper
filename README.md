<div align="center" id="top"> 
  <img src="./.github/app.gif" alt="THP" />
</div>

<h1 align="center">THP - Ruby Scraping</h1>

<p align="center">
  <img alt="Github top language" src="https://img.shields.io/github/languages/top/Madzy27-Ys/THP-W3D4-Scrapper?color=56BEB8">
  <img alt="Github language count" src="https://img.shields.io/github/languages/count/Madzy27-Ys/THP-W3D4-Scrapper?color=56BEB8">
  <img alt="Repository size" src="https://img.shields.io/github/repo-size/Madzy27-Ys/THP-W3D4-Scrapper?color=56BEB8">
  <img alt="License" src="https://img.shields.io/github/license/Madzy27-Ys/THP-W3D4-Scrapper?color=56BEB8">
</p>

<p align="center">
  <a href="#dart-about">About</a> &#xa0; | &#xa0; 
  <a href="#sparkles-features">Features</a> &#xa0; | &#xa0;
  <a href="#rocket-technologies">Technologies</a> &#xa0; | &#xa0;
  <a href="#white_check_mark-requirements">Requirements</a> &#xa0; | &#xa0;
  <a href="#checkered_flag-starting">Starting</a> &#xa0; | &#xa0;
  <a href="#memo-license">License</a> &#xa0; | &#xa0;
  <a href="https://github.com/Madzy27-Ys" target="_blank">Author</a>
</p>

<br>

## :dart: About ##

This repository contains small **Ruby scripts** that demonstrate **web scraping** using the [Nokogiri](https://nokogiri.org/) gem.  

- **Crypto Scraper** → Collects cryptocurrency names and prices from *CoinMarketCap*.  
- **Townhall Email Scraper** → Retrieves townhall names and emails from *lannuaire.service-public.fr*.  

These projects are part of learning **automation**, **data collection**, and **web scraping with Ruby**.

---

## :sparkles: Features ##

:heavy_check_mark: Extract crypto names and prices in real time;  
:heavy_check_mark: Scrape townhall names and their emails;  
:heavy_check_mark: Store results in structured Ruby hashes;  

---

## :rocket: Technologies ##

The following tools were used in this project:

- [Ruby](https://www.ruby-lang.org/)  
- [Nokogiri](https://nokogiri.org/)  
- [HTTP](https://github.com/httprb/http)  
- [Open-URI](https://ruby-doc.org/stdlib/libdoc/open-uri/rdoc/OpenURI.html)  

---

## :white_check_mark: Requirements ##

Before starting, you need to have:  

- [Ruby](https://www.ruby-lang.org/en/downloads/) installed  
- Bundler (`gem install bundler`)  
- Required gems installed with:  

```bash
bundle install


# Clone this project
git clone https://github.com/Madzy27-Ys/THP-W3D4-Scrapper.git

# Access
cd thp

# Run the crypto scraper
ruby crypto_scraper.rb

# Run the townhall email scraper
ruby townhall_scraper.rb
