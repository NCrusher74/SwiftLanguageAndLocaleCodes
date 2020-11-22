//
//  Language.swift
//  
//
//  Created by Nolaine Crusher on 10/21/20.
//

import Foundation
public enum Language: String, Codable {
    case afrikaans
    case aghem
    case akan
    case albanian
    case amharic
    case arabic
    case armenian
    case assamese
    case asturian
    case asu
    case azerbaijani
    case bafia
    case bambara
    case bangla
    case basaa
    case basque
    case belarusian
    case bemba
    case bena
    case bodo
    case bosnian
    case breton
    case bulgarian
    case burmese
    case cantonese
    case catalan
    case centralAtlasTamazight = "Central Atlas Tamazight"
    case centralKurdish = "Central Kurdish"
    case chakma
    case chechen
    case cherokee
    case chiga
    case chinese
    case colognian
    case cornish
    case croatian
    case czech
    case danish
    case duala
    case dutch
    case dzongkha
    case embu
    case english
    case esperanto
    case estonian
    case ewe
    case ewondo
    case faroese
    case filipino
    case finnish
    case french
    case friulian
    case fulah
    case galician
    case ganda
    case georgian
    case german
    case greek
    case gujarati
    case gusii
    case hausa
    case hawaiian
    case hebrew
    case hindi
    case hungarian
    case icelandic
    case igbo
    case inariSami = "Inari Sami"
    case indonesian
    case irish
    case italian
    case japanese
    case jolaFonyi = "Jola Fonyi"
    case kabuverdianu
    case kabyle
    case kako
    case kalaallisut
    case kalenjin
    case kamba
    case khmer
    case kannada
    case kashmiri
    case kazakh
    case kikuyu
    case konkani
    case korean
    case koyraChiini = "Koyra Chiini"
    case kwasio
    case kyrgyz
    case lakota
    case langi
    case lao
    case latvian
    case lingala
    case lithuanian
    case lowGerman = "Low German"
    case lowerSorbian = "Lower Sorbian"
    case lubaKatanga = "Luba Katanga"
    case luo
    case luxembourgish
    case luyia
    case macedonian
    case machame
    case makhuwaMeetto = "Makhuwa Meetto"
    case makonde
    case malagasy
    case malay
    case maltese
    case manx
    case marathi
    case masai
    case mazanderani
    case meru
    case metaʼ
    case mongolian
    case morisyen
    case mundang
    case nama
    case nepali
    case ngiemboon
    case ngomba
    case northNdebele = "North Ndebele"
    case northernLuri = "Northern Luri"
    case northernSami = "Northern Sami"
    case norwegianBokmål = "Norwegian Bokmål"
    case norwegianNynorsk = "Norwegian Nynorsk"
    case nuer
    case nyankole
    case odia
    case oromo
    case ossetic
    case pashto
    case persian
    case polish
    case portuguese
    case punjabi
    case quechua
    case romanian
    case romansh
    case rombo
    case rundi
    case russian
    case rwa
    case sakha
    case samburu
    case sango
    case sangu
    case scottishGaelic = "Scottish Gaelic"
    case sena
    case serbian
    case shambala
    case shona
    case sichuanYi = "Sichuan Yi"
    case sinhala
    case slovak
    case slovenian
    case soga
    case somali
    case spanish
    case standardMoroccanTamazight = "Standard Moroccan Tamazight"
    case swahili
    case swedish
    case swissGerman = "Swiss German"
    case tachelhit
    case taita
    case tajik
    case tamil
    case tasawaq
    case tatar
    case telugu
    case teso
    case thai
    case tibetan
    case tigrinya
    case tongan
    case turkish
    case ukrainian
    case unspecified
    case upperSorbian = "Upper Sorbian"
    case urdu
    case uyghur
    case uzbek
    case vai
    case vietnamese
    case vunjo
    case walser
    case welsh
    case westernFrisian = "Western Frisian"
    case wolof
    case yangben
    case yiddish
    case yoruba
    case zarma
    case zulu
    
