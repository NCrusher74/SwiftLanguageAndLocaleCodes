//
//  Language.swift
//  
//
//  Created by Nolaine Crusher on 10/21/20.
//

import Foundation
public enum Language: String, Codable {
    case Afrikaans
    case Aghem
    case Akan
    case Albanian
    case Amharic
    case Arabic
    case Armenian
    case Assamese
    case Asturian
    case Asu
    case Azerbaijani
    case Bafia
    case Bambara
    case Bangla
    case Basaa
    case Basque
    case Belarusian
    case Bemba
    case Bena
    case Bodo
    case Bosnian
    case Breton
    case Bulgarian
    case Burmese
    case Cantonese
    case Catalan
    case CentralAtlasTamazight = "Central Atlas Tamazight"
    case CentralKurdish = "Central Kurdish"
    case Chakma
    case Chechen
    case Cherokee
    case Chiga
    case Chinese
    case Colognian
    case Cornish
    case Croatian
    case Czech
    case Danish
    case Duala
    case Dutch
    case Dzongkha
    case Embu
    case English
    case Esperanto
    case Estonian
    case Ewe
    case Ewondo
    case Faroese
    case Filipino
    case Finnish
    case French
    case Friulian
    case Fulah
    case Galician
    case Ganda
    case Georgian
    case German
    case Greek
    case Gujarati
    case Gusii
    case Hausa
    case Hawaiian
    case Hebrew
    case Hindi
    case Hungarian
    case Icelandic
    case Igbo
    case InariSami = "Inari Sami"
    case Indonesian
    case Irish
    case Italian
    case Japanese
    case JolaFonyi = "Jola Fonyi"
    case Kabuverdianu
    case Kabyle
    case Kako
    case Kalaallisut
    case Kalenjin
    case Kamba
    case Khmer
    case Kannada
    case Kashmiri
    case Kazakh
    case Kikuyu
    case Konkani
    case Korean
    case KoyraChiini = "Koyra Chiini"
    case Kwasio
    case Kyrgyz
    case Lakota
    case Langi
    case Lao
    case Latvian
    case Lingala
    case Lithuanian
    case LowGerman = "Low German"
    case LowerSorbian = "Lower Sorbian"
    case LubaKatanga = "Luba Katanga"
    case Luo
    case Luxembourgish
    case Luyia
    case Macedonian
    case Machame
    case MakhuwaMeetto = "Makhuwa Meetto"
    case Makonde
    case Malagasy
    case Malay
    case Maltese
    case Manx
    case Marathi
    case Masai
    case Mazanderani
    case Meru
    case Metaʼ
    case Mongolian
    case Morisyen
    case Mundang
    case Nama
    case Nepali
    case Ngiemboon
    case Ngomba
    case NorthNdebele = "North Ndebele"
    case NorthernLuri = "Northern Luri"
    case NorthernSami = "Northern Sami"
    case NorwegianBokmål = "Norwegian Bokmål"
    case NorwegianNynorsk = "Norwegian Nynorsk"
    case Nuer
    case Nyankole
    case Odia
    case Oromo
    case Ossetic
    case Pashto
    case Persian
    case Polish
    case Portuguese
    case Punjabi
    case Quechua
    case Romanian
    case Romansh
    case Rombo
    case Rundi
    case Russian
    case Rwa
    case Sakha
    case Samburu
    case Sango
    case Sangu
    case ScottishGaelic = "Scottish Gaelic"
    case Sena
    case Serbian
    case Shambala
    case Shona
    case SichuanYi = "Sichuan Yi"
    case Sinhala
    case Slovak
    case Slovenian
    case Soga
    case Somali
    case Spanish
    case StandardMoroccanTamazight = "Standard Moroccan Tamazight"
    case Swahili
    case Swedish
    case SwissGerman = "Swiss German"
    case Tachelhit
    case Taita
    case Tajik
    case Tamil
    case Tasawaq
    case Tatar
    case Telugu
    case Teso
    case Thai
    case Tibetan
    case Tigrinya
    case Tongan
    case Turkish
    case Ukrainian
    case unspecified
    case UpperSorbian = "Upper Sorbian"
    case Urdu
    case Uyghur
    case Uzbek
    case Vai
    case Vietnamese
    case Vunjo
    case Walser
    case Welsh
    case WesternFrisian = "Western Frisian"
    case Wolof
    case Yangben
    case Yiddish
    case Yoruba
    case Zarma
    case Zulu
    
