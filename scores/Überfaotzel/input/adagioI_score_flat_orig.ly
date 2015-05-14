\version "2.14.2"

flautoI =  \relative c'' {
	\key ees \major
	ees2\ff r4  r8. g16 
	g2 r4  r8. bes16
	bes2 r4  r4
	r1
	f2.\sfp r4
	r1
	g2.\sfp r4

	R1*8
}

flautoII =  \relative c'' {
	\key ees \major
	ees2\ff r4 r8. ees16 
	ees2 r4  r8. ees16
	ees2 r4  r4
	r1
	ees2.\sfp r4
	r1
	des2.\sfp r4

	R1*8
}

oboeI =  \relative c'' {
	\key ees \major
	ees2\ff r4  r8. g16 
	g2 r4  r8. bes16
	bes2 r4  r4
	r1
	f2.\sfp r4
	r1
	g2.\sfp r4

	R1*6
	r2 ges\p
	f1
}

oboeII =  \relative c'' {
	\key ees \major
	ees2\ff r4  r8. ees16 
	ees2 r4  r8. ees16
	ees2 r4  r4
	r1
	ees2.\sfp r4
	r1
	des2.\sfp r4
	R1*6
	r2 ees\p ~ ees d
}

clarinettibI =  \relative c'' {
	\key f \major
  	c2\ff r4  r8. f16 
	f2 r4  r8. f16
	f2 r4  r4
	r1
	d2.\sfp r4
	r1
	c2.\sfp r4
	r1 r r r r
	r4 c2\sfp r4
	r d2\sfp r4
	r1
}

clarinettibII =  \relative c'' {
	\key f \major
	a2\ff r4  r8. a16 
	a2 r4  r8. c16
	c2 r4  r4
	r1
	d2.\sfp r4
	r1
	c2.\sfp r4
	r1 r r r r
	r4 c2 r4
	r d2 r4
	r1
}

fagottoI =  \relative c {
	\key ees \major
	ees2\ff r4  r8. c'16 
	c2 r4  r8. g16
	g2 r4  r4
	aes,4..\p( c16) ees4..( c16)
	aes1\sfp 
	bes4..( des16) g4..( des16)
	bes1\sfp

	c'4\p r8. c16 bes4 r8. bes16(
	aes2) r4 bes(
	c) r8. c16( bes4) r8. bes16( 
	a2) r4 bes4
	c2( ces)
	bes r4 bes\sf(
	a2\p) r4 a(
	bes) r4 bes, r
}

fagottoII =  \relative c {
	\key ees \major
	ees2\ff r4  r8. c'16 
	c2 r4  r8. g16
	g2 r4  r4
	aes,4.. c16 ees4.. c16
	aes1\sfp
	bes4.. des16 g4.. des16
	bes1\sfp

	c'4\p r8. c16 bes4 r8. bes16 
	aes2 r4 bes 
	c r8. c16 bes4 r8. bes16
	a2 r4 bes4
	c2 ces
	bes r4 bes\sf
	a2\p r4 a 
	bes r4 bes, r
}

corniesI =  \relative c'' {
 	g2\ff r4  r8. c16
	c2 r4  r8. g16
	g2 r4  r
	r1
	c2.\sfp r4
	r1
	c2.\sfp r4
	r1 r r r r
	r4 g2\sfp r4
	r c2\sfp r4 
	r1
}

corniesII =  \relative c'' {
	c,2 r4  r8. e16
	e2 r4  r8. c16
	c2 r4  r
	r1
	c2.\sfp r4
	r1
	c2.\sfp r4
	r1 r r r r 
	r4 g'2\sfp r4
	r c,2\sfp r4 
	r1
}

trombeesI =  \relative c'' {
	g2\ff r4  r8. c16
	c2 r4  r8. g16
	g2 r4  r
	r1
	c2.\sfp r4
	r1
	c2.\sfp r4

	R1*8
}

trombeesII =  \relative c'' {
	c,2 r4  r8. e16
	e2 r4  r8. c16
	c2 r4  r
	r1
	c2. r4
	r1
	c2. r4

	R1*8
}

timpani =   \relative c {
	e2\ff r4  r8. e16
	e2 r4  r8. e16
	e2 r4  r
	r1
	e4\f r r2
	r1
	e4\sf r r2
	
	R1*8
}

trombonealto =  \relative c {
	\key ees \major
	g'2\ff r4  r8. ees'16
	ees2 r4  r8. ees16
	ees2 r4  r
	r1
	c2.\sfp r4
	r1
	des2.\sfp r4
	
	r1
	r4 ees\p ~ ees r
	r1
	r4 ees ~ ees r
	r1
	r4 d2\mf r4
	r c2\mf r4
	r ees\p r d
}