    public var iso6392Code: ISO6392Code {
        switch self {
            case .afrikaans: return .afr
            case .aghem: return .agq
            case .akan: return .aka
            case .albanian: return .sqi
            case .amharic: return .amh
            case .arabic: return .ara
            case .armenian: return .hye
            case .assamese: return .asm
            case .asturian: return .ast
            case .asu: return .asa
            case .azerbaijani: return .aze
            case .bafia: return .ksf
            case .bambara: return .bam
            case .bangla: return .ben
            case .basaa: return .bas
            case .basque: return .eus
            case .belarusian: return .bel
            case .bemba: return .bem
            case .bena: return .bez
            case .bodo: return .brx
            case .bosnian: return .bos
            case .breton: return .bre
            case .bulgarian: return .bul
            case .burmese: return .mya
            case .cantonese: return .yue
            case .catalan: return .cat
            case .centralAtlasTamazight: return .tzm
            case .centralKurdish: return .kur
            case .chakma: return .ccp
            case .chechen: return .che
            case .cherokee: return .chr
            case .chiga: return .cgg
            case .chinese: return .zho
            case .colognian: return .ksh
            case .cornish: return .cor
            case .croatian: return .hrv
            case .czech: return .ces
            case .danish: return .dan
            case .duala: return .dua
            case .dutch: return .nld
            case .dzongkha: return .dzo
            case .embu: return .ebu
            case .english: return .eng
            case .esperanto: return .epo
            case .estonian: return .est
            case .ewe: return .ewe
            case .ewondo: return .ewo
            case .faroese: return .fao
            case .filipino: return .fil
            case .finnish: return .fin
            case .french: return .fra
            case .friulian: return .fur
            case .fulah: return .ful
            case .galician: return .glg
            case .ganda: return .lug
            case .georgian: return .kat
            case .german: return .deu
            case .greek: return .ell
            case .gujarati: return .guj
            case .gusii: return .guz
            case .hausa: return .hau
            case .hawaiian: return .haw
            case .hebrew: return .heb
            case .hindi: return .hin
            case .hungarian: return .hun
            case .icelandic: return .isl
            case .igbo: return .ibo
            case .inariSami: return .smn
            case .indonesian: return .ind
            case .irish: return .gle
            case .italian: return .ita
            case .japanese: return .jpn
            case .jolaFonyi: return .dyo
            case .kabuverdianu: return .kea
            case .kabyle: return .kab
            case .kako: return .kkj
            case .kalaallisut: return .kal
            case .kalenjin: return .kln
            case .kamba: return .kam
            case .khmer: return .khm
            case .kannada: return .kan
            case .kashmiri: return .kas
            case .kazakh: return .kaz
            case .kikuyu: return .kik
            case .konkani: return .kok
            case .korean: return .kor
            case .koyraChiini: return .khq
            case .kwasio: return .nmg
            case .kyrgyz: return .kir
            case .lakota: return .lkt
            case .langi: return .lag
            case .lao: return .lao
            case .latvian: return .lav
            case .lingala: return .lin
            case .lithuanian: return .lit
            case .lowGerman: return .nds
            case .lowerSorbian: return .dsb
            case .lubaKatanga: return .lub
            case .luo: return .luo
            case .luxembourgish: return .ltz
            case .luyia: return .luy
            case .macedonian: return .mkd
            case .machame: return .jmc
            case .makhuwaMeetto: return .mgh
            case .makonde: return .kde
            case .malagasy: return .mlg
            case .malay: return .msa
            case .maltese: return .mlt
            case .manx: return .glv
            case .marathi: return .mar
            case .masai: return .mas
            case .mazanderani: return .mzn
            case .meru: return .mer
            case .metaʼ: return .mgo
            case .mongolian: return .mon
            case .morisyen: return .mfe
            case .mundang: return .mua
            case .nama: return .naq
            case .nepali: return .nep
            case .ngiemboon: return .nnh
            case .ngomba: return .jgo
            case .northNdebele: return .nbl
            case .northernLuri: return .lrc
            case .northernSami: return .sme
            case .norwegianBokmål: return .nob
            case .norwegianNynorsk: return .nno
            case .nuer: return .nus
            case .nyankole: return .nyn
            case .odia: return .ori
            case .oromo: return .orm
            case .ossetic: return .oss
            case .pashto: return .pus
            case .persian: return .fas
            case .polish: return .pol
            case .portuguese: return .por
            case .punjabi: return .pan
            case .quechua: return .que
            case .romanian: return .rom
            case .romansh: return .roh
            case .rombo: return .rof
            case .rundi: return .run
            case .russian: return .rus
            case .rwa: return .rwk
            case .sakha: return .sah
            case .samburu: return .saq
            case .sango: return .sag
            case .sangu: return .sbp
            case .scottishGaelic: return .gla
            case .sena: return .seh
            case .serbian: return .srp
            case .shambala: return .ksb
            case .shona: return .sna
            case .sichuanYi: return .iii
            case .sinhala: return .sin
            case .slovak: return .slk
            case .slovenian: return .slv
            case .soga: return .xog
            case .somali: return .som
            case .spanish: return .spa
            case .standardMoroccanTamazight: return .zgh
            case .swahili: return .swa
            case .swedish: return .swe
            case .swissGerman: return .gsw
            case .tachelhit: return .shi
            case .taita: return .dav
            case .tajik: return .tgk
            case .tamil: return .tam
            case .tasawaq: return .twq
            case .tatar: return .tat
            case .telugu: return .tel
            case .teso: return .teo
            case .thai: return .tha
            case .tibetan: return .bod
            case .tigrinya: return .tir
            case .tongan: return .ton
            case .turkish: return .tur
            case .ukrainian: return .ukr
            case .unspecified: return .und
            case .upperSorbian: return .hsb
            case .urdu: return .urd
            case .uyghur: return .uig
            case .uzbek: return .uzb
            case .vai: return .vai
            case .vietnamese: return .vie
            case .vunjo: return .vun
            case .walser: return .wae
            case .welsh: return .cym
            case .westernFrisian: return .fry
            case .wolof: return .wol
            case .yangben: return .yav
            case .yiddish: return .yid
            case .yoruba: return .yor
            case .zarma: return .dje
            case .zulu: return .zul
        }
    }
    
