% 2015-05-14 22:17
% random seed -- 1431630947.48

\version "2.18.2"
\language "english"

\header {
	tagline = \markup {}
}

\layout {}

\paper {}

\score {
	\new Score <<
		\context StaffGroup = "wind_group" <<
			\context Staff = "flauto1" {
				{
					{
						\key ef \major
						ef''\breve \ff ~
						\key ef \major
						ef''2 \ff
						r1
						r\breve
						r\longa
						r4
						r16
						g''8
						g''\longa ~
						g''1
						r\longa.
						r2
						r\breve
						r2.
						r16
						bf''4
						bf''\longa..
						r\longa
						r1
						r2
						r2
						f''1. \sfp
						r\longa
						r1.
						r\longa
						g''4. \sfp
						r\longa
						r1.
						R1 * 112
					}
				}
			}
			\context Staff = "flauto2" {
				{
					{
						\key ef \major
						ef''\longa \ff
						r2.
						r2.
						ef''2
						ef''\longa
						r\breve
						r4.
						ef''1. ~
						ef''16
						ef''\longa.
						r\longa
						r1.
						r\longa
						r1
						ef''1
						ef''4 \sfp
						r\breve
						r2
						df''2. \sfp
						r2
						R1 * 32
					}
				}
			}
			\context Staff = "oboe1" {
				{
					{
						\key ef \major
						r\longa...
						r4.
						g''2...
						g''1
						r1.
						r2
						bf''2
						bf''\longa
						r\breve.
						r\longa...
						r\longa.
						f''1. \sfp
						r\breve
						r1
						r1
						g''1. \sfp ~
						g''2. \sfp
						r\longa
						r2
						R1 * 48
						r\longa
						gf''\longa \p ~
						gf''1. \p
						f''\longa..
					}
				}
			}
			\context Staff = "oboe1" {
				{
					{
						\key ef \major
						ef''1. \ff
						r\longa....
						r4.
						ef''2
						ef''1
						r2
						r1.
						ef''8.
						ef''1.
						r1
						r1..
						r\breve
						r\longa
						ef''\longa. \sfp
						r\longa
						r1..
						r\breve
						df''1. \sfp
						r\longa.
						r2
						R1 * 48
						r\breve
						r2
						ef''\longa \p ~
						ef''\longa
						d''\longa.
					}
				}
			}
			\context Staff = "clarinetto1" {
				{
					\key f \major
					c''1.. \ff
					r\longa..
					r4
					r4.
					f''\breve ~
					f''8.
					f''1
					r\breve
					r\breve
					r4..
					f''2
					f''\breve ~
					f''2
					r2
					r\longa.
					r2.
					r1.
					r1
					d''\breve... \sfp
					r2
					r1
					c''1..... \sfp
					r\breve...
					r\breve
					r1
					r\breve
					r1.
					r1
					r\longa.
					r2
					c''\breve \sfp
					r\breve.
					r4
					r\breve
					d''\breve \sfp
					r\breve
					r1
				}
			}
			\context Staff = "clarinetto2" {
				{
					\key f \major
					a'\breve.. \ff
					r\longa
					r\breve
					r2.
					r16
					a'2
					a'1
					r1.
					r1...
					c''2
					c''1
					r1
					r4
					r2.
					r1
					r\breve
					d''\longa \sfp ~
					d''1 \sfp ~
					d''4 \sfp
					r1
					r1.
					r1
					c''\breve... \sfp
					r\breve
					r1.
					r1
					r\longa
					r\longa..
					r1
					r1
					r1
					c''\longa
					r\breve
					r\breve
					d''\longa
					r1
					r1
					r1
				}
			}
			\context Staff = "fagottI" {
				{
					{
						\key ef \major
						ef1 \ff ~
						\key ef \major
						ef1 \ff
						r\longa...
						r\longa..
						r4
						r16
						c'8
						c'\breve
						r2
						r\breve
						r2
						r8
						g2...
						g\breve.
						r\breve...
						r2
						af,2.. \p (
						c8. )
						ef1.. (
						c2 )
						af,\breve. \sfp
						bf,\breve.. (
						df8 )
						g\breve..... (
						df2... )
						bf,\breve \sfp
						c'2 \p
						r8.
						c'2 ~
						c'16
						bf\longa. ~
						bf2.
						r2
						r16
						bf1 (
						af\breve.. )
						r\breve
						bf1 ~ (
						bf2
						c'2 )
						r\breve.
						r8.
						c'2 (
						bf2. )
						r4.
						bf2 (
						a\longa )
						r\longa..
						r4
						bf\longa...
						c'\longa (
						cf'\longa )
						bf'1...
						r2.
						bf'\breve \sf (
						a'1. \p )
						r\breve
						a'1 ~ (
						a'2.
						bf'1 )
						r8
						bf1 ~
						bf4
						r1..
					}
				}
			}
		>>
		\context StaffGroup = "brass_group" <<
			\context Staff = "corno1" {
				{
					g'1 \ff ~
					g'\breve \ff ~
					g'2 \ff
					r\longa.
					r4
					r1.
					c''\breve ~
					c''4 ~
					c''16
					c''1.
					r\longa
					r4
					r1.
					g'1....
					g'\longa ~
					g'1.
					r\breve
					r\breve...
					r1
					c''\breve. \sfp
					r1.
					r1
					c''\longa. \sfp
					r1..
					r1
					r2
					r1
					r\breve
					r\breve
					r1
					r1
					g'\longa \sfp ~
					g'1. \sfp
					r\longa
					r2
					r1
					r4
					c''1. \sfp
					r2
					r1
				}
			}
			\context Staff = "corno2" {
				{
					c'\longa
					r2.
					r1.
					e'\breve ~
					e'4.
					e'\longa ~
					e'1.
					r\longa
					r1..
					r8.
					c'\breve. ~
					c'4.
					c'1.. ~
					c'2
					r\longa..
					r4
					r\breve
					r1
					c'\breve. \sfp
					r2
					r1
					c'\longa. \sfp
					r2
					r\breve.
					r\longa
					r1
					r1
					r1...
					r1...
					r1.
					g'\longa \sfp
					r2.
					r2.
					c'1 \sfp
					r1.
					r1.
				}
			}
			\context Staff = "tromba1" {
				{
					g'1. \ff
					r\breve...
					r1.
					c''8
					c''\longa
					r\breve
					r\breve.
					r4.
					g'2 ~
					g'8
					g'\breve
					r2.
					r2
					r1
					r\breve.
					c''\breve... \sfp
					r1
					r\breve.
					r4
					r\breve.
					c''1. \sfp
					r1
					R1 * 16
				}
			}
			\context Staff = "tromba2" {
				{
					c'\longa
					r\breve
					r4.
					e'2. ~
					e'16
					e'\longa
					r\breve
					r1.
					c'8
					c'1.
					r1
					r1
					r1
					r\longa
					r1
					c'1.....
					r\breve
					r1
					c'2.
					r\breve
					R1 * 4
				}
			}
			\context Staff = "trombone1" {
				{
					{
						\key ef \major
						g\longa... \ff
						r1
						r\breve.
						r8.
						ef'1 ~
						ef'16
						ef'1
						r\breve
						r2
						r\longa.
						ef'1
						ef'\longa
						r\longa.
						r4
						r\longa.
						r2
						r1
						c'1 \sfp ~
						c'\breve. \sfp ~
						c'4 \sfp
						r1..
						r1
						df'\longa. \sfp
						r1
						r\longa.
						r\breve
						ef'4 \p ~
						ef'\longa ~
						ef'2
						r2
						r1
						r1
						r\breve
						ef'2. ~
						ef'1 ~
						ef'1..
						r\breve
						r\breve.
						r1
						d'1 \mf
						r1
						r1.
						c'1.. \mf
						r1
						r1.
						ef'\longa \p ~
						ef'2. \p
						r\longa
						r2
						d'\breve. ~
						d'4
					}
				}
			}
			\context Staff = "trombone2" {
				{
					{
						\key ef \major
						ef'\breve \ff ~
						\key ef \major
						ef'2 \ff
						r2.
						r4.
						g'2
						g'\breve ~
						g'2
						r2.
						r\longa
						r8
						d''4
						d''\longa. ~
						d''2
						r1
						r4
						r\breve
						r\longa
						f'1. \sfp ~
						f'2. \sfp
						r\breve.
						r1..
						g'\breve \sfp ~
						g'4 \sfp
						r\breve
						r\breve
						r4
						f'2. -\staccato \p ~
						f'\longa... -\staccato
						r2.
						r1
						r1
						r\breve
						r4
						f'2 -\staccato ~
						f'1 -\staccato
						r\breve
						r\longa..
						r2
						f'\longa \mf
						r2
						r\breve
						gf'\longa. \mf
						r\longa
						r1.
						r1
						r1
						f'2. \p
						r\longa.
						f'1 ~
						f'1 ~
						f'4
					}
				}
			}
			\context Staff = "trombone" {
				{
					{
						\key ef \major
						ef1 \ff ~
						\key ef \major
						ef1 \ff
						r2
						r1.
						r8.
						c8.
						c1 ~
						c\breve
						r1
						r4
						r\breve
						r4
						g,8
						g,\longa
						r1
						r4
						r\breve
						r\breve.
						af,\longa. \sfp
						r\breve...
						r\breve.
						bf,1... \sfp
						r\longa
						r2.
						r\longa.
						r\breve
						r4
						af\longa... -\staccato \p ~
						af\breve -\staccato ~
						af4 -\staccato
						r\longa
						r2.
						r\breve.
						r1
						a\longa. -\staccato ~
						a2 -\staccato ~
						a1 -\staccato ~
						a2 -\staccato
						r\breve
						r\breve.
						r2.
						bf,1 \mf
						r\breve
						r1
						r1.
						a,\longa. \mf
						r\breve
						r\longa
						r1
						bf,1 \p
						r2
						bf,2
					}
				}
			}
		>>
		\context Staff = "timpani" {
			{
				{
					e\longa \ff
					r\longa..
					r1.
					e\longa ~
					e1 ~
					e4..
					e\breve..
					r2.
					r8.
					e8.
					e\longa
					r\longa.
					r2
					r\breve
					r\longa
					r1
					e\breve \f
					r\longa.
					r2.
					r\longa
					r1.
					r1...
					e1 \sf
					r2
					r\breve..
					R1 * 64
				}
			}
		}
		\context StaffGroup = "string_group" <<
			\context GrandStaff = "violin_group" <<
				\context Staff = "violino1" {
					{
						\key ef \major
						<g ef'>1. \ff ~
						\key ef \major
						<g ef'>2 \ff
						r2.
						r1.
						<ef'' g''>2
						<ef'' g''>\longa
						r\longa..
						r4
						r4.
						<bf' bf''>4
						<bf' bf''>1.
						r2
						r\breve..
						r16
						\tweak #'edge-height #'(0.7 . 0)
						%{\times 2/3 {
							bf'16 \p ~ (
							bf'64 \p ~
							bf'256 \p ~
							bf'1024 \p ~
							bf'4096 \p ~
							bf'16384 \p ~
							bf'65536 \p ~
							%{bf'262144 \p ~
							bf'1048576 \p ~
							bf'4194304 \p ~
							bf'16777216 \p ~
							bf'67108864 \p ~
							bf'268435456 \p ~
							bf'1073741824 \p ~
							bf'4294967296 \p ~
							bf'17179869184 \p ~
							bf'68719476736 \p ~
							bf'274877906944 \p ~
							bf'1099511627776 \p ~
							bf'4398046511104 \p ~
							bf'17592186044416 \p ~
							bf'70368744177664 \p ~
							bf'281474976710656 \p ~
							bf'1125899906842624 \p ~
							bf'4503599627370496 \p ~
							bf'18014398509481984 \p ~
							bf'72057594037927936 \p
							af'8 ~
							af'32 ~
							af'128 ~
							af'512 ~
							af'2048 ~
							af'8192 ~
							af'32768 ~
							af'131072 ~
							af'524288 ~
							af'2097152 ~
							af'8388608 ~
							af'33554432 ~
							af'134217728 ~
							af'1073741824 ~
							af'4294967296 ~
							af'8589934592 ~
							af'34359738368 ~
							af'137438953472 ~
							af'1099511627776 ~
							af'2199023255552 ~
							af'8796093022208 ~
							af'35184372088832 ~
							af'281474976710656 ~
							af'562949953421312 ~
							af'4503599627370496 ~
							af'9007199254740992 ~
							af'72057594037927936
							g'16
						}%}
						f'\breve )
						f'\breve..
						f'2 ~
						f'\breve \sf
						f'1.... (
						af'4
						c''2
						af'\breve ~
						af'4 )
						f'1
						f'\breve \p ~ (
						f'2 \p
						g'2 )
						g'\longa. ~
						g'2
						g'\longa ~ (
						g'2
						g'\breve \sf ) (
						g'2... ) (
						bf'2
						df''2
						bf'2 )
						g'2.
						g'1.. \p (
						af'\breve... )
						r4.
						af'2 (
						g'\breve )
						r8.
						g'4 (
						f'1 )
						r\breve
						g'\longa ~ (
						g'2.
						af'\breve )
						r\longa.
						r2
						r16
						af'2 (
						gf'1 )
						r\longa.
						r8.
						gf'2 (
						f'\longa. )
						r\breve
						g'\longa ~ (
						g'2
						af'2 )
						r4.
						af'8 (
						a'\breve )
						r2.
						a'\longa ~ (
						a'1..
						bf'\breve.. )
						r\longa
						r4
						bf'2 \sf (
						c''1 )
						r\breve...
						ef''1 \p ~ (
						ef''2. \p
						f'1 ~
						f'1 )
						r\breve
						bf'\breve
						r\longa
						r1..
					}
				}
				\context Staff = "violino2" {
					{
						\key ef \major
						<g ef'>1 \ff ~
						\key ef \major
						<g ef'>1. \ff
						r1
						r\breve.
						<g' ef''>1 ~
						<g' ef''>4..
						<g' ef''>\breve ~
						<g' ef''>2
						r2
						r2
						r16
						<ef'' g''>2
						<ef'' g''>\longa...
						r\breve
						r2.
						<c' ef'>1 \p ~
						<c' ef'>2. \p
						<c' ef'>1.
						<c' ef'>\breve. ~
						<c' ef'>4 ~
						<c' ef'>\breve \sf ~
						<c' ef'>2. \sf
						<c' ef'>\longa
						<c' ef'>\breve \p (
						<df' ef'>1. )
						<df' ef'>1
						<df' ef'>\breve ~
						<df' ef'>2. ~
						<df' ef'>\breve \sf ~
						<df' ef'>2 \sf
						<df' ef'>\longa. ~
						<df' ef'>2
						<df' ef'>1 \p ~ (
						<df' ef'>4 \p
						<c' ef'>\longa ~
						<c' ef'>2
						ef'1. )
						ef'\longa... ~
						ef'1 ~
						ef'8
						ef'2. \<
						ef'\breve ~
						ef'4
						ef'\breve..
						ef'1 \p ~
						ef'\breve...
						ef'\longa. ~
						ef'2
						ef'\longa ~
						ef'1 ~
						ef'4 ~
						ef'4 \p
						ef'\breve. \>
						ef'\breve ~
						ef'4
						ef'1.
						ef'\breve \p ~
						ef'8 \p ~
						ef'1 ~
						ef'4
						ef'\longa ~
						ef'2
						ef'\breve (
						d'1 )
						r\breve
						d'2. \sf (
						ef'\breve )
						r2.
						gf'\longa \p ~ (
						gf'1.. \p
						ef'1 ~
						ef'4 )
						r\longa.
						r2
						d'1
						r\breve
						r4
					}
				}
			>>
			\context Staff = "viola" {
				{
					{
						\key ef \major
						ef1 \ff ~
						\key ef \major
						ef1. \ff
						r2.
						r2
						r16
						c''1..
						c''\longa
						r1..
						r2
						r16
						g'4
						g'\breve
						r2
						r\breve
						r2.
						af\breve... \p
						af1...
						af\breve.. ~
						af2. \sf
						af1 ~
						af\breve
						af1. \p (
						bf1 )
						bf1. ~
						bf2
						bf\breve ~
						bf4 ~
						bf\longa \f ~
						bf1. \f
						bf\longa.
						bf\breve \p (
						c'\breve )
						r8.
						c'8. (
						bf\breve )
						r1.
						bf\breve ~ (
						bf4
						af\breve )
						r\breve
						bf\breve (
						c'\longa ~
						c'1. )
						r1.
						c'4 ~ (
						c'16
						bf1 ~
						bf4 )
						r2...
						bf8. (
						c'1 )
						r1..
						df'\breve (
						c'\breve )
						r2...
						c'1.. ~ (
						c'16
						cf'1 ~
						cf'4 )
						r1.
						r8.
						cf'4 (
						bf'\longa. ~
						bf'2 )
						r\longa
						r1..
						f''\breve \sf ~ (
						f''2 \sf
						gf''1 ~
						gf''1 )
						r1
						r2.
						c''1 \p ~ (
						c''1.. \p
						bf'\longa.... )
						r2
						af'1 ~
						af'1 ~
						af'4
						r1
						r4
					}
				}
			}
			\context Staff = "violoncello" {
				{
					{
						\key ef \major
						ef1. \ff
						r\breve
						r2...
						c'2
						c'1 ~
						c'\breve..
						r\longa...
						r1.
						g2
						g\longa
						r\longa
						r1..
						r\breve
						af,2.. \p (
						c8 )
						ef2.. (
						c2 )
						af,\breve \sfp
						bf,1 ~ (
						bf,4 ~
						bf,16
						df8 )
						g\longa.. ~ (
						g4..
						df2. )
						bf,\breve \sfp
						c'\longa. \p ~
						c'2 \p
						r\longa
						r1
						r16
						c'2 (
						bf\breve )
						r1.
						bf2 ~ (
						bf16
						af1. )
						r8
						bf8 (
						c'1 ~
						c'1. )
						r\breve
						r2.
						r16
						c'4 ~ (
						c'16
						bf\longa ~
						bf4 )
						r2.
						bf1 ~
						bf16
						a1.
						r4
						bf1 (
						c'2 )
						r\breve...
						c'8 (
						cf'1 ~
						cf'4 )
						r1.
						cf'\breve ~ (
						cf'4.
						bf'1 )
						r\breve
						bf'\breve.. \sf (
						a'1 \p ~
						a'1 \p )
						r\breve
						r4
						a'1 (
						bf'\longa. ~
						bf'2. )
						r2
						bf\breve
						r\breve
					}
				}
			}
			\context Staff = "contrabasso" {
				{
					{
						\key ef \major
						ef\longa \ff
						r1
						r1
						r2...
						c'2
						c'1
						r\breve
						r2
						r\breve
						r4..
						g2. ~
						g16
						g1
						r\breve
						r2.
						r\longa.
						r4
						af,\breve \p ~ (
						af,8. \p
						c2.. )
						ef1..... (
						c4 )
						af,\longa.. \sfp
						bf,\breve.. (
						df4 )
						g1..... (
						df2 )
						bf,1 \sfp
						R1 * 21
						r\longa
						r1.
						bf,\breve
						r2.
					}
				}
			}
		>>
	>>
	\midi { }
}