# ~/.bin added to path in case /etc/profile hasn't been edited
export PATH=${PATH}:${HOME}/.bin

# git aliases
# commit -a -m 'minor changes dd/mm/yyyy'
alias misc-commit=`git commit -a -m 'minor changes ${date}'`
alias testing=`echo wtf\ ${date}`
#rtmp news feeds
alias tv-aljazeera='rtmpdump -v -r rtmp://livestfslivefs.fplive.net/livestfslive-live/ -y "aljazeera_en_veryhigh?videoId=747084146001&lineUpId=&pubId=665003303001&playerId=751182905001&affiliateId=" -W "http://admin.brightcove.com/viewer/us1.24.04.08.2011-01-14072625/federatedVideoUI/BrightcovePlayer.swf -p "http://english.aljazeera.net/watch_now/ -a "aljazeeraflashlive-live?videoId=747084146001&lineUpId=&pubId=665003303001&playerId=751182905001&affiliateId=" | mplayer-uau - -vo xv'
alias tv-bloomberg='rtmpdump -v -r rtmpt://cp87869.live.edgefcs.net:1935/live \
-a live \
-y us_300@21006 \
-W http://cdn.gotraffic.net/v/20110210_153738//flash/BloombergMediaPlayer.swf \
-p http://www.bloomberg.com/tv/ \
| mplayer-uau -vo xv -'
alias tv-abc24='rtmpdump -v -r rtmp://cp103653.live.edgefcs.net/live/international_medium@36382 | mplayer-uau -vo xv -'
alias tv-france24='rtmpdump -v -r rtmp://stream2.france24.yacast.net/france24_live/en -a france24_live/en -W http://www.france24.com/en/sites/all/modules/maison/aef_player/flash/player.swf -p http://www.france24.com/en/aef_player_popup/france24_player -y f24_liveen | mplayer-uau -vo xv -'
alias tv-rt='rtmpdump -v -r rtmp://fms5.visionip.tv/live -a live -W http://rt.com/s/swf/player5.4.viral.swf -p http://rt.com/on-air/ -y RT_3 | mplayer-uau -vo xv -'

#ngrep alias to sniff out rtmpdump arguments
alias tv-sniff='sudo ngrep -d eth1 -W byline | grep -Pio "(swfurl\.{2}.*?\.{2})|(\.{2}play.*?\w.*?\.{3})|(tcUrl.*?rtmp://.*?\.{2})|(pageUrl\.{3}.*?\.{2})"'

#preferred mplayer flags + uau
alias mplayer='mplayer-uau'
