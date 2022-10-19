The data in this directory is extracted from the first dialogue in the Inuktut
Tusaalanga language lessons.
Source: https://tusaalanga.ca/lesson/1/dialogue

The data is Copyright(c) 2022, Pirurvik Centre

Gavin Nesbitt, from the Pirurvik center, has granted permission to use this
data for the purposes of the ReadAlongs Studio project.

File descriptions:
 - Welcome.syllabics: Inuktut text in Inuktut syllabics
 - Welcome.roman: Inuktut text in romanized writing
 - Welcome.english: English translations
 - Welcome.mp3: Inuktut audio recording
 - Welcome.xml: XML file produced by "readalongs prepare -l iku Welcome.syllabics Welcome.xml"
 - Welcome-multi-ling: XML file combining all sources with the syllabics to align and the other marked do-not-align

You can create a read-along using this data in multiple ways:

readalongs align -l iku Welcome.syllabics Welcome.mp3 syll-only
readalongs align -l iku-sro Welcome.roman Welcome.mp3 roman-only
readalongs align Welcome.xml Welcome.mp3 syll-only
readalongs align Welcome-multi-ling.xml Welcome.mp3 with-translations

In all cases, you can add the option -o html to produce the single file output
along with the multi-file version.
