module ApplicationHelper
  API_KEY = 'trnsl.1.1.20190515T121329Z.90391e68dc0898dd.226de42de3515d197f9822d69f7eadb3a25d41ad'
  def translate_language(lang, text)
    puts "========================"
    puts text
    puts "========================"
    url = "https://translate.yandex.net/api/v1.5/tr.json/translate?key=#{API_KEY}&text=#{text}&lang=#{lang}"
    response = HTTParty.get(url, format: :json)
    return JSON.parse(response.body)['text'][0]
  end
end