trombonetenor =  \relative c {
	\key ees \major
	ees'2\ff r4  r8. g16
	g2 r4  r8. d'16
	d2 r4  r
	r1
	f,2.\sfp r4
	r1
	g2.\sfp r4
	
	r1
	r4 f-.\p ~ f-. r
	r1
	r4 f-. ~ f-. r
	r1
	r4 f2\mf r4
	r ges2\mf r4
	r f\p r f
}

trombonebasso =  \relative c {
	\key ees \major
	ees2\ff r4  r8. c16
	c2 r4  r8. g16
	g2 r4  r
	r1
	aes2.\sfp r4
	r1
	bes2.\sfp r4
	
	r1
	r4 aes'-.\p ~ aes-. r
	r1
	r4 a-. ~ a-. r
	r1
	r4 bes,2\mf r4
	r a2\mf r4
	r bes\p r bes
}

violinoI =  \relative c' {
	\key ees \major
	<g ees'>2\ff r4  r8. <ees'' g>16
	<ees g>2 r4  r8. <bes bes'>16
	<bes bes'>2 r4  r8. \times 2/3 {bes32\p( aes g} 
	f4) f2 f4 ~
	f\sf f16( aes c  aes) f4 f\p(
	g) g2 g4( 
	g)\sf(  g16)( bes des  bes) g4 g\p(
	
	aes) r8. aes16(  g4) r8. g16(
	f2) r4 g(
	aes) r8. aes16(  ges4) r8. ges16(
	f2) r4 g4(
	aes) r8. aes16(  a4) r8. a16(
	bes2) r4 bes\sf( 
	c2) r4 ees\p(
	f,) r bes r
}

violinoII =  \relative c' {
	\key ees \major
	<g ees'>2\ff r4  r8. <g' ees'>16
	<g ees'>2 r4  r8. <ees' g>16
	<ees g>2 r4  r
	<c, ees>4\p <c ees>2 <c ees>4 ~
	<c\sf ees> <c ees>2 <c ees>4(\p
	<des ees>) <des ees>2 <des ees>4 ~
	<des\sf ees>4 <des ees>2 <des ees>4(\p

	<c ees> ees2) ees4 ~
	ees8 ees4\cresc ees ees ees8\p ~
	ees4 ees2 ees4 ~
	ees8\p ees4\decresc ees ees ees8\p ~
	ees4 ees2 ees4(
	d2) r4 d4\sf( 
	ees2) r4 ges\p(
	ees) r d r
}

viola =  \relative c {
	\key ees \major
	ees2\ff r4  r8. c''16
	c2 r4  r8. g16
	g2 r4  r
	aes,4\p aes2 aes4 ~
	aes\sf aes2 aes4\p(
	bes) bes2 bes4 ~
	bes\f bes2 bes4\p(

	c) r8. c16( bes4) r8. bes16(
	aes2) r4 bes(
	c) r8. c16( bes4) r8. bes16(
	c2) r4 des(
	c) r8. c16( ces4) r8. ces16(
	bes2) r4 f'4\sf(
	ges2) r4 c,4\p(
	bes) r aes r
}

violoncello =  \relative c {
	\key ees \major
	\slurUp
	\stemUp
	ees2\ff r4  r8. c'16 
	c2 r4  r8. g16
	g2 r4  r4
	aes,4..\p( c16) ees4..( c16)
	aes1\sfp 
	bes4..( des16) g4..( des16)
	bes1\sfp

	c'4\p r8. c16( bes4) r8. bes16(
	aes2) r4 bes(
	c) r8. c16( bes4) r8. bes16
	a2 r4 bes4(
	c) r8. c16( ces4) r8. ces16(
	bes2) r4 bes\sf(
	a2\p) r4 a(
	bes) r4 bes, r
}

contrabasso =  \relative c {
	\key ees \major
	ees2\ff r4  r8. c'16 
	c2 r4  r8. g16
	g2 r4  r4
	aes,4..\p( c16) ees4..( c16)
	aes1\sfp 
	bes4..( des16) g4..( des16)
	bes1\sfp

	R1*7
	r2 bes4 r
}


inst = "flauto1"
minst = #"flute"
linst = "Flauto I"
hinst = "Flauto I"
sinst = "Fl. I"
%notes = {\partcombine \flautoI \flautoII}
notes ={\flautoI}