    public var iso6392Code: ISO6392Code {
        switch self {
            case .Afrikaans: return .afr
            case .Aghem: return .agq
            case .Akan: return .aka
            case .Albanian: return .sqi
            case .Amharic: return .amh
            case .Arabic: return .ara
            case .Armenian: return .hye
            case .Assamese: return .asm
            case .Asturian: return .ast
            case .Asu: return .asa
            case .Azerbaijani: return .aze
            case .Bafia: return .ksf
            case .Bambara: return .bam
            case .Bangla: return .ben
            case .Basaa: return .bas
            case .Basque: return .eus
            case .Belarusian: return .bel
            case .Bemba: return .bem
            case .Bena: return .bez
            case .Bodo: return .brx
            case .Bosnian: return .bos
            case .Breton: return .bre
            case .Bulgarian: return .bul
            case .Burmese: return .mya
            case .Cantonese: return .yue
            case .Catalan: return .cat
            case .CentralAtlasTamazight: return .tzm
            case .CentralKurdish: return .kur
            case .Chakma: return .ccp
            case .Chechen: return .che
            case .Cherokee: return .chr
            case .Chiga: return .cgg
            case .Chinese: return .zho
            case .Colognian: return .ksh
            case .Cornish: return .cor
            case .Croatian: return .hrv
            case .Czech: return .ces
            case .Danish: return .dan
            case .Duala: return .dua
            case .Dutch: return .nld
            case .Dzongkha: return .dzo
            case .Embu: return .ebu
            case .English: return .eng
            case .Esperanto: return .epo
            case .Estonian: return .est
            case .Ewe: return .ewe
            case .Ewondo: return .ewo
            case .Faroese: return .fao
            case .Filipino: return .fil
            case .Finnish: return .fin
            case .French: return .fra
            case .Friulian: return .fur
            case .Fulah: return .ful
            case .Galician: return .glg
            case .Ganda: return .lug
            case .Georgian: return .kat
            case .German: return .deu
            case .Greek: return .ell
            case .Gujarati: return .guj
            case .Gusii: return .guz
            case .Hausa: return .hau
            case .Hawaiian: return .haw
            case .Hebrew: return .heb
            case .Hindi: return .hin
            case .Hungarian: return .hun
            case .Icelandic: return .isl
            case .Igbo: return .ibo
            case .InariSami: return .smn
            case .Indonesian: return .ind
            case .Irish: return .gle
            case .Italian: return .ita
            case .Japanese: return .jpn
            case .JolaFonyi: return .dyo
            case.Kabuverdianu: return .kea
            case.Kabyle: return .kab
            case.Kako: return .kkj
            case.Kalaallisut: return .kal
            case.Kalenjin: return .kln
            case.Kamba: return .kam
            case.Khmer: return .khm
            case.Kannada: return .kan
            case.Kashmiri: return .kas
            case.Kazakh: return .kaz
            case.Kikuyu: return .kik
            case.Konkani: return .kok
            case.Korean: return .kor
            case.KoyraChiini: return .khq
            case.Kwasio: return .nmg
            case.Kyrgyz: return .kir
            case .Lakota: return .lkt
            case .Langi: return .lag
            case .Lao: return .lao
            case .Latvian: return .lav
            case .Lingala: return .lin
            case .Lithuanian: return .lit
            case .LowGerman: return .nds
            case .LowerSorbian: return .dsb
            case .LubaKatanga: return .lub
            case .Luo: return .luo
            case .Luxembourgish: return .ltz
            case .Luyia: return .luy
            case .Macedonian: return .mkd
            case .Machame: return .jmc
            case .MakhuwaMeetto: return .mgh
            case .Makonde: return .kde
            case .Malagasy: return .mlg
            case .Malay: return .msa
            case .Maltese: return .mlt
            case .Manx: return .glv
            case .Marathi: return .mar
            case .Masai: return .mas
            case .Mazanderani: return .mzn
            case .Meru: return .mer
            case .Metaʼ: return .mgo
            case .Mongolian: return .mon
            case .Morisyen: return .mfe
            case .Mundang: return .mua
            case .Nama: return .naq
            case .Nepali: return .nep
            case .Ngiemboon: return .nnh
            case .Ngomba: return .jgo
            case .NorthNdebele: return .nbl
            case .NorthernLuri: return .lrc
            case .NorthernSami: return .sme
            case .NorwegianBokmål: return .nob
            case .NorwegianNynorsk: return .nno
            case .Nuer: return .nus
            case .Nyankole: return .nyn
            case .Odia: return .ori
            case .Oromo: return .orm
            case .Ossetic: return .oss
            case .Pashto: return .pus
            case .Persian: return .fas
            case .Polish: return .pol
            case .Portuguese: return .por
            case .Punjabi: return .pan
            case .Quechua: return .que
            case .Romanian: return .rom
            case .Romansh: return .roh
            case .Rombo: return .rof
            case .Rundi: return .run
            case .Russian: return .rus
            case .Rwa: return .rwk
            case .Sakha: return .sah
            case .Samburu: return .saq
            case .Sango: return .sag
            case .Sangu: return .sbp
            case .ScottishGaelic: return .gla
            case .Sena: return .seh
            case .Serbian: return .srp
            case .Shambala: return .ksb
            case .Shona: return .sna
            case .SichuanYi: return .iii
            case .Sinhala: return .sin
            case .Slovak: return .slk
            case .Slovenian: return .slv
            case .Soga: return .xog
            case .Somali: return .som
            case .Spanish: return .spa
            case .StandardMoroccanTamazight: return .zgh
            case .Swahili: return .swa
            case .Swedish: return .swe
            case .SwissGerman: return .gsw
            case .Tachelhit: return .shi
            case .Taita: return .dav
            case .Tajik: return .tgk
            case .Tamil: return .tam
            case .Tasawaq: return .twq
            case .Tatar: return .tat
            case .Telugu: return .tel
            case .Teso: return .teo
            case .Thai: return .tha
            case .Tibetan: return .bod
            case .Tigrinya: return .tir
            case .Tongan: return .ton
            case .Turkish: return .tur
            case .Ukrainian: return .ukr
            case .unspecified: return .und
            case .UpperSorbian: return .hsb
            case .Urdu: return .urd
            case .Uyghur: return .uig
            case .Uzbek: return .uzb
            case .Vai: return .vai
            case .Vietnamese: return .vie
            case .Vunjo: return .vun
            case .Walser: return .wae
            case .Welsh: return .cym
            case .WesternFrisian: return .fry
            case .Wolof: return .wol
            case .Yangben: return .yav
            case .Yiddish: return .yid
            case .Yoruba: return .yor
            case .Zarma: return .dje
            case .Zulu: return .zul
        }
    }
    