    public var localeCode: ICULocaleCode {
        switch self {
            case .afrikaans: return .afrikaans
            case .aghem: return .aghem
            case .akan: return .akan
            case .albanian: return .albanian
            case .amharic: return .amharic
            case .arabic: return .arabic
            case .armenian: return .armenian
            case .assamese: return .assamese
            case .asturian: return .asturian
            case .asu: return .asu
            case .azerbaijani: return .azerbaijani
            case .bafia: return .bafia
            case .bambara: return .bambara
            case .bangla: return .bangla
            case .basaa: return .basaa
            case .basque: return .basque
            case .belarusian: return .belarusian
            case .bemba: return .bemba
            case .bena: return .bena
            case .bodo: return .bodo
            case .bosnian: return .bosnian
            case .breton: return .breton
            case .bulgarian: return .bulgarian
            case .burmese: return .burmese
            case .cantonese: return .cantonese
            case .catalan: return .catalan
            case .centralAtlasTamazight: return .centralAtlasTamazight
            case .centralKurdish: return .centralKurdish
            case .chakma: return .chakma
            case .chechen: return .chechen
            case .cherokee: return .cherokee
            case .chiga: return .chiga
            case .chinese: return .chinese
            case .colognian: return .colognian
            case .cornish: return .cornish
            case .croatian: return .croatian
            case .czech: return .czech
            case .danish: return .danish
            case .duala: return .duala
            case .dutch: return .dutch
            case .dzongkha: return .dzongkha
            case .embu: return .embu
            case .english: return .english
            case .esperanto: return .esperanto
            case .estonian: return .estonian
            case .ewe: return .ewe
            case .ewondo: return .ewondo
            case .faroese: return .faroese
            case .filipino: return .filipino
            case .finnish: return .finnish
            case .french: return .french
            case .friulian: return .friulian
            case .fulah: return .fulah
            case .galician: return .galician
            case .ganda: return .ganda
            case .georgian: return .georgian
            case .german: return .german
            case .greek: return .greek
            case .gujarati: return .gujarati
            case .gusii: return .gusii
            case .hausa: return .hausa
            case .hawaiian: return .hawaiian
            case .hebrew: return .hebrew
            case .hindi: return .hindi
            case .hungarian: return .hungarian
            case .icelandic: return .icelandic
            case .igbo: return .igbo
            case .inariSami: return .inariSami
            case .indonesian: return .indonesian
            case .irish: return .irish
            case .italian: return .italian
            case .japanese: return .japanese
            case .jolaFonyi: return .jolaFonyi
            case .kabuverdianu: return .kabuverdianu
            case .kabyle: return .kabyle
            case .kako: return .kako
            case .kalaallisut: return .kalaallisut
            case .kalenjin: return .kalenjin
            case .kamba: return .kamba
            case .khmer: return .khmer
            case .kannada: return .kannada
            case .kashmiri: return .kashmiri
            case .kazakh: return .kazakh
            case .kikuyu: return .kikuyu
            case .konkani: return .konkani
            case .korean: return .korean
            case .koyraChiini: return .koyraChiini
            case .kwasio: return .kwasio
            case .kyrgyz: return .kyrgyz
            case .lakota: return .lakota
            case .langi: return .langi
            case .lao: return .lao
            case .latvian: return .latvian
            case .lingala: return .lingala
            case .lithuanian: return .lithuanian
            case .lowGerman: return .lowGerman
            case .lowerSorbian: return .lowerSorbian
            case .lubaKatanga: return .lubaKatanga
            case .luo: return .luo
            case .luxembourgish: return .luxembourgish
            case .luyia: return .luyia
            case .macedonian: return .macedonian
            case .machame: return .machame
            case .makhuwaMeetto: return .makhuwaMeetto
            case .makonde: return .makonde
            case .malagasy: return .malagasy
            case .malay: return .malay
            case .maltese: return .maltese
            case .manx: return .manx
            case .marathi: return .marathi
            case .masai: return .masai
            case .mazanderani: return .mazanderani
            case .meru: return .meru
            case .metaʼ: return .metaʼ
            case .mongolian: return .mongolian
            case .morisyen: return .morisyen
            case .mundang: return .mundang
            case .nama: return .nama
            case .nepali: return .nepali
            case .ngiemboon: return .ngiemboon
            case .ngomba: return .ngomba
            case .northNdebele: return .northNdebele
            case .northernLuri: return .northernLuri
            case .northernSami: return .northernSami
            case .norwegianBokmål: return .norwegianBokmål
            case .norwegianNynorsk: return .norwegianNynorsk
            case .nuer: return .nuer
            case .nyankole: return .nyankole
            case .odia: return .odia
            case .oromo: return .oromo
            case .ossetic: return .ossetic
            case .pashto: return .pashto
            case .persian: return .persian
            case .polish: return .polish
            case .portuguese: return .portuguese
            case .punjabi: return .punjabi
            case .quechua: return .quechua
            case .romanian: return .romanian
            case .romansh: return .romansh
            case .rombo: return .rombo
            case .rundi: return .rundi
            case .russian: return .russian
            case .rwa: return .rwa
            case .sakha: return .sakha
            case .samburu: return .samburu
            case .sango: return .sango
            case .sangu: return .sangu
            case .scottishGaelic: return .scottishGaelic
            case .sena: return .sena
            case .serbian: return .serbian
            case .shambala: return .shambala
            case .shona: return .shona
            case .sichuanYi: return .sichuanYi
            case .sinhala: return .sinhala
            case .slovak: return .slovak
            case .slovenian: return .slovenian
            case .soga: return .soga
            case .somali: return .somali
            case .spanish: return .spanish
            case .standardMoroccanTamazight: return .standardMoroccanTamazight
            case .swahili: return .swahili
            case .swedish: return .swedish
            case .swissGerman: return .swissGerman
            case .tachelhit: return .tachelhit
            case .taita: return .taita
            case .tajik: return .tajik
            case .tamil: return .tamil
            case .tasawaq: return .tasawaq
            case .tatar: return .tatar
            case .telugu: return .telugu
            case .teso: return .teso
            case .thai: return .thai
            case .tibetan: return .tibetan
            case .tigrinya: return .tigrinya
            case .tongan: return .tongan
            case .turkish: return .turkish
            case .ukrainian: return .ukrainian
            case .unspecified: return .unspecified
            case .upperSorbian: return .upperSorbian
            case .urdu: return .urdu
            case .uyghur: return .uyghur
            case .uzbek: return .uzbek
            case .vai: return .vai
            case .vietnamese: return .vietnamese
            case .vunjo: return .vunjo
            case .walser: return .walser
            case .welsh: return .welsh
            case .westernFrisian: return .westernFrisian
            case .wolof: return .wolof
            case .yangben: return .yangben
            case .yiddish: return .yiddish
            case .yoruba: return .yoruba
            case .zarma: return .zarma
            case .zulu: return .zulu
        }
    }
}