flautoIStaff = \new Staff = \inst {
	\set Staff.midiInstrument = \minst
	\set Staff.instrumentName = \linst
	\set Staff.shortInstrumentName = \sinst
	\notes
}

inst = "flauto2"
minst = #"flute"
linst = "Flauto II"
hinst = "Flauto II"
sinst = "Fl. II"
%notes = {\partcombine \flautoI \flautoII}
notes ={\flautoII}

flautoIIStaff = \new Staff = \inst {
	\set Staff.midiInstrument = \minst
	\set Staff.instrumentName = \linst
	\set Staff.shortInstrumentName = \sinst
	\notes
}


inst = "oboe1"
minst = #"oboe"
linst = "Oboe I"
hinst = "Oboe I"
sinst = "Ob. I"
notes = {\oboeI}
oboeIStaff = \new Staff = \inst {
	\set Staff.midiInstrument = \minst
	\set Staff.instrumentName = \linst
	\set Staff.shortInstrumentName = \sinst
	\notes
}

nst = "oboe2"
minst = #"oboe"
linst = "Oboe II"
hinst = "Oboe II"
sinst = "Ob. II"
notes = {\oboeII}
oboeIIStaff = \new Staff = \inst {
	\set Staff.midiInstrument = \minst
	\set Staff.instrumentName = \linst
	\set Staff.shortInstrumentName = \sinst
	\notes
}