    public var localeCode: ICULocaleCode {
        switch self {
            case .Afrikaans: return .afrikaans
            case .Aghem: return .aghem
            case .Akan: return .akan
            case .Albanian: return .albanian
            case .Amharic: return .amharic
            case .Arabic: return .arabic
            case .Armenian: return .armenian
            case .Assamese: return .assamese
            case .Asturian: return .asturian
            case .Asu: return .asu
            case .Azerbaijani: return .azerbaijani
            case .Bafia: return .bafia
            case .Bambara: return .bambara
            case .Bangla: return .bangla
            case .Basaa: return .basaa
            case .Basque: return .basque
            case .Belarusian: return .belarusian
            case .Bemba: return .bemba
            case .Bena: return .bena
            case .Bodo: return .bodo
            case .Bosnian: return .bosnian
            case .Breton: return .breton
            case .Bulgarian: return .bulgarian
            case .Burmese: return .burmese
            case .Cantonese: return .cantonese
            case .Catalan: return .catalan
            case .CentralAtlasTamazight: return .centralAtlasTamazight
            case .CentralKurdish: return .centralKurdish
            case .Chakma: return .chakma
            case .Chechen: return .chechen
            case .Cherokee: return .cherokee
            case .Chiga: return .chiga
            case .Chinese: return .chinese
            case .Colognian: return .colognian
            case .Cornish: return .cornish
            case .Croatian: return .croatian
            case .Czech: return .czech
            case .Danish: return .danish
            case .Duala: return .duala
            case .Dutch: return .dutch
            case .Dzongkha: return .dzongkha
            case .Embu: return .embu
            case .English: return .english
            case .Esperanto: return .esperanto
            case .Estonian: return .estonian
            case .Ewe: return .ewe
            case .Ewondo: return .ewondo
            case .Faroese: return .faroese
            case .Filipino: return .filipino
            case .Finnish: return .finnish
            case .French: return .french
            case .Friulian: return .friulian
            case .Fulah: return .fulah
            case .Galician: return .galician
            case .Ganda: return .ganda
            case .Georgian: return .georgian
            case .German: return .german
            case .Greek: return .greek
            case .Gujarati: return .gujarati
            case .Gusii: return .gusii
            case .Hausa: return .hausa
            case .Hawaiian: return .hawaiian
            case .Hebrew: return .hebrew
            case .Hindi: return .hindi
            case .Hungarian: return .hungarian
            case .Icelandic: return .icelandic
            case .Igbo: return .igbo
            case .InariSami: return .inariSami
            case .Indonesian: return .indonesian
            case .Irish: return .irish
            case .Italian: return .italian
            case .Japanese: return .japanese
            case .JolaFonyi: return .jolaFonyi
            case .Kabuverdianu: return .kabuverdianu
            case .Kabyle: return .kabyle
            case .Kako: return .kako
            case .Kalaallisut: return .kalaallisut
            case .Kalenjin: return .kalenjin
            case .Kamba: return .kamba
            case .Khmer: return .khmer
            case .Kannada: return .kannada
            case .Kashmiri: return .kashmiri
            case .Kazakh: return .kazakh
            case .Kikuyu: return .kikuyu
            case .Konkani: return .konkani
            case .Korean: return .korean
            case .KoyraChiini: return .koyraChiini
            case .Kwasio: return .kwasio
            case .Kyrgyz: return .kyrgyz
            case .Lakota: return .lakota
            case .Langi: return .langi
            case .Lao: return .lao
            case .Latvian: return .latvian
            case .Lingala: return .lingala
            case .Lithuanian: return .lithuanian
            case .LowGerman: return .lowGerman
            case .LowerSorbian: return .lowerSorbian
            case .LubaKatanga: return .lubaKatanga
            case .Luo: return .luo
            case .Luxembourgish: return .luxembourgish
            case .Luyia: return .luyia
            case .Macedonian: return .macedonian
            case .Machame: return .machame
            case .MakhuwaMeetto: return .makhuwaMeetto
            case .Makonde: return .makonde
            case .Malagasy: return .malagasy
            case .Malay: return .malay
            case .Maltese: return .maltese
            case .Manx: return .manx
            case .Marathi: return .marathi
            case .Masai: return .masai
            case .Mazanderani: return .mazanderani
            case .Meru: return .meru
            case .Metaʼ: return .metaʼ
            case .Mongolian: return .mongolian
            case .Morisyen: return .morisyen
            case .Mundang: return .mundang
            case .Nama: return .nama
            case .Nepali: return .nepali
            case .Ngiemboon: return .ngiemboon
            case .Ngomba: return .ngomba
            case .NorthNdebele: return .northNdebele
            case .NorthernLuri: return .northernLuri
            case .NorthernSami: return .northernSami
            case .NorwegianBokmål: return .norwegianBokmål
            case .NorwegianNynorsk: return .norwegianNynorsk
            case .Nuer: return .nuer
            case .Nyankole: return .nyankole
            case .Odia: return .odia
            case .Oromo: return .oromo
            case .Ossetic: return .ossetic
            case .Pashto: return .pashto
            case .Persian: return .persian
            case .Polish: return .polish
            case .Portuguese: return .portuguese
            case .Punjabi: return .punjabi
            case .Quechua: return .quechua
            case .Romanian: return .romanian
            case .Romansh: return .romansh
            case .Rombo: return .rombo
            case .Rundi: return .rundi
            case .Russian: return .russian
            case .Rwa: return .rwa
            case .Sakha: return .sakha
            case .Samburu: return .samburu
            case .Sango: return .sango
            case .Sangu: return .sangu
            case .ScottishGaelic: return .scottishGaelic
            case .Sena: return .sena
            case .Serbian: return .serbian
            case .Shambala: return .shambala
            case .Shona: return .shona
            case .SichuanYi: return .sichuanYi
            case .Sinhala: return .sinhala
            case .Slovak: return .slovak
            case .Slovenian: return .slovenian
            case .Soga: return .soga
            case .Somali: return .somali
            case .Spanish: return .spanish
            case .StandardMoroccanTamazight: return .standardMoroccanTamazight
            case .Swahili: return .swahili
            case .Swedish: return .swedish
            case .SwissGerman: return .swissGerman
            case .Tachelhit: return .tachelhit
            case .Taita: return .taita
            case .Tajik: return .tajik
            case .Tamil: return .tamil
            case .Tasawaq: return .tasawaq
            case .Tatar: return .tatar
            case .Telugu: return .telugu
            case .Teso: return .teso
            case .Thai: return .thai
            case .Tibetan: return .tibetan
            case .Tigrinya: return .tigrinya
            case .Tongan: return .tongan
            case .Turkish: return .turkish
            case .Ukrainian: return .ukrainian
            case .unspecified: return .unspecified
            case .UpperSorbian: return .upperSorbian
            case .Urdu: return .urdu
            case .Uyghur: return .uyghur
            case .Uzbek: return .uzbek
            case .Vai: return .vai
            case .Vietnamese: return .vietnamese
            case .Vunjo: return .vunjo
            case .Walser: return .walser
            case .Welsh: return .welsh
            case .WesternFrisian: return .westernFrisian
            case .Wolof: return .wolof
            case .Yangben: return .yangben
            case .Yiddish: return .yiddish
            case .Yoruba: return .yoruba
            case .Zarma: return .zarma
            case .Zulu: return .zulu
        }
    }
}
