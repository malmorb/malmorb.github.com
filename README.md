# Malmö.rb hemsida

## Redigera

Malmö.rb är byggd med middleman, en statisk hemsidegenererare. Om du vill lära dig mer om middleman så kolla in http://middlemanapp.com.
För att bidra till denna sidan så gäller följande.

```
# Klona git repot
$ git clone git@github.com:malmorb/malmorb.github.com.git

# Checka ut rätt branch
# Eftersom github publicerar master branchen så får vi ha källan i source och den genererade sidan i master
$ cd malmorb.github.com
$ git checkout source

# Installera gem:arna
$ bundle install

# Utför ändringar
$ touch ninjawarrior.md
$ git add .
$ git commit -m 'bra sida om ninja krigare'

# Skicka upp ändringen till github och publicera sidan
$ git push origin source
$ bundle exec rake publish
```

Kontakt @smgt, simon@smgt.me

# Planera träffar

## Rutiner

### GitHub Issues

Vi planerar träffar genom att **skapa en GitHub Issue** i detta repo.

När Issuen är skapad så sätter vi dit en Label, t.ex. `Meetup` och `Talks needed`.

### Beskriv eventet

Samla ihop en beskrivning av eventet, en trevlig en. Gör en bra titel.

#### Skicka beskrivningen till värden (t.ex. FooCafe)

Vi har samarbetat mycket och väl med [FooCafe](http://foocafe.org/) i Malmö - lokaler och snacks varje gång, tack så mycket!

Innan den 15:e i månaden gäller det att skriva klart nästa beskrivning av event. Då kommer vi med i utskicket, och folk har tid att planera att komma.

Skicka eventbeskrivningen till dem.

#### Skicka beskrivningen till mejllistan

Det finns en mejllista också, skriv ett kort mejl med länken till GitHub Issuen. Exempel på ämnesrad: `[ANN] Malmo.rb meetup on Nov 4`.

### Inför ny termin

Skriv in GitHub Issues med mallar för event i varje, och ge dem datumet som titel.
