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
$ rake publish
```

Kontakt @smgt, simon@smgt.me