inst = "clarinetto1"
minst = #"clarinet"
linst = \markup { \column {"Clarinetto I" \line {"in B."}} }
hinst = "Clarinetto I"
sinst = "Cl. I"
%notes = {\transposition ais' \clarinettibI
notes = \clarinettibI

clarinettoIStaff =\new Staff = \inst {
	\set Staff.midiInstrument = \minst
	\set Staff.instrumentName = \linst
	\set Staff.shortInstrumentName = \sinst
	\notes
}

inst = "clarinetto2"
minst = #"clarinet"
linst = \markup { \column {"Clarinetto II" \line {"in B."}} }
hinst = "Clarinetto II"
sinst = "Cl. II"
notes = \clarinettibII

clarinettoIIStaff =\new Staff = \inst {
	\set Staff.midiInstrument = \minst
	\set Staff.instrumentName = \linst
	\set Staff.shortInstrumentName = \sinst
	\notes
}

inst = "fagottI"
minst = #"bassoon"
linst = "Fagotti"
hinst = "Fagotti"
sinst = "Fg."
notes = {\clef "bass" \fagottoI}
fagottIStaff = \new Staff = \inst {
	\set Staff.midiInstrument = \minst
	\set Staff.instrumentName = \linst
	\set Staff.shortInstrumentName = \sinst
	\notes
}


inst = "corno1"
minst = #"french horn"
linst = \markup { \column {"Corno I" \line {"in Es."}} }
hinst = "Corno I"
sinst = "Co. I"
%notes = {\transposition dis' \corniesI}
notes = \corniesI

cornoIStaff = \new Staff = \inst {
	\set Staff.midiInstrument = \minst
	\set Staff.instrumentName = \linst
	\set Staff.shortInstrumentName = \sinst
	\notes
}

inst = "corno2"
minst = #"french horn"
linst = \markup { \column {"Corno II" \line {"in Es."}} }
hinst = "Corno II"
sinst = "Co. II"
%notes = {\transposition dis' \corniesII}
notes = \corniesII

cornoIIStaff = \new Staff = \inst {
	\set Staff.midiInstrument = \minst
	\set Staff.instrumentName = \linst
	\set Staff.shortInstrumentName = \sinst
	\notes
}


inst = "tromba1"
minst = #"trumpet"
linst = \markup { \column {"Tromba I" \line {"in Es."}} }
hinst = "Tromba I"
sinst = "Tba. I"
%notes = {\transposition dis'  \trombeesI}
notes = \trombeesI

trombaIStaff = \new Staff = \inst {
	\set Staff.midiInstrument = \minst
	\set Staff.instrumentName = \linst
	\set Staff.shortInstrumentName = \sinst
	\notes
}


inst = "tromba2"
minst = #"trumpet"
linst = \markup { \column {"Tromba II" \line {"in Es."}} }
hinst = "Tromba II"
sinst = "Tba. II"
%notes = {\transposition dis'  \trombeesII}
notes = \trombeesII

trombaIIStaff = \new Staff = \inst {
	\set Staff.midiInstrument = \minst
	\set Staff.instrumentName = \linst
	\set Staff.shortInstrumentName = \sinst
	\notes
}

inst = "timpani"
minst = #"timpani"
linst = \markup { \column {"Timpani" \line {"in Es.B."}} }
hinst = "Timpani"
sinst = "Timp."
notes = {\clef "bass" \timpani}
timpaniStaff = \new Staff = \inst {
	\set Staff.midiInstrument = \minst
	\set Staff.instrumentName = \linst
	\set Staff.shortInstrumentName = \sinst
	\notes
}

inst = "trombone1"
minst = #"trombone"
linst = "Trombone Alto"
hinst = "Trombone Alto"
sinst = "Trbe. Alto"
notes = {\clef "alto" \trombonealto}

tromboneIStaff = \new Staff = \inst {
	\set Staff.midiInstrument = \minst
	\set Staff.instrumentName = \linst
	\set Staff.shortInstrumentName = \sinst
	\notes
}


inst = "trombone2"
minst = #"trombone"
linst = "Trombone Tenore"
hinst = "Trombone Tenore"
sinst = "Trbe. Tenore"
notes = {\clef "alto" \trombonetenor}

tromboneIIStaff = \new Staff = \inst {
	\set Staff.midiInstrument = \minst
	\set Staff.instrumentName = \linst
	\set Staff.shortInstrumentName = \sinst
	\notes
}


inst = "trombone"
minst = #"trombone"
linst = "Trombone Basso"
hinst = "Trombone Basso"
sinst = "TrbiB."
notes = {\clef "bass" \trombonebasso}

trombonebassoStaff = \new Staff = \inst {
	\set Staff.midiInstrument = \minst
	\set Staff.instrumentName = \linst
	\set Staff.shortInstrumentName = \sinst
	\notes
}

inst = "violino1"
minst = #"violin"
linst = "Violino I"
hinst = "Violino I"
sinst = "Vl. I"
notes = \violinoI

violinoIStaff = \new Staff = \inst {
	\set Staff.midiInstrument = \minst
	\set Staff.instrumentName = \linst
	\set Staff.shortInstrumentName = \sinst
	\notes
}

inst = "violino2"
minst = #"violin"
linst = "Violino II"
hinst = "Violino II"
sinst = "Vl. II"
notes = \violinoII

violinoIIStaff =\new Staff = \inst {
	\set Staff.midiInstrument = \minst
	\set Staff.instrumentName = \linst
	\set Staff.shortInstrumentName = \sinst
	\notes
}

inst = "viola"
minst = #"viola"
linst = "Viola"
hinst = "Viola"
sinst = "Vla."
notes = {\clef "alto" \viola}

violaStaff = \new Staff = \inst {
	\set Staff.midiInstrument = \minst
	\set Staff.instrumentName = \linst
	\set Staff.shortInstrumentName = \sinst
	\notes
}

inst = "violoncello"
minst = #"cello"
linst = "Violoncello"
hinst = "Violoncello"
sinst = "Vc."
notes = {\clef "bass" \violoncello}

violoncelloStaff = \new Staff = \inst {
	\set Staff.midiInstrument = \minst
	\set Staff.instrumentName = \linst
	\set Staff.shortInstrumentName = \sinst
	\notes
}

inst = "contrabasso"
minst = #"contrabass"
linst = "Contrabasso"
hinst = "Contrabasso"
sinst = "Cb."
%notes = {\transposition c \clef "bass" \contrabasso}
notes = {\clef "bass" \contrabasso}

contrabassoStaff = \new Staff = \inst {
	\set Staff.midiInstrument = \minst
	\set Staff.instrumentName = \linst
	\set Staff.shortInstrumentName = \sinst
	\notes
}

windGroup =  \new StaffGroup = "wind_group" <<
	\flautoIStaff
	\flautoIIStaff
	\oboeIStaff
	\oboeIIStaff
	\clarinettoIStaff
	\clarinettoIIStaff
	\fagottIStaff
>>

brassGroup =  \new StaffGroup = "brass_group" <<
	\cornoIStaff
	\cornoIIStaff
	\trombaIStaff
	\trombaIIStaff
	\tromboneIStaff
	\tromboneIIStaff
	\trombonebassoStaff
>>

violinGroup = \new GrandStaff = "violin_group" <<
	\violinoIStaff
	\violinoIIStaff
>>

stringGroup = \new StaffGroup = "string_group" <<
	\violinGroup
	\violaStaff
	\violoncelloStaff
	\contrabassoStaff
>>

\new Score <<
  	\windGroup
	\brassGroup
	\timpaniStaff
	\stringGroup
>>