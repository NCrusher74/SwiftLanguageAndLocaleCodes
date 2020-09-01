/*
 ICULocaleCode.swift
 Created by Nolaine Crusher on 8/30/20.
 Copyright ©2020 Nolaine Crusher. All rights reserved.
 */

import Foundation

public enum ICULocaleCode: String, CaseIterable {
    /// Initializes an ICU Locale Code from its native name
    init?(nativeName: String) {
        if let code = ICULocaleCode.nativeNameToCodeMapping?[nativeName] {
            self = code
        } else {
            return nil
        }
    }
    private static let nativeNameToCodeMapping: [String: ICULocaleCode]? = {
        var mapping: [String: ICULocaleCode] = [:]
        for code in ICULocaleCode.allCases {
            if let nativeName = code.nativeName {
            mapping[nativeName] = code
            } else {
                return nil
            }
        }
        return mapping
    }()
        
    /// Afrikaans - Afrikaans
    case afrikaans = "af"
    /// Afrikaans (Namibia) - Afrikaans (Namibië)
    case afrikaansNamibia = "af_NA"
    /// Afrikaans (South Africa) - Afrikaans (Suid-Afrika)
    case afrikaansSouthAfrica = "af_ZA"
    /// Aghem - Aghem
    case aghem = "agq"
    /// Aghem (Cameroon) - Aghem (Kàmàlûŋ)
    case aghemCameroon = "agq_CM"
    /// Akan - Akan
    case akan = "ak"
    /// Akan (Ghana) - Akan (Gaana)
    case akanGhana = "ak_GH"
    /// Amharic - አማርኛ
    case amharic = "am"
    /// Amharic (Ethiopia) - አማርኛ (ኢትዮጵያ)
    case amharicEthiopia = "am_ET"
    /// Arabic - العربية
    case arabic = "ar"
    /// Arabic (World) - العربية (العالم) - Modern Standard Arabic
    case arabicWorld = "ar_001"
    /// Arabic (United Arab Emirates) - العربية (الإمارات العربية المتحدة)
    case arabicUnitedArabEmirates = "ar_AE"
    /// Arabic (Bahrain) - العربية (البحرين)
    case arabicBahrain = "ar_BH"
    /// Arabic (Djibouti) - العربية (جيبوتي)
    case arabicDjibouti = "ar_DJ"
    /// Arabic (Algeria) - العربية (الجزائر)
    case arabicAlgeria = "ar_DZ"
    /// Arabic (Egypt) - العربية (مصر)
    case arabicEgypt = "ar_EG"
    /// Arabic (Western Sahara) - العربية (الصحراء الغربية)
    case arabicWesternSahara = "ar_EH"
    /// Arabic (Eritrea) - العربية (إريتريا)
    case arabicEritrea = "ar_ER"
    /// Arabic (Israel) - العربية (إسرائيل)
    case arabicIsrael = "ar_IL"
    /// Arabic (Iraq) - العربية (العراق)
    case arabicIraq = "ar_IQ"
    /// Arabic (Jordan) - العربية (الأردن)
    case arabicJordan = "ar_JO"
    /// Arabic (Comoros) - العربية (جزر القمر)
    case arabicComoros = "ar_KM"
    /// Arabic (Kuwait) - العربية (الكويت)
    case arabicKuwait = "ar_KW"
    /// Arabic (Lebanon) - العربية (لبنان)
    case arabicLebanon = "ar_LB"
    /// Arabic (Libya) - العربية (ليبيا)
    case arabicLibya = "ar_LY"
    /// Arabic (Morocco) - العربية (المغرب)
    case arabicMorocco = "ar_MA"
    /// Arabic (Mauritania) - العربية (موريتانيا)
    case arabicMauritania = "ar_MR"
    /// Arabic (Oman) - العربية (عُمان)
    case arabicOman = "ar_OM"
    /// Arabic (Palestinian Territories) - العربية (الأراضي الفلسطينية)
    case arabicPalestinianTerritories = "ar_PS"
    /// Arabic (Qatar) - العربية (قطر)
    case arabicQatar = "ar_QA"
    /// Arabic (Saudi Arabia) - العربية (المملكة العربية السعودية)
    case arabicSaudiArabia = "ar_SA"
    /// Arabic (Sudan) - العربية (السودان)
    case arabicSudan = "ar_SD"
    /// Arabic (Somalia) - العربية (الصومال)
    case arabicSomalia = "ar_SO"
    /// Arabic (South Sudan) - العربية (جنوب السودان)
    case arabicSouthSudan = "ar_SS"
    /// Arabic (Syria) - العربية (سوريا)
    case arabicSyria = "ar_SY"
    /// Arabic (Chad) - العربية (تشاد)
    case arabicChad = "ar_TD"
    /// Arabic (Tunisia) - العربية (تونس)
    case arabicTunisia = "ar_TN"
    /// Arabic (Yemen) - العربية (اليمن)
    case arabicYemen = "ar_YE"
    /// Assamese - অসমীয়া
    case assamese = "as"
    /// Assamese (India) - অসমীয়া (ভারত)
    case assameseIndia = "as_IN"
    /// Asu - Kipare
    case asu = "asa"
    /// Asu (Tanzania) - Kipare (Tadhania)
    case asuTanzania = "asa_TZ"
    /// Asturian - asturianu
    case asturian = "ast"
    /// Asturian (Spain) - asturianu (España)
    case asturianSpain = "ast_ES"
    /// Azerbaijani - azərbaycan
    case azerbaijani = "az"
    /// Azerbaijani (Cyrillic) - азәрбајҹан (Кирил)
    case azerbaijaniCyrillic = "az_Cyrl"
    /// Azerbaijani (Cyrillic, Azerbaijan) - азәрбајҹан (Кирил, Азәрбајҹан)
    case azerbaijaniCyrillicAzerbaijan = "az_Cyrl_AZ"
    /// Azerbaijani (Latin) - azərbaycan (latın)
    case azerbaijaniLatin = "az_Latn"
    /// Azerbaijani (Latin, Azerbaijan) - azərbaycan (latın, Azərbaycan)
    case azerbaijaniLatinAzerbaijan = "az_Latn_AZ"
    /// Basaa - Ɓàsàa
    case basaa = "bas"
    /// Basaa (Cameroon) - Ɓàsàa (Kàmɛ̀rûn)
    case basaaCameroon = "bas_CM"
    /// Belarusian - беларуская
    case belarusian = "be"
    /// Belarusian (Belarus) - беларуская (Беларусь)
    case belarusianBelarus = "be_BY"
    /// Bemba - Ichibemba
    case bemba = "bem"
    /// Bemba (Zambia) - Ichibemba (Zambia)
    case bembaZambia = "bem_ZM"
    /// Bena - Hibena
    case bena = "bez"
    /// Bena (Tanzania) - Hibena (Hutanzania)
    case benaTanzania = "bez_TZ"
    /// Bulgarian - български
    case bulgarian = "bg"
    /// Bulgarian (Bulgaria) - български (България)
    case bulgarianBulgaria = "bg_BG"
    /// Bambara - bamanakan
    case bambara = "bm"
    /// Bambara (Mali) - bamanakan (Mali)
    case bambaraMali = "bm_ML"
    /// Bangla - বাংলা
    case bangla = "bn"
    /// Bangla (Bangladesh) - বাংলা (বাংলাদেশ)
    case banglaBangladesh = "bn_BD"
    /// Bangla (India) - বাংলা (ভারত)
    case banglaIndia = "bn_IN"
    /// Tibetan - བོད་སྐད་
    case tibetan = "bo"
    /// Tibetan (China) - བོད་སྐད་ (རྒྱ་ནག)
    case tibetanChina = "bo_CN"
    /// Tibetan (India) - བོད་སྐད་ (རྒྱ་གར་)
    case tibetanIndia = "bo_IN"
    /// Breton - brezhoneg
    case breton = "br"
    /// Breton (France) - brezhoneg (Frañs)
    case bretonFrance = "br_FR"
    /// Bodo - बड़ो
    case bodo = "brx"
    /// Bodo (India) - बड़ो (भारत)
    case bodoIndia = "brx_IN"
    /// Bosnian - bosanski
    case bosnian = "bs"
    /// Bosnian (Cyrillic) - босански (ћирилица)
    case bosnianCyrillic = "bs_Cyrl"
    /// Bosnian (Cyrillic, Bosnia & Herzegovina) - босански (ћирилица, Босна и Херцеговина)
    case bosnianCyrillicBosniaAndHerzegovina = "bs_Cyrl_BA"
    /// Bosnian (Latin) - bosanski (latinica)
    case bosnianLatin = "bs_Latn"
    /// Bosnian (Latin, Bosnia & Herzegovina) - bosanski (latinica, Bosna i Hercegovina)
    case bosnianLatinBosniaAndHerzegovina = "bs_Latn_BA"
    /// Catalan - català
    case catalan = "ca"
    /// Catalan (Andorra) - català (Andorra)
    case catalanAndorra = "ca_AD"
    /// Catalan (Spain) - català (Espanya)
    case catalanSpain = "ca_ES"
    /// Catalan (France) - català (França)
    case catalanFrance = "ca_FR"
    /// Catalan (Italy) - català (Itàlia)
    case catalanItaly = "ca_IT"
    /// Chakma - 𑄌𑄋𑄴𑄟𑄳𑄦
    case chakma = "ccp"
    /// Chakma (Bangladesh) - 𑄌𑄋𑄴𑄟𑄳𑄦 (𑄝𑄁𑄣𑄘𑄬𑄌𑄴)
    case chakmaBangladesh = "ccp_BD"
    /// Chakma (India) - 𑄌𑄋𑄴𑄟𑄳𑄦 (𑄞𑄢𑄧𑄖𑄴)
    case chakmaIndia = "ccp_IN"
    /// Chechen - нохчийн
    case chechen = "ce"
    /// Chechen (Russia) - нохчийн (Росси)
    case chechenRussia = "ce_RU"
    /// Chiga - Rukiga
    case chiga = "cgg"
    /// Chiga (Uganda) - Rukiga (Uganda)
    case chigaUganda = "cgg_UG"
    /// Cherokee - ᏣᎳᎩ
    case cherokee = "chr"
    /// Cherokee (United States) - ᏣᎳᎩ (ᏌᏊ ᎢᏳᎾᎵᏍᏔᏅ ᏍᎦᏚᎩ)
    case cherokeeUnitedStates = "chr_US"
    /// Central Kurdish - کوردیی ناوەندی
    case centralKurdish = "ckb"
    /// Central Kurdish (Iraq) - کوردیی ناوەندی (عێراق)
    case centralKurdishIraq = "ckb_IQ"
    /// Central Kurdish (Iran) - کوردیی ناوەندی (ئێران)
    case centralKurdishIran = "ckb_IR"
    /// Czech - čeština
    case czech = "cs"
    /// Czech (Czechia) - čeština (Česko)
    case czechCzechia = "cs_CZ"
    /// Welsh - Cymraeg
    case welsh = "cy"
    /// Welsh (United Kingdom) - Cymraeg (Y Deyrnas Unedig)
    case welshUnitedKingdom = "cy_GB"
    /// Danish - dansk
    case danish = "da"
    /// Danish (Denmark) - dansk (Danmark)
    case danishDenmark = "da_DK"
    /// Danish (Greenland) - dansk (Grønland)
    case danishGreenland = "da_GL"
    /// Taita - Kitaita
    case taita = "dav"
    /// Taita (Kenya) - Kitaita (Kenya)
    case taitaKenya = "dav_KE"
    /// German - Deutsch
    case german = "de"
    /// German (Austria) - Deutsch (Österreich) - Austrian German
    case germanAustria = "de_AT"
    /// German (Belgium) - Deutsch (Belgien)
    case germanBelgium = "de_BE"
    /// German (Switzerland) - Deutsch (Schweiz) - Swiss High German
    case germanSwitzerland = "de_CH"
    /// German (Germany) - Deutsch (Deutschland)
    case germanGermany = "de_DE"
    /// German (Italy) - Deutsch (Italien)
    case germanItaly = "de_IT"
    /// German (Liechtenstein) - Deutsch (Liechtenstein)
    case germanLiechtenstein = "de_LI"
    /// German (Luxembourg) - Deutsch (Luxemburg)
    case germanLuxembourg = "de_LU"
    /// Zarma - Zarmaciine
    case zarma = "dje"
    /// Zarma (Niger) - Zarmaciine (Nižer)
    case zarmaNiger = "dje_NE"
    /// Lower Sorbian - dolnoserbšćina
    case lowerSorbian = "dsb"
    /// Lower Sorbian (Germany) - dolnoserbšćina (Nimska)
    case lowerSorbianGermany = "dsb_DE"
    /// Duala - duálá
    case duala = "dua"
    /// Duala (Cameroon) - duálá (Cameroun)
    case dualaCameroon = "dua_CM"
    /// Jola-Fonyi - joola
    case jolaFonyi = "dyo"
    /// Jola-Fonyi (Senegal) - joola (Senegal)
    case jolaFonyiSenegal = "dyo_SN"
    /// Dzongkha - རྫོང་ཁ
    case dzongkha = "dz"
    /// Dzongkha (Bhutan) - རྫོང་ཁ། (འབྲུག།)
    case dzongkhaBhutan = "dz_BT"
    /// Embu - Kĩembu
    case embu = "ebu"
    /// Embu (Kenya) - Kĩembu (Kenya)
    case embuKenya = "ebu_KE"
    /// Ewe - Eʋegbe
    case ewe = "ee"
    /// Ewe (Ghana) - Eʋegbe (Ghana nutome)
    case eweGhana = "ee_GH"
    /// Ewe (Togo) - Eʋegbe (Togo nutome)
    case eweTogo = "ee_TG"
    /// Greek - Ελληνικά
    case greek = "el"
    /// Greek (Cyprus) - Ελληνικά (Κύπρος)
    case greekCyprus = "el_CY"
    /// Greek (Greece) - Ελληνικά (Ελλάδα)
    case greekGreece = "el_GR"
    /// English - English
    case english = "en"
    /// English (World) - English (World)
    case englishWorld = "en_001"
    /// English (Europe) - English (Europe)
    case englishEurope = "en_150"
    /// English (Antigua & Barbuda) - English (Antigua & Barbuda)
    case englishAntiguaAndBarbuda = "en_AG"
    /// English (Anguilla) - English (Anguilla)
    case englishAnguilla = "en_AI"
    /// English (American Samoa) - English (American Samoa)
    case englishAmericanSamoa = "en_AS"
    /// English (Austria) - English (Austria)
    case englishAustria = "en_AT"
    /// English (Australia) - English (Australia) - Australian English
    case englishAustralia = "en_AU"
    /// English (Barbados) - English (Barbados)
    case englishBarbados = "en_BB"
    /// English (Belgium) - English (Belgium)
    case englishBelgium = "en_BE"
    /// English (Burundi) - English (Burundi)
    case englishBurundi = "en_BI"
    /// English (Bermuda) - English (Bermuda)
    case englishBermuda = "en_BM"
    /// English (Bahamas) - English (Bahamas)
    case englishBahamas = "en_BS"
    /// English (Botswana) - English (Botswana)
    case englishBotswana = "en_BW"
    /// English (Belize) - English (Belize)
    case englishBelize = "en_BZ"
    /// English (Canada) - English (Canada) - Canadian English
    case englishCanada = "en_CA"
    /// English (Cocos [Keeling] Islands) - English (Cocos [Keeling] Islands)
    case englishCocosKeelingIslands = "en_CC"
    /// English (Switzerland) - English (Switzerland)
    case englishSwitzerland = "en_CH"
    /// English (Cook Islands) - English (Cook Islands)
    case englishCookIslands = "en_CK"
    /// English (Cameroon) - English (Cameroon)
    case englishCameroon = "en_CM"
    /// English (Christmas Island) - English (Christmas Island)
    case englishChristmasIsland = "en_CX"
    /// English (Cyprus) - English (Cyprus)
    case englishCyprus = "en_CY"
    /// English (Germany) - English (Germany)
    case englishGermany = "en_DE"
    /// English (Diego Garcia) - English (Diego Garcia)
    case englishDiegoGarcia = "en_DG"
    /// English (Denmark) - English (Denmark)
    case englishDenmark = "en_DK"
    /// English (Dominica) - English (Dominica)
    case englishDominica = "en_DM"
    /// English (Eritrea) - English (Eritrea)
    case englishEritrea = "en_ER"
    /// English (Finland) - English (Finland)
    case englishFinland = "en_FI"
    /// English (Fiji) - English (Fiji)
    case englishFiji = "en_FJ"
    /// English (Falkland Islands) - English (Falkland Islands)
    case englishFalklandIslands = "en_FK"
    /// English (Micronesia) - English (Micronesia)
    case englishMicronesia = "en_FM"
    /// English (United Kingdom) - English (United Kingdom) - British English
    case englishUnitedKingdom = "en_GB"
    /// English (Grenada) - English (Grenada)
    case englishGrenada = "en_GD"
    /// English (Guernsey) - English (Guernsey)
    case englishGuernsey = "en_GG"
    /// English (Ghana) - English (Ghana)
    case englishGhana = "en_GH"
    /// English (Gibraltar) - English (Gibraltar)
    case englishGibraltar = "en_GI"
    /// English (Gambia) - English (Gambia)
    case englishGambia = "en_GM"
    /// English (Guam) - English (Guam)
    case englishGuam = "en_GU"
    /// English (Guyana) - English (Guyana)
    case englishGuyana = "en_GY"
    /// English (Hong Kong SAR China) - English (Hong Kong SAR China)
    case englishHongKongSARChina = "en_HK"
    /// English (Ireland) - English (Ireland)
    case englishIreland = "en_IE"
    /// English (Israel) - English (Israel)
    case englishIsrael = "en_IL"
    /// English (Isle of Man) - English (Isle of Man)
    case englishIsleofMan = "en_IM"
    /// English (India) - English (India)
    case englishIndia = "en_IN"
    /// English (British Indian Ocean Territory) - English (British Indian Ocean Territory)
    case englishBritishIndianOceanTerritory = "en_IO"
    /// English (Jersey) - English (Jersey)
    case englishJersey = "en_JE"
    /// English (Jamaica) - English (Jamaica)
    case englishJamaica = "en_JM"
    /// English (Kenya) - English (Kenya)
    case englishKenya = "en_KE"
    /// English (Kiribati) - English (Kiribati)
    case englishKiribati = "en_KI"
    /// English (St. Kitts & Nevis) - English (St. Kitts & Nevis)
    case englishStKittsAndNevis = "en_KN"
    /// English (Cayman Islands) - English (Cayman Islands)
    case englishCaymanIslands = "en_KY"
    /// English (St. Lucia) - English (St. Lucia)
    case englishStLucia = "en_LC"
    /// English (Liberia) - English (Liberia)
    case englishLiberia = "en_LR"
    /// English (Lesotho) - English (Lesotho)
    case englishLesotho = "en_LS"
    /// English (Madagascar) - English (Madagascar)
    case englishMadagascar = "en_MG"
    /// English (Marshall Islands) - English (Marshall Islands)
    case englishMarshallIslands = "en_MH"
    /// English (Macau SAR China) - English (Macau SAR China)
    case englishMacauSARChina = "en_MO"
    /// English (Northern Mariana Islands) - English (Northern Mariana Islands)
    case englishNorthernMarianaIslands = "en_MP"
    /// English (Montserrat) - English (Montserrat)
    case englishMontserrat = "en_MS"
    /// English (Malta) - English (Malta)
    case englishMalta = "en_MT"
    /// English (Mauritius) - English (Mauritius)
    case englishMauritius = "en_MU"
    /// English (Malawi) - English (Malawi)
    case englishMalawi = "en_MW"
    /// English (Malaysia) - English (Malaysia)
    case englishMalaysia = "en_MY"
    /// English (Namibia) - English (Namibia)
    case englishNamibia = "en_NA"
    /// English (Norfolk Island) - English (Norfolk Island)
    case englishNorfolkIsland = "en_NF"
    /// English (Nigeria) - English (Nigeria)
    case englishNigeria = "en_NG"
    /// English (Netherlands) - English (Netherlands)
    case englishNetherlands = "en_NL"
    /// English (Nauru) - English (Nauru)
    case englishNauru = "en_NR"
    /// English (Niue) - English (Niue)
    case englishNiue = "en_NU"
    /// English (New Zealand) - English (New Zealand)
    case englishNewZealand = "en_NZ"
    /// English (Papua New Guinea) - English (Papua New Guinea)
    case englishPapuaNewGuinea = "en_PG"
    /// English (Philippines) - English (Philippines)
    case englishPhilippines = "en_PH"
    /// English (Pakistan) - English (Pakistan)
    case englishPakistan = "en_PK"
    /// English (Pitcairn Islands) - English (Pitcairn Islands)
    case englishPitcairnIslands = "en_PN"
    /// English (Puerto Rico) - English (Puerto Rico)
    case englishPuertoRico = "en_PR"
    /// English (Palau) - English (Palau)
    case englishPalau = "en_PW"
    /// English (Rwanda) - English (Rwanda)
    case englishRwanda = "en_RW"
    /// English (Solomon Islands) - English (Solomon Islands)
    case englishSolomonIslands = "en_SB"
    /// English (Seychelles) - English (Seychelles)
    case englishSeychelles = "en_SC"
    /// English (Sudan) - English (Sudan)
    case englishSudan = "en_SD"
    /// English (Sweden) - English (Sweden)
    case englishSweden = "en_SE"
    /// English (Singapore) - English (Singapore)
    case englishSingapore = "en_SG"
    /// English (St. Helena) - English (St. Helena)
    case englishStHelena = "en_SH"
    /// English (Slovenia) - English (Slovenia)
    case englishSlovenia = "en_SI"
    /// English (Sierra Leone) - English (Sierra Leone)
    case englishSierraLeone = "en_SL"
    /// English (South Sudan) - English (South Sudan)
    case englishSouthSudan = "en_SS"
    /// English (Sint Maarten) - English (Sint Maarten)
    case englishSintMaarten = "en_SX"
    /// English (Swaziland) - English (Swaziland)
    case englishSwaziland = "en_SZ"
    /// English (Turks & Caicos Islands) - English (Turks & Caicos Islands)
    case englishTurksAndCaicosIslands = "en_TC"
    /// English (Tokelau) - English (Tokelau)
    case englishTokelau = "en_TK"
    /// English (Tonga) - English (Tonga)
    case englishTonga = "en_TO"
    /// English (Trinidad & Tobago) - English (Trinidad & Tobago)
    case englishTrinidadAndTobago = "en_TT"
    /// English (Tuvalu) - English (Tuvalu)
    case englishTuvalu = "en_TV"
    /// English (Tanzania) - English (Tanzania)
    case englishTanzania = "en_TZ"
    /// English (Uganda) - English (Uganda)
    case englishUganda = "en_UG"
    /// English (U.S. Outlying Islands) - English (U.S. Outlying Islands)
    case englishUSOutlyingIslands = "en_UM"
    /// English (United States) - English (United States) - American English
    case englishUnitedStates = "en_US"
    /// English (United States, Computer) - English (United States, Computer) - American English (Computer)
    case englishUnitedStatesComputer = "en_US_POSIX"
    /// English (St. Vincent & Grenadines) - English (St. Vincent & Grenadines)
    case englishStVincentAndGrenadines = "en_VC"
    /// English (British Virgin Islands) - English (British Virgin Islands)
    case englishBritishVirginIslands = "en_VG"
    /// English (U.S. Virgin Islands) - English (U.S. Virgin Islands)
    case englishUSVirginIslands = "en_VI"
    /// English (Vanuatu) - English (Vanuatu)
    case englishVanuatu = "en_VU"
    /// English (Samoa) - English (Samoa)
    case englishSamoa = "en_WS"
    /// English (South Africa) - English (South Africa)
    case englishSouthAfrica = "en_ZA"
    /// English (Zambia) - English (Zambia)
    case englishZambia = "en_ZM"
    /// English (Zimbabwe) - English (Zimbabwe)
    case englishZimbabwe = "en_ZW"
    /// Esperanto - esperanto
    case esperanto = "eo"
    /// Spanish - español
    case spanish = "es"
    /// Spanish (Latin America) - español (Latinoamérica) - Latin American Spanish
    case spanishLatinAmerica = "es_419"
    /// Spanish (Argentina) - español (Argentina)
    case spanishArgentina = "es_AR"
    /// Spanish (Bolivia) - español (Bolivia)
    case spanishBolivia = "es_BO"
    /// Spanish (Brazil) - español (Brasil)
    case spanishBrazil = "es_BR"
    /// Spanish (Belize) - español (Belice)
    case spanishBelize = "es_BZ"
    /// Spanish (Chile) - español (Chile)
    case spanishChile = "es_CL"
    /// Spanish (Colombia) - español (Colombia)
    case spanishColombia = "es_CO"
    /// Spanish (Costa Rica) - español (Costa Rica)
    case spanishCostaRica = "es_CR"
    /// Spanish (Cuba) - español (Cuba)
    case spanishCuba = "es_CU"
    /// Spanish (Dominican Republic) - español (República Dominicana)
    case spanishDominicanRepublic = "es_DO"
    /// Spanish (Ceuta & Melilla) - español (Ceuta y Melilla)
    case spanishCeutaAndMelilla = "es_EA"
    /// Spanish (Ecuador) - español (Ecuador)
    case spanishEcuador = "es_EC"
    /// Spanish (Spain) - español (España) - European Spanish
    case spanishSpain = "es_ES"
    /// Spanish (Equatorial Guinea) - español (Guinea Ecuatorial)
    case spanishEquatorialGuinea = "es_GQ"
    /// Spanish (Guatemala) - español (Guatemala)
    case spanishGuatemala = "es_GT"
    /// Spanish (Honduras) - español (Honduras)
    case spanishHonduras = "es_HN"
    /// Spanish (Canary Islands) - español (Canarias)
    case spanishCanaryIslands = "es_IC"
    /// Spanish (Mexico) - español (México) - Mexican Spanish
    case spanishMexico = "es_MX"
    /// Spanish (Nicaragua) - español (Nicaragua)
    case spanishNicaragua = "es_NI"
    /// Spanish (Panama) - español (Panamá)
    case spanishPanama = "es_PA"
    /// Spanish (Peru) - español (Perú)
    case spanishPeru = "es_PE"
    /// Spanish (Philippines) - español (Filipinas)
    case spanishPhilippines = "es_PH"
    /// Spanish (Puerto Rico) - español (Puerto Rico)
    case spanishPuertoRico = "es_PR"
    /// Spanish (Paraguay) - español (Paraguay)
    case spanishParaguay = "es_PY"
    /// Spanish (El Salvador) - español (El Salvador)
    case spanishElSalvador = "es_SV"
    /// Spanish (United States) - español (Estados Unidos)
    case spanishUnitedStates = "es_US"
    /// Spanish (Uruguay) - español (Uruguay)
    case spanishUruguay = "es_UY"
    /// Spanish (Venezuela) - español (Venezuela)
    case spanishVenezuela = "es_VE"
    /// Estonian - eesti
    case estonian = "et"
    /// Estonian (Estonia) - eesti (Eesti)
    case estonianEstonia = "et_EE"
    /// Basque - euskara
    case basque = "eu"
    /// Basque (Spain) - euskara (Espainia)
    case basqueSpain = "eu_ES"
    /// Ewondo - ewondo
    case ewondo = "ewo"
    /// Ewondo (Cameroon) - ewondo (Kamərún)
    case ewondoCameroon = "ewo_CM"
    /// Persian - فارسی
    case persian = "fa"
    /// Persian (Afghanistan) - فارسی (افغانستان) - Dari
    case persianAfghanistan = "fa_AF"
    /// Persian (Iran) - فارسی (ایران)
    case persianIran = "fa_IR"
    /// Fulah - Pulaar
    case fulah = "ff"
    /// Fulah (Cameroon) - Pulaar (Kameruun)
    case fulahCameroon = "ff_CM"
    /// Fulah (Guinea) - Pulaar (Gine)
    case fulahGuinea = "ff_GN"
    /// Fulah (Mauritania) - Pulaar (Muritani)
    case fulahMauritania = "ff_MR"
    /// Fulah (Senegal) - Pulaar (Senegaal)
    case fulahSenegal = "ff_SN"
    /// Finnish - suomi
    case finnish = "fi"
    /// Finnish (Finland) - suomi (Suomi)
    case finnishFinland = "fi_FI"
    /// Filipino - Filipino
    case filipino = "fil"
    /// Filipino (Philippines) - Filipino (Pilipinas)
    case filipinoPhilippines = "fil_PH"
    /// Faroese - føroyskt
    case faroese = "fo"
    /// Faroese (Denmark) - føroyskt (Danmark)
    case faroeseDenmark = "fo_DK"
    /// Faroese (Faroe Islands) - føroyskt (Føroyar)
    case faroeseFaroeIslands = "fo_FO"
    /// French - français
    case french = "fr"
    /// French (Belgium) - français (Belgique)
    case frenchBelgium = "fr_BE"
    /// French (Burkina Faso) - français (Burkina Faso)
    case frenchBurkinaFaso = "fr_BF"
    /// French (Burundi) - français (Burundi)
    case frenchBurundi = "fr_BI"
    /// French (Benin) - français (Bénin)
    case frenchBenin = "fr_BJ"
    /// French (St. Barthélemy) - français (Saint-Barthélemy)
    case frenchStBarthélemy = "fr_BL"
    /// French (Canada) - français (Canada) - Canadian French
    case frenchCanada = "fr_CA"
    /// French (Congo - Kinshasa) - français (Congo-Kinshasa)
    case frenchCongoKinshasa = "fr_CD"
    /// French (Central African Republic) - français (République centrafricaine)
    case frenchCentralAfricanRepublic = "fr_CF"
    /// French (Congo - Brazzaville) - français (Congo-Brazzaville)
    case frenchCongoBrazzaville = "fr_CG"
    /// French (Switzerland) - français (Suisse) - Swiss French
    case frenchSwitzerland = "fr_CH"
    /// French (Côte d’Ivoire) - français (Côte d’Ivoire)
    case frenchCôtedIvoire = "fr_CI"
    /// French (Cameroon) - français (Cameroun)
    case frenchCameroon = "fr_CM"
    /// French (Djibouti) - français (Djibouti)
    case frenchDjibouti = "fr_DJ"
    /// French (Algeria) - français (Algérie)
    case frenchAlgeria = "fr_DZ"
    /// French (France) - français (France)
    case frenchFrance = "fr_FR"
    /// French (Gabon) - français (Gabon)
    case frenchGabon = "fr_GA"
    /// French (French Guiana) - français (Guyane française)
    case frenchFrenchGuiana = "fr_GF"
    /// French (Guinea) - français (Guinée)
    case frenchGuinea = "fr_GN"
    /// French (Guadeloupe) - français (Guadeloupe)
    case frenchGuadeloupe = "fr_GP"
    /// French (Equatorial Guinea) - français (Guinée équatoriale)
    case frenchEquatorialGuinea = "fr_GQ"
    /// French (Haiti) - français (Haïti)
    case frenchHaiti = "fr_HT"
    /// French (Comoros) - français (Comores)
    case frenchComoros = "fr_KM"
    /// French (Luxembourg) - français (Luxembourg)
    case frenchLuxembourg = "fr_LU"
    /// French (Morocco) - français (Maroc)
    case frenchMorocco = "fr_MA"
    /// French (Monaco) - français (Monaco)
    case frenchMonaco = "fr_MC"
    /// French (St. Martin) - français (Saint-Martin)
    case frenchStMartin = "fr_MF"
    /// French (Madagascar) - français (Madagascar)
    case frenchMadagascar = "fr_MG"
    /// French (Mali) - français (Mali)
    case frenchMali = "fr_ML"
    /// French (Martinique) - français (Martinique)
    case frenchMartinique = "fr_MQ"
    /// French (Mauritania) - français (Mauritanie)
    case frenchMauritania = "fr_MR"
    /// French (Mauritius) - français (Maurice)
    case frenchMauritius = "fr_MU"
    /// French (New Caledonia) - français (Nouvelle-Calédonie)
    case frenchNewCaledonia = "fr_NC"
    /// French (Niger) - français (Niger)
    case frenchNiger = "fr_NE"
    /// French (French Polynesia) - français (Polynésie française)
    case frenchFrenchPolynesia = "fr_PF"
    /// French (St. Pierre & Miquelon) - français (Saint-Pierre-et-Miquelon)
    case frenchStPierreAndMiquelon = "fr_PM"
    /// French (Réunion) - français (La Réunion)
    case frenchRéunion = "fr_RE"
    /// French (Rwanda) - français (Rwanda)
    case frenchRwanda = "fr_RW"
    /// French (Seychelles) - français (Seychelles)
    case frenchSeychelles = "fr_SC"
    /// French (Senegal) - français (Sénégal)
    case frenchSenegal = "fr_SN"
    /// French (Syria) - français (Syrie)
    case frenchSyria = "fr_SY"
    /// French (Chad) - français (Tchad)
    case frenchChad = "fr_TD"
    /// French (Togo) - français (Togo)
    case frenchTogo = "fr_TG"
    /// French (Tunisia) - français (Tunisie)
    case frenchTunisia = "fr_TN"
    /// French (Vanuatu) - français (Vanuatu)
    case frenchVanuatu = "fr_VU"
    /// French (Wallis & Futuna) - français (Wallis-et-Futuna)
    case frenchWallisAndFutuna = "fr_WF"
    /// French (Mayotte) - français (Mayotte)
    case frenchMayotte = "fr_YT"
    /// Friulian - furlan
    case friulian = "fur"
    /// Friulian (Italy) - furlan (Italie)
    case friulianItaly = "fur_IT"
    /// Western Frisian - Frysk
    case westernFrisian = "fy"
    /// Western Frisian (Netherlands) - Frysk (Nederlân)
    case westernFrisianNetherlands = "fy_NL"
    /// Irish - Gaeilge
    case irish = "ga"
    /// Irish (Ireland) - Gaeilge (Éire)
    case irishIreland = "ga_IE"
    /// Scottish Gaelic - Gàidhlig
    case scottishGaelic = "gd"
    /// Scottish Gaelic (United Kingdom) - Gàidhlig (An Rìoghachd Aonaichte)
    case scottishGaelicUnitedKingdom = "gd_GB"
    /// Galician - galego
    case galician = "gl"
    /// Galician (Spain) - galego (España)
    case galicianSpain = "gl_ES"
    /// Swiss German - Schwiizertüütsch
    case swissGerman = "gsw"
    /// Swiss German (Switzerland) - Schwiizertüütsch (Schwiiz)
    case swissGermanSwitzerland = "gsw_CH"
    /// Swiss German (France) - Schwiizertüütsch (Frankriich)
    case swissGermanFrance = "gsw_FR"
    /// Swiss German (Liechtenstein) - Schwiizertüütsch (Liächteschtäi)
    case swissGermanLiechtenstein = "gsw_LI"
    /// Gujarati - ગુજરાતી
    case gujarati = "gu"
    /// Gujarati (India) - ગુજરાતી (ભારત)
    case gujaratiIndia = "gu_IN"
    /// Gusii - Ekegusii
    case gusii = "guz"
    /// Gusii (Kenya) - Ekegusii (Kenya)
    case gusiiKenya = "guz_KE"
    /// Manx - Gaelg
    case manx = "gv"
    /// Manx (Isle of Man) - Gaelg (Ellan Vannin)
    case manxIsleofMan = "gv_IM"
    /// Hausa - Hausa
    case hausa = "ha"
    /// Hausa (Ghana) - Hausa (Gana)
    case hausaGhana = "ha_GH"
    /// Hausa (Niger) - Hausa (Nijar)
    case hausaNiger = "ha_NE"
    /// Hausa (Nigeria) - Hausa (Najeriya)
    case hausaNigeria = "ha_NG"
    /// Hawaiian - ʻŌlelo Hawaiʻi
    case hawaiian = "haw"
    /// Hawaiian (United States) - ʻŌlelo Hawaiʻi (ʻAmelika Hui Pū ʻIa)
    case hawaiianUnitedStates = "haw_US"
    /// Hebrew - עברית
    case hebrew = "he"
    /// Hebrew (Israel) - עברית (ישראל)
    case hebrewIsrael = "he_IL"
    /// Hindi - हिन्दी
    case hindi = "hi"
    /// Hindi (India) - हिन्दी (भारत)
    case hindiIndia = "hi_IN"
    /// Croatian - hrvatski
    case croatian = "hr"
    /// Croatian (Bosnia & Herzegovina) - hrvatski (Bosna i Hercegovina)
    case croatianBosniaAndHerzegovina = "hr_BA"
    /// Croatian (Croatia) - hrvatski (Hrvatska)
    case croatianCroatia = "hr_HR"
    /// Upper Sorbian - hornjoserbšćina
    case upperSorbian = "hsb"
    /// Upper Sorbian (Germany) - hornjoserbšćina (Němska)
    case upperSorbianGermany = "hsb_DE"
    /// Hungarian - magyar
    case hungarian = "hu"
    /// Hungarian (Hungary) - magyar (Magyarország)
    case hungarianHungary = "hu_HU"
    /// Armenian - հայերեն
    case armenian = "hy"
    /// Armenian (Armenia) - հայերեն (Հայաստան)
    case armenianArmenia = "hy_AM"
    /// Indonesian - Indonesia
    case indonesian = "id"
    /// Indonesian (Indonesia) - Indonesia (Indonesia)
    case indonesianIndonesia = "id_ID"
    /// Igbo - Igbo
    case igbo = "ig"
    /// Igbo (Nigeria) - Igbo (Naịjịrịa)
    case igboNigeria = "ig_NG"
    /// Sichuan Yi - ꆈꌠꉙ
    case sichuanYi = "ii"
    /// Sichuan Yi (China) - ꆈꌠꉙ (ꍏꇩ)
    case sichuanYiChina = "ii_CN"
    /// Icelandic - íslenska
    case icelandic = "is"
    /// Icelandic (Iceland) - íslenska (Ísland)
    case icelandicIceland = "is_IS"
    /// Italian - italiano
    case italian = "it"
    /// Italian (Switzerland) - italiano (Svizzera)
    case italianSwitzerland = "it_CH"
    /// Italian (Italy) - italiano (Italia)
    case italianItaly = "it_IT"
    /// Italian (San Marino) - italiano (San Marino)
    case italianSanMarino = "it_SM"
    /// Italian (Vatican City) - italiano (Città del Vaticano)
    case italianVaticanCity = "it_VA"
    /// Japanese - 日本語
    case japanese = "ja"
    /// Japanese (Japan) - 日本語 (日本)
    case japaneseJapan = "ja_JP"
    /// Ngomba - Ndaꞌa
    case ngomba = "jgo"
    /// Ngomba (Cameroon) - Ndaꞌa (Kamɛlûn)
    case ngombaCameroon = "jgo_CM"
    /// Machame - Kimachame
    case machame = "jmc"
    /// Machame (Tanzania) - Kimachame (Tanzania)
    case machameTanzania = "jmc_TZ"
    /// Georgian - ქართული
    case georgian = "ka"
    /// Georgian (Georgia) - ქართული (საქართველო)
    case georgianGeorgia = "ka_GE"
    /// Kabyle - Taqbaylit
    case kabyle = "kab"
    /// Kabyle (Algeria) - Taqbaylit (Lezzayer)
    case kabyleAlgeria = "kab_DZ"
    /// Kamba - Kikamba
    case kamba = "kam"
    /// Kamba (Kenya) - Kikamba (Kenya)
    case kambaKenya = "kam_KE"
    /// Makonde - Chimakonde
    case makonde = "kde"
    /// Makonde (Tanzania) - Chimakonde (Tanzania)
    case makondeTanzania = "kde_TZ"
    /// Kabuverdianu - kabuverdianu
    case kabuverdianu = "kea"
    /// Kabuverdianu (Cape Verde) - kabuverdianu (Kabu Verdi)
    case kabuverdianuCapeVerde = "kea_CV"
    /// Koyra Chiini - Koyra ciini
    case koyraChiini = "khq"
    /// Koyra Chiini (Mali) - Koyra ciini (Maali)
    case koyraChiiniMali = "khq_ML"
    /// Kikuyu - Gikuyu
    case kikuyu = "ki"
    /// Kikuyu (Kenya) - Gikuyu (Kenya)
    case kikuyuKenya = "ki_KE"
    /// Kazakh - қазақ тілі
    case kazakh = "kk"
    /// Kazakh (Kazakhstan) - қазақ тілі (Қазақстан)
    case kazakhKazakhstan = "kk_KZ"
    /// Kako - kakɔ
    case kako = "kkj"
    /// Kako (Cameroon) - kakɔ (Kamɛrun)
    case kakoCameroon = "kkj_CM"
    /// Kalaallisut - kalaallisut
    case kalaallisut = "kl"
    /// Kalaallisut (Greenland) - kalaallisut (Kalaallit Nunaat)
    case kalaallisutGreenland = "kl_GL"
    /// Kalenjin - Kalenjin
    case kalenjin = "kln"
    /// Kalenjin (Kenya) - Kalenjin (Emetab Kenya)
    case kalenjinKenya = "kln_KE"
    /// Khmer - ខ្មែរ
    case khmer = "km"
    /// Khmer (Cambodia) - ខ្មែរ (កម្ពុជា)
    case khmerCambodia = "km_KH"
    /// Kannada - ಕನ್ನಡ
    case kannada = "kn"
    /// Kannada (India) - ಕನ್ನಡ (ಭಾರತ)
    case kannadaIndia = "kn_IN"
    /// Korean - 한국어
    case korean = "ko"
    /// Korean (North Korea) - 한국어(조선민주주의인민공화국)
    case koreanNorthKorea = "ko_KP"
    /// Korean (South Korea) - 한국어(대한민국)
    case koreanSouthKorea = "ko_KR"
    /// Konkani - कोंकणी
    case konkani = "kok"
    /// Konkani (India) - कोंकणी (भारत)
    case konkaniIndia = "kok_IN"
    /// Kashmiri - کٲشُر
    case kashmiri = "ks"
    /// Kashmiri (India) - کٲشُر (ہِنٛدوستان)
    case kashmiriIndia = "ks_IN"
    /// Shambala - Kishambaa
    case shambala = "ksb"
    /// Shambala (Tanzania) - Kishambaa (Tanzania)
    case shambalaTanzania = "ksb_TZ"
    /// Bafia - rikpa
    case bafia = "ksf"
    /// Bafia (Cameroon) - rikpa (kamɛrún)
    case bafiaCameroon = "ksf_CM"
    /// Colognian - Kölsch
    case colognian = "ksh"
    /// Colognian (Germany) - Kölsch en Doütschland
    case colognianGermany = "ksh_DE"
    /// Cornish - kernewek
    case cornish = "kw"
    /// Cornish (United Kingdom) - kernewek (Rywvaneth Unys)
    case cornishUnitedKingdom = "kw_GB"
    /// Kyrgyz - кыргызча
    case kyrgyz = "ky"
    /// Kyrgyz (Kyrgyzstan) - кыргызча (Кыргызстан)
    case kyrgyzKyrgyzstan = "ky_KG"
    /// Langi - Kɨlaangi
    case langi = "lag"
    /// Langi (Tanzania) - Kɨlaangi (Taansanía)
    case langiTanzania = "lag_TZ"
    /// Luxembourgish - Lëtzebuergesch
    case luxembourgish = "lb"
    /// Luxembourgish (Luxembourg) - Lëtzebuergesch (Lëtzebuerg)
    case luxembourgishLuxembourg = "lb_LU"
    /// Ganda - Luganda
    case ganda = "lg"
    /// Ganda (Uganda) - Luganda (Yuganda)
    case gandaUganda = "lg_UG"
    /// Lakota - Lakȟólʼiyapi
    case lakota = "lkt"
    /// Lakota (United States) - Lakȟólʼiyapi (Mílahaŋska Tȟamákȟočhe)
    case lakotaUnitedStates = "lkt_US"
    /// Lingala - lingála
    case lingala = "ln"
    /// Lingala (Angola) - lingála (Angóla)
    case lingalaAngola = "ln_AO"
    /// Lingala (Congo - Kinshasa) - lingála (Republíki ya Kongó Demokratíki)
    case lingalaCongoKinshasa = "ln_CD"
    /// Lingala (Central African Republic) - lingála (Repibiki ya Afríka ya Káti)
    case lingalaCentralAfricanRepublic = "ln_CF"
    /// Lingala (Congo - Brazzaville) - lingála (Kongo)
    case lingalaCongoBrazzaville = "ln_CG"
    /// Lao - ລາວ
    case lao = "lo"
    /// Lao (Laos) - ລາວ (ລາວ)
    case laoLaos = "lo_LA"
    /// Northern Luri - لۊری شومالی
    case northernLuri = "lrc"
    /// Northern Luri (Iraq) - لۊری شومالی (IQ)
    case northernLuriIraq = "lrc_IQ"
    /// Northern Luri (Iran) - لۊری شومالی (IR)
    case northernLuriIran = "lrc_IR"
    /// Lithuanian - lietuvių
    case lithuanian = "lt"
    /// Lithuanian (Lithuania) - lietuvių (Lietuva)
    case lithuanianLithuania = "lt_LT"
    /// Luba-Katanga - Tshiluba
    case lubaKatanga = "lu"
    /// Luba-Katanga (Congo - Kinshasa) - Tshiluba (Ditunga wa Kongu)
    case lubaKatangaCongoKinshasa = "lu_CD"
    /// Luo - Dholuo
    case luo = "luo"
    /// Luo (Kenya) - Dholuo (Kenya)
    case luoKenya = "luo_KE"
    /// Luyia - Luluhia
    case luyia = "luy"
    /// Luyia (Kenya) - Luluhia (Kenya)
    case luyiaKenya = "luy_KE"
    /// Latvian - latviešu
    case latvian = "lv"
    /// Latvian (Latvia) - latviešu (Latvija)
    case latvianLatvia = "lv_LV"
    /// Masai - Maa
    case masai = "mas"
    /// Masai (Kenya) - Maa (Kenya)
    case masaiKenya = "mas_KE"
    /// Masai (Tanzania) - Maa (Tansania)
    case masaiTanzania = "mas_TZ"
    /// Meru - Kĩmĩrũ
    case meru = "mer"
    /// Meru (Kenya) - Kĩmĩrũ (Kenya)
    case meruKenya = "mer_KE"
    /// Morisyen - kreol morisien
    case morisyen = "mfe"
    /// Morisyen (Mauritius) - kreol morisien (Moris)
    case morisyenMauritius = "mfe_MU"
    /// Malagasy - Malagasy
    case malagasy = "mg"
    /// Malagasy (Madagascar) - Malagasy (Madagasikara)
    case malagasyMadagascar = "mg_MG"
    /// Makhuwa-Meetto - Makua
    case makhuwaMeetto = "mgh"
    /// Makhuwa-Meetto (Mozambique) - Makua (Umozambiki)
    case makhuwaMeettoMozambique = "mgh_MZ"
    /// Metaʼ - metaʼ
    case metaʼ = "mgo"
    /// Metaʼ (Cameroon) - metaʼ (Kamalun)
    case metaʼCameroon = "mgo_CM"
    /// Macedonian - македонски
    case macedonian = "mk"
    /// Macedonian (Macedonia) - македонски (Македонија)
    case macedonianMacedonia = "mk_MK"
    /// Malayalam - മലയാളം
    case malayalam = "ml"
    /// Malayalam (India) - മലയാളം (ഇന്ത്യ)
    case malayalamIndia = "ml_IN"
    /// Mongolian - монгол
    case mongolian = "mn"
    /// Mongolian (Mongolia) - монгол (Монгол)
    case mongolianMongolia = "mn_MN"
    /// Marathi - मराठी
    case marathi = "mr"
    /// Marathi (India) - मराठी (भारत)
    case marathiIndia = "mr_IN"
    /// Malay - Melayu
    case malay = "ms"
    /// Malay (Brunei) - Melayu (Brunei)
    case malayBrunei = "ms_BN"
    /// Malay (Malaysia) - Melayu (Malaysia)
    case malayMalaysia = "ms_MY"
    /// Malay (Singapore) - Melayu (Singapura)
    case malaySingapore = "ms_SG"
    /// Maltese - Malti
    case maltese = "mt"
    /// Maltese (Malta) - Malti (Malta)
    case malteseMalta = "mt_MT"
    /// Mundang - MUNDAŊ
    case mundang = "mua"
    /// Mundang (Cameroon) - MUNDAŊ (kameruŋ)
    case mundangCameroon = "mua_CM"
    /// Burmese - မြန်မာ
    case burmese = "my"
    /// Burmese (Myanmar [Burma]) - မြန်မာ (မြန်မာ)
    case burmeseMyanmarBurma = "my_MM"
    /// Mazanderani - مازرونی
    case mazanderani = "mzn"
    /// Mazanderani (Iran) - مازرونی (ایران)
    case mazanderaniIran = "mzn_IR"
    /// Nama - Khoekhoegowab
    case nama = "naq"
    /// Nama (Namibia) - Khoekhoegowab (Namibiab)
    case namaNamibia = "naq_NA"
    /// Norwegian Bokmål - norsk bokmål
    case norwegianBokmål = "nb"
    /// Norwegian Bokmål (Norway) - norsk bokmål (Norge)
    case norwegianBokmålNorway = "nb_NO"
    /// Norwegian Bokmål (Svalbard & Jan Mayen) - norsk bokmål (Svalbard og Jan Mayen)
    case norwegianBokmålSvalbardAndJanMayen = "nb_SJ"
    /// North Ndebele - isiNdebele
    case northNdebele = "nd"
    /// North Ndebele (Zimbabwe) - isiNdebele (Zimbabwe)
    case northNdebeleZimbabwe = "nd_ZW"
    /// Low German - nds
    case lowGerman = "nds"
    /// Low German (Germany) - nds (DE)
    case lowGermanGermany = "nds_DE"
    /// Low German (Netherlands) - nds (NL) - Low Saxon
    case lowGermanNetherlands = "nds_NL"
    /// Nepali - नेपाली
    case nepali = "ne"
    /// Nepali (India) - नेपाली (भारत)
    case nepaliIndia = "ne_IN"
    /// Nepali (Nepal) - नेपाली (नेपाल)
    case nepaliNepal = "ne_NP"
    /// Dutch - Nederlands
    case dutch = "nl"
    /// Dutch (Aruba) - Nederlands (Aruba)
    case dutchAruba = "nl_AW"
    /// Dutch (Belgium) - Nederlands (België) - Flemish
    case dutchBelgium = "nl_BE"
    /// Dutch (Caribbean Netherlands) - Nederlands (Caribisch Nederland)
    case dutchCaribbeanNetherlands = "nl_BQ"
    /// Dutch (Curaçao) - Nederlands (Curaçao)
    case dutchCuraçao = "nl_CW"
    /// Dutch (Netherlands) - Nederlands (Nederland)
    case dutchNetherlands = "nl_NL"
    /// Dutch (Suriname) - Nederlands (Suriname)
    case dutchSuriname = "nl_SR"
    /// Dutch (Sint Maarten) - Nederlands (Sint-Maarten)
    case dutchSintMaarten = "nl_SX"
    /// Kwasio - nmg
    case kwasio = "nmg"
    /// Kwasio (Cameroon) - nmg (Kamerun)
    case kwasioCameroon = "nmg_CM"
    /// Norwegian Nynorsk - nynorsk
    case norwegianNynorsk = "nn"
    /// Norwegian Nynorsk (Norway) - nynorsk (Noreg)
    case norwegianNynorskNorway = "nn_NO"
    /// Ngiemboon - Shwóŋò ngiembɔɔn
    case ngiemboon = "nnh"
    /// Ngiemboon (Cameroon) - Shwóŋò ngiembɔɔn (Kàmalûm)
    case ngiemboonCameroon = "nnh_CM"
    /// Nuer - Thok Nath
    case nuer = "nus"
    /// Nuer (South Sudan) - Thok Nath (SS)
    case nuerSouthSudan = "nus_SS"
    /// Nyankole - Runyankore
    case nyankole = "nyn"
    /// Nyankole (Uganda) - Runyankore (Uganda)
    case nyankoleUganda = "nyn_UG"
    /// Oromo - Oromoo
    case oromo = "om"
    /// Oromo (Ethiopia) - Oromoo (Itoophiyaa)
    case oromoEthiopia = "om_ET"
    /// Oromo (Kenya) - Oromoo (Keeniyaa)
    case oromoKenya = "om_KE"
    /// Odia - ଓଡ଼ିଆ
    case odia = "or"
    /// Odia (India) - ଓଡ଼ିଆ (ଭାରତ)
    case odiaIndia = "or_IN"
    /// Ossetic - ирон
    case ossetic = "os"
    /// Ossetic (Georgia) - ирон (Гуырдзыстон)
    case osseticGeorgia = "os_GE"
    /// Ossetic (Russia) - ирон (Уӕрӕсе)
    case osseticRussia = "os_RU"
    /// Punjabi - ਪੰਜਾਬੀ
    case punjabi = "pa"
    /// Punjabi (Arabic) - پنجابی (عربی)
    case punjabiArabic = "pa_Arab"
    /// Punjabi (Arabic, Pakistan) - پنجابی (عربی, پاکستان)
    case punjabiArabicPakistan = "pa_Arab_PK"
    /// Punjabi (Gurmukhi) - ਪੰਜਾਬੀ (ਗੁਰਮੁਖੀ)
    case punjabiGurmukhi = "pa_Guru"
    /// Punjabi (Gurmukhi, India) - ਪੰਜਾਬੀ (ਗੁਰਮੁਖੀ, ਭਾਰਤ)
    case punjabiGurmukhiIndia = "pa_Guru_IN"
    /// Polish - polski
    case polish = "pl"
    /// Polish (Poland) - polski (Polska)
    case polishPoland = "pl_PL"
    /// Pashto - پښتو
    case pashto = "ps"
    /// Pashto (Afghanistan) - پښتو (افغانستان)
    case pashtoAfghanistan = "ps_AF"
    /// Portuguese - português
    case portuguese = "pt"
    /// Portuguese (Angola) - português (Angola)
    case portugueseAngola = "pt_AO"
    /// Portuguese (Brazil) - português (Brasil) - Brazilian Portuguese
    case portugueseBrazil = "pt_BR"
    /// Portuguese (Switzerland) - português (Suíça)
    case portugueseSwitzerland = "pt_CH"
    /// Portuguese (Cape Verde) - português (Cabo Verde)
    case portugueseCapeVerde = "pt_CV"
    /// Portuguese (Equatorial Guinea) - português (Guiné Equatorial)
    case portugueseEquatorialGuinea = "pt_GQ"
    /// Portuguese (Guinea-Bissau) - português (Guiné-Bissau)
    case portugueseGuineaBissau = "pt_GW"
    /// Portuguese (Luxembourg) - português (Luxemburgo)
    case portugueseLuxembourg = "pt_LU"
    /// Portuguese (Macau SAR China) - português (Macau, RAE da China)
    case portugueseMacauSARChina = "pt_MO"
    /// Portuguese (Mozambique) - português (Moçambique)
    case portugueseMozambique = "pt_MZ"
    /// Portuguese (Portugal) - português (Portugal) - European Portuguese
    case portuguesePortugal = "pt_PT"
    /// Portuguese (São Tomé & Príncipe) - português (São Tomé e Príncipe)
    case portugueseSãoToméAndPríncipe = "pt_ST"
    /// Portuguese (Timor-Leste) - português (Timor-Leste)
    case portugueseTimorLeste = "pt_TL"
    /// Quechua - Runasimi
    case quechua = "qu"
    /// Quechua (Bolivia) - Runasimi (Bolivia)
    case quechuaBolivia = "qu_BO"
    /// Quechua (Ecuador) - Runasimi (Ecuador)
    case quechuaEcuador = "qu_EC"
    /// Quechua (Peru) - Runasimi (Perú)
    case quechuaPeru = "qu_PE"
    /// Romansh - rumantsch
    case romansh = "rm"
    /// Romansh (Switzerland) - rumantsch (Svizra)
    case romanshSwitzerland = "rm_CH"
    /// Rundi - Ikirundi
    case rundi = "rn"
    /// Rundi (Burundi) - Ikirundi (Uburundi)
    case rundiBurundi = "rn_BI"
    /// Romanian - română
    case romanian = "ro"
    /// Romanian (Moldova) - română (Republica Moldova) - Moldavian
    case romanianMoldova = "ro_MD"
    /// Romanian (Romania) - română (România)
    case romanianRomania = "ro_RO"
    /// Rombo - Kihorombo
    case rombo = "rof"
    /// Rombo (Tanzania) - Kihorombo (Tanzania)
    case romboTanzania = "rof_TZ"
    /// Russian - русский
    case russian = "ru"
    /// Russian (Belarus) - русский (Беларусь)
    case russianBelarus = "ru_BY"
    /// Russian (Kyrgyzstan) - русский (Киргизия)
    case russianKyrgyzstan = "ru_KG"
    /// Russian (Kazakhstan) - русский (Казахстан)
    case russianKazakhstan = "ru_KZ"
    /// Russian (Moldova) - русский (Молдова)
    case russianMoldova = "ru_MD"
    /// Russian (Russia) - русский (Россия)
    case russianRussia = "ru_RU"
    /// Russian (Ukraine) - русский (Украина)
    case russianUkraine = "ru_UA"
    /// Kinyarwanda - Kinyarwanda
    case kinyarwanda = "rw"
    /// Kinyarwanda (Rwanda) - Kinyarwanda (U Rwanda)
    case kinyarwandaRwanda = "rw_RW"
    /// Rwa - Kiruwa
    case rwa = "rwk"
    /// Rwa (Tanzania) - Kiruwa (Tanzania)
    case rwaTanzania = "rwk_TZ"
    /// Sakha - саха тыла
    case sakha = "sah"
    /// Sakha (Russia) - саха тыла (Арассыыйа)
    case sakhaRussia = "sah_RU"
    /// Samburu - Kisampur
    case samburu = "saq"
    /// Samburu (Kenya) - Kisampur (Kenya)
    case samburuKenya = "saq_KE"
    /// Sangu - Ishisangu
    case sangu = "sbp"
    /// Sangu (Tanzania) - Ishisangu (Tansaniya)
    case sanguTanzania = "sbp_TZ"
    /// Northern Sami - davvisámegiella
    case northernSami = "se"
    /// Northern Sami (Finland) - davvisámegiella (Suopma)
    case northernSamiFinland = "se_FI"
    /// Northern Sami (Norway) - davvisámegiella (Norga)
    case northernSamiNorway = "se_NO"
    /// Northern Sami (Sweden) - davvisámegiella (Ruoŧŧa)
    case northernSamiSweden = "se_SE"
    /// Sena - sena
    case sena = "seh"
    /// Sena (Mozambique) - sena (Moçambique)
    case senaMozambique = "seh_MZ"
    /// Koyraboro Senni - Koyraboro senni
    case koyraboroSenni = "ses"
    /// Koyraboro Senni (Mali) - Koyraboro senni (Maali)
    case koyraboroSenniMali = "ses_ML"
    /// Sango - Sängö
    case sango = "sg"
    /// Sango (Central African Republic) - Sängö (Ködörösêse tî Bêafrîka)
    case sangoCentralAfricanRepublic = "sg_CF"
    /// Tachelhit - ⵜⴰⵛⵍⵃⵉⵜ
    case tachelhit = "shi"
    /// Tachelhit (Latin) - Tashelḥiyt (Latn)
    case tachelhitLatin = "shi_Latn"
    /// Tachelhit (Latin, Morocco) - Tashelḥiyt (Latn, lmɣrib)
    case tachelhitLatinMorocco = "shi_Latn_MA"
    /// Tachelhit (Tifinagh) - ⵜⴰⵛⵍⵃⵉⵜ (Tfng)
    case tachelhitTifinagh = "shi_Tfng"
    /// Tachelhit (Tifinagh, Morocco) - ⵜⴰⵛⵍⵃⵉⵜ (Tfng, ⵍⵎⵖⵔⵉⴱ)
    case tachelhitTifinaghMorocco = "shi_Tfng_MA"
    /// Sinhala - සිංහල
    case sinhala = "si"
    /// Sinhala (Sri Lanka) - සිංහල (ශ්‍රී ලංකාව)
    case sinhalaSriLanka = "si_LK"
    /// Slovak - slovenčina
    case slovak = "sk"
    /// Slovak (Slovakia) - slovenčina (Slovensko)
    case slovakSlovakia = "sk_SK"
    /// Slovenian - slovenščina
    case slovenian = "sl"
    /// Slovenian (Slovenia) - slovenščina (Slovenija)
    case slovenianSlovenia = "sl_SI"
    /// Inari Sami - anarâškielâ
    case inariSami = "smn"
    /// Inari Sami (Finland) - anarâškielâ (Suomâ)
    case inariSamiFinland = "smn_FI"
    /// Shona - chiShona
    case shona = "sn"
    /// Shona (Zimbabwe) - chiShona (Zimbabwe)
    case shonaZimbabwe = "sn_ZW"
    /// Somali - Soomaali
    case somali = "so"
    /// Somali (Djibouti) - Soomaali (Jabuuti)
    case somaliDjibouti = "so_DJ"
    /// Somali (Ethiopia) - Soomaali (Itoobiya)
    case somaliEthiopia = "so_ET"
    /// Somali (Kenya) - Soomaali (Kiiniya)
    case somaliKenya = "so_KE"
    /// Somali (Somalia) - Soomaali (Soomaaliya)
    case somaliSomalia = "so_SO"
    /// Albanian - shqip
    case albanian = "sq"
    /// Albanian (Albania) - shqip (Shqipëri)
    case albanianAlbania = "sq_AL"
    /// Albanian (Macedonia) - shqip (Maqedoni)
    case albanianMacedonia = "sq_MK"
    /// Albanian (Kosovo) - shqip (Kosovë)
    case albanianKosovo = "sq_XK"
    /// Serbian - српски
    case serbian = "sr"
    /// Serbian (Cyrillic) - српски (ћирилица)
    case serbianCyrillic = "sr_Cyrl"
    /// Serbian (Cyrillic, Bosnia & Herzegovina) - српски (ћирилица, Босна и Херцеговина)
    case serbianCyrillicBosniaAndHerzegovina = "sr_Cyrl_BA"
    /// Serbian (Cyrillic, Montenegro) - српски (ћирилица, Црна Гора)
    case serbianCyrillicMontenegro = "sr_Cyrl_ME"
    /// Serbian (Cyrillic, Serbia) - српски (ћирилица, Србија)
    case serbianCyrillicSerbia = "sr_Cyrl_RS"
    /// Serbian (Cyrillic, Kosovo) - српски (ћирилица, Косово)
    case serbianCyrillicKosovo = "sr_Cyrl_XK"
    /// Serbian (Latin) - srpski (latinica)
    case serbianLatin = "sr_Latn"
    /// Serbian (Latin, Bosnia & Herzegovina) - srpski (latinica, Bosna i Hercegovina)
    case serbianLatinBosniaAndHerzegovina = "sr_Latn_BA"
    /// Serbian (Latin, Montenegro) - srpski (latinica, Crna Gora)
    case serbianLatinMontenegro = "sr_Latn_ME"
    /// Serbian (Latin, Serbia) - srpski (latinica, Srbija)
    case serbianLatinSerbia = "sr_Latn_RS"
    /// Serbian (Latin, Kosovo) - srpski (latinica, Kosovo)
    case serbianLatinKosovo = "sr_Latn_XK"
    /// Swedish - svenska
    case swedish = "sv"
    /// Swedish (Åland Islands) - svenska (Åland)
    case swedishÅlandIslands = "sv_AX"
    /// Swedish (Finland) - svenska (Finland)
    case swedishFinland = "sv_FI"
    /// Swedish (Sweden) - svenska (Sverige)
    case swedishSweden = "sv_SE"
    /// Swahili - Kiswahili
    case swahili = "sw"
    /// Swahili (Congo - Kinshasa) - Kiswahili (Jamhuri ya Kidemokrasia ya Kongo) - Congo Swahili
    case swahiliCongoKinshasa = "sw_CD"
    /// Swahili (Kenya) - Kiswahili (Kenya)
    case swahiliKenya = "sw_KE"
    /// Swahili (Tanzania) - Kiswahili (Tanzania)
    case swahiliTanzania = "sw_TZ"
    /// Swahili (Uganda) - Kiswahili (Uganda)
    case swahiliUganda = "sw_UG"
    /// Tamil - தமிழ்
    case tamil = "ta"
    /// Tamil (India) - தமிழ் (இந்தியா)
    case tamilIndia = "ta_IN"
    /// Tamil (Sri Lanka) - தமிழ் (இலங்கை)
    case tamilSriLanka = "ta_LK"
    /// Tamil (Malaysia) - தமிழ் (மலேசியா)
    case tamilMalaysia = "ta_MY"
    /// Tamil (Singapore) - தமிழ் (சிங்கப்பூர்)
    case tamilSingapore = "ta_SG"
    /// Telugu - తెలుగు
    case telugu = "te"
    /// Telugu (India) - తెలుగు (భారతదేశం)
    case teluguIndia = "te_IN"
    /// Teso - Kiteso
    case teso = "teo"
    /// Teso (Kenya) - Kiteso (Kenia)
    case tesoKenya = "teo_KE"
    /// Teso (Uganda) - Kiteso (Uganda)
    case tesoUganda = "teo_UG"
    /// Tajik - тоҷикӣ
    case tajik = "tg"
    /// Tajik (Tajikistan) - тоҷикӣ (Тоҷикистон)
    case tajikTajikistan = "tg_TJ"
    /// Thai - ไทย
    case thai = "th"
    /// Thai (Thailand) - ไทย (ไทย)
    case thaiThailand = "th_TH"
    /// Tigrinya - ትግርኛ
    case tigrinya = "ti"
    /// Tigrinya (Eritrea) - ትግርኛ (ኤርትራ)
    case tigrinyaEritrea = "ti_ER"
    /// Tigrinya (Ethiopia) - ትግርኛ (ኢትዮጵያ)
    case tigrinyaEthiopia = "ti_ET"
    /// Tongan - lea fakatonga
    case tongan = "to"
    /// Tongan (Tonga) - lea fakatonga (Tonga)
    case tonganTonga = "to_TO"
    /// Turkish - Türkçe
    case turkish = "tr"
    /// Turkish (Cyprus) - Türkçe (Kıbrıs)
    case turkishCyprus = "tr_CY"
    /// Turkish (Turkey) - Türkçe (Türkiye)
    case turkishTurkey = "tr_TR"
    /// Tatar - татар
    case tatar = "tt"
    /// Tatar (Russia) - татар (Россия)
    case tatarRussia = "tt_RU"
    /// Tasawaq - Tasawaq senni
    case tasawaq = "twq"
    /// Tasawaq (Niger) - Tasawaq senni (Nižer)
    case tasawaqNiger = "twq_NE"
    /// Central Atlas Tamazight - Tamaziɣt n laṭlaṣ
    case centralAtlasTamazight = "tzm"
    /// Central Atlas Tamazight (Morocco) - Tamaziɣt n laṭlaṣ (Meṛṛuk)
    case centralAtlasTamazightMorocco = "tzm_MA"
    /// Uyghur - ئۇيغۇرچە
    case uyghur = "ug"
    /// Uyghur (China) - ئۇيغۇرچە (جۇڭگو)
    case uyghurChina = "ug_CN"
    /// Ukrainian - українська
    case ukrainian = "uk"
    /// Ukrainian (Ukraine) - українська (Україна)
    case ukrainianUkraine = "uk_UA"
    /// Urdu - اردو
    case urdu = "ur"
    /// Urdu (India) - اردو (بھارت)
    case urduIndia = "ur_IN"
    /// Urdu (Pakistan) - اردو (پاکستان)
    case urduPakistan = "ur_PK"
    /// Uzbek - o‘zbek
    case uzbek = "uz"
    /// Uzbek (Arabic) - اوزبیک (عربی)
    case uzbekArabic = "uz_Arab"
    /// Uzbek (Arabic, Afghanistan) - اوزبیک (عربی, افغانستان)
    case uzbekArabicAfghanistan = "uz_Arab_AF"
    /// Uzbek (Cyrillic) - ўзбекча (Кирил)
    case uzbekCyrillic = "uz_Cyrl"
    /// Uzbek (Cyrillic, Uzbekistan) - ўзбекча (Кирил, Ўзбекистон)
    case uzbekCyrillicUzbekistan = "uz_Cyrl_UZ"
    /// Uzbek (Latin) - o‘zbek (lotin)
    case uzbekLatin = "uz_Latn"
    /// Uzbek (Latin, Uzbekistan) - o‘zbek (lotin, Oʻzbekiston)
    case uzbekLatinUzbekistan = "uz_Latn_UZ"
    /// Vai - ꕙꔤ
    case vai = "vai"
    /// Vai (Latin) - Vai (Latn)
    case vaiLatin = "vai_Latn"
    /// Vai (Latin, Liberia) - Vai (Latn, Laibhiya)
    case vaiLatinLiberia = "vai_Latn_LR"
    /// Vai (Vai) - ꕙꔤ (Vaii)
    case vaiVai = "vai_Vaii"
    /// Vai (Vai, Liberia) - ꕙꔤ (Vaii, ꕞꔤꔫꕩ)
    case vaiVaiLiberia = "vai_Vaii_LR"
    /// Vietnamese - Tiếng Việt
    case vietnamese = "vi"
    /// Vietnamese (Vietnam) - Tiếng Việt (Việt Nam)
    case vietnameseVietnam = "vi_VN"
    /// Vunjo - Kyivunjo
    case vunjo = "vun"
    /// Vunjo (Tanzania) - Kyivunjo (Tanzania)
    case vunjoTanzania = "vun_TZ"
    /// Walser - Walser
    case walser = "wae"
    /// Walser (Switzerland) - Walser (Schwiz)
    case walserSwitzerland = "wae_CH"
    /// Wolof - Wolof
    case wolof = "wo"
    /// Wolof (Senegal) - Wolof (Senegaal)
    case wolofSenegal = "wo_SN"
    /// Soga - Olusoga
    case soga = "xog"
    /// Soga (Uganda) - Olusoga (Yuganda)
    case sogaUganda = "xog_UG"
    /// Yangben - nuasue
    case yangben = "yav"
    /// Yangben (Cameroon) - nuasue (Kemelún)
    case yangbenCameroon = "yav_CM"
    /// Yiddish - ייִדיש
    case yiddish = "yi"
    /// Yiddish (World) - ייִדיש (וועלט)
    case yiddishWorld = "yi_001"
    /// Yoruba - Èdè Yorùbá
    case yoruba = "yo"
    /// Yoruba (Benin) - Èdè Yorùbá (Orílɛ́ède Bɛ̀nɛ̀)
    case yorubaBenin = "yo_BJ"
    /// Yoruba (Nigeria) - Èdè Yorùbá (Orílẹ́ède Nàìjíríà)
    case yorubaNigeria = "yo_NG"
    /// Cantonese - 粵語
    case cantonese = "yue"
    /// Cantonese (Simplified) - 粤语 (简体)
    case cantoneseSimplified = "yue_Hans"
    /// Cantonese (Simplified, China) - 粤语 (简体，中华人民共和国)
    case cantoneseSimplifiedChina = "yue_Hans_CN"
    /// Cantonese (Traditional) - 粵語 (繁體)
    case cantoneseTraditional = "yue_Hant"
    /// Cantonese (Traditional, Hong Kong SAR China) - 粵語 (繁體，中華人民共和國香港特別行政區)
    case cantoneseTraditionalHongKongSARChina = "yue_Hant_HK"
    /// Standard Moroccan Tamazight - ⵜⴰⵎⴰⵣⵉⵖⵜ
    case standardMoroccanTamazight = "zgh"
    /// Standard Moroccan Tamazight (Morocco) - ⵜⴰⵎⴰⵣⵉⵖⵜ (ⵍⵎⵖⵔⵉⴱ)
    case standardMoroccanTamazightMorocco = "zgh_MA"
    /// Chinese - 中文
    case chinese = "zh"
    /// Chinese (Simplified) - 中文（简体） - Simplified Chinese
    case chineseSimplified = "zh_Hans"
    /// Chinese (Simplified, China) - 中文（简体，中国） - Simplified Chinese (China)
    case chineseSimplifiedChina = "zh_Hans_CN"
    /// Chinese (Simplified, Hong Kong SAR China) - 中文（简体，中国香港特别行政区） - Simplified Chinese (Hong Kong SAR China)
    case chineseSimplifiedHongKongSARChina = "zh_Hans_HK"
    /// Chinese (Simplified, Macau SAR China) - 中文（简体，中国澳门特别行政区） - Simplified Chinese (Macau SAR China)
    case chineseSimplifiedMacauSARChina = "zh_Hans_MO"
    /// Chinese (Simplified, Singapore) - 中文（简体，新加坡） - Simplified Chinese (Singapore)
    case chineseSimplifiedSingapore = "zh_Hans_SG"
    /// Chinese (Traditional) - 中文（繁體） - Traditional Chinese
    case chineseTraditional = "zh_Hant"
    /// Chinese (Traditional, Hong Kong SAR China) - 中文（繁體字，中國香港特別行政區） - Traditional Chinese (Hong Kong SAR China)
    case chineseTraditionalHongKongSARChina = "zh_Hant_HK"
    /// Chinese (Traditional, Macau SAR China) - 中文（繁體字，中國澳門特別行政區） - Traditional Chinese (Macau SAR China)
    case chineseTraditionalMacauSARChina = "zh_Hant_MO"
    /// Chinese (Traditional, Taiwan) - 中文（繁體，台灣） - Traditional Chinese (Taiwan)
    case chineseTraditionalTaiwan = "zh_Hant_TW"
    /// Zulu - isiZulu
    case zulu = "zu"
    /// Zulu (South Africa) - isiZulu (iNingizimu Afrika)
    case zuluSouthAfrica = "zu_ZA"
    
    var nativeName: String? {
        switch self {
            /// Afrikaans - Afrikaans
            case .afrikaans: return "Afrikaans"
            /// Afrikaans (Namibia) - Afrikaans (Namibië)
            case .afrikaansNamibia: return "Afrikaans (Namibië)"
            /// Afrikaans (South Africa) - Afrikaans (Suid-Afrika)
            case .afrikaansSouthAfrica: return "Afrikaans (Suid"
            /// Aghem - Aghem
            case .aghem: return "Aghem"
            /// Aghem (Cameroon) - Aghem (Kàmàlûŋ)
            case .aghemCameroon: return "Aghem (Kàmàlûŋ)"
            /// Akan - Akan
            case .akan: return "Akan"
            /// Akan (Ghana) - Akan (Gaana)
            case .akanGhana: return "Akan (Gaana)"
            /// Amharic - አማርኛ
            case .amharic: return "አማርኛ"
            /// Amharic (Ethiopia) - አማርኛ (ኢትዮጵያ)
            case .amharicEthiopia: return "አማርኛ (ኢትዮጵያ)"
            /// Arabic - العربية
            case .arabic: return "العربية"
            /// Arabic (World) - العربية (العالم) - Modern Standard Arabic
            case .arabicWorld: return "العربية (العالم)"
            /// Arabic (United Arab Emirates) - العربية (الإمارات العربية المتحدة)
            case .arabicUnitedArabEmirates: return "العربية (الإمارات العربية المتحدة)"
            /// Arabic (Bahrain) - العربية (البحرين)
            case .arabicBahrain: return "العربية (البحرين)"
            /// Arabic (Djibouti) - العربية (جيبوتي)
            case .arabicDjibouti: return "العربية (جيبوتي)"
            /// Arabic (Algeria) - العربية (الجزائر)
            case .arabicAlgeria: return "العربية (الجزائر)"
            /// Arabic (Egypt) - العربية (مصر)
            case .arabicEgypt: return "العربية (مصر)"
            /// Arabic (Western Sahara) - العربية (الصحراء الغربية)
            case .arabicWesternSahara: return "العربية (الصحراء الغربية)"
            /// Arabic (Eritrea) - العربية (إريتريا)
            case .arabicEritrea: return "العربية (إريتريا)"
            /// Arabic (Israel) - العربية (إسرائيل)
            case .arabicIsrael: return "العربية (إسرائيل)"
            /// Arabic (Iraq) - العربية (العراق)
            case .arabicIraq: return "العربية (العراق)"
            /// Arabic (Jordan) - العربية (الأردن)
            case .arabicJordan: return "العربية (الأردن)"
            /// Arabic (Comoros) - العربية (جزر القمر)
            case .arabicComoros: return "العربية (جزر القمر)"
            /// Arabic (Kuwait) - العربية (الكويت)
            case .arabicKuwait: return "العربية (الكويت)"
            /// Arabic (Lebanon) - العربية (لبنان)
            case .arabicLebanon: return "العربية (لبنان)"
            /// Arabic (Libya) - العربية (ليبيا)
            case .arabicLibya: return "العربية (ليبيا)"
            /// Arabic (Morocco) - العربية (المغرب)
            case .arabicMorocco: return "العربية (المغرب)"
            /// Arabic (Mauritania) - العربية (موريتانيا)
            case .arabicMauritania: return "العربية (موريتانيا)"
            /// Arabic (Oman) - العربية (عُمان)
            case .arabicOman: return "العربية (عُمان)"
            /// Arabic (Palestinian Territories) - العربية (الأراضي الفلسطينية)
            case .arabicPalestinianTerritories: return "العربية (الأراضي الفلسطينية)"
            /// Arabic (Qatar) - العربية (قطر)
            case .arabicQatar: return "العربية (قطر)"
            /// Arabic (Saudi Arabia) - العربية (المملكة العربية السعودية)
            case .arabicSaudiArabia: return "العربية (المملكة العربية السعودية)"
            /// Arabic (Sudan) - العربية (السودان)
            case .arabicSudan: return "العربية (السودان)"
            /// Arabic (Somalia) - العربية (الصومال)
            case .arabicSomalia: return "العربية (الصومال)"
            /// Arabic (South Sudan) - العربية (جنوب السودان)
            case .arabicSouthSudan: return "العربية (جنوب السودان)"
            /// Arabic (Syria) - العربية (سوريا)
            case .arabicSyria: return "العربية (سوريا)"
            /// Arabic (Chad) - العربية (تشاد)
            case .arabicChad: return "العربية (تشاد)"
            /// Arabic (Tunisia) - العربية (تونس)
            case .arabicTunisia: return "العربية (تونس)"
            /// Arabic (Yemen) - العربية (اليمن)
            case .arabicYemen: return "العربية (اليمن)"
            /// Assamese - অসমীয়া
            case .assamese: return "অসমীয়া"
            /// Assamese (India) - অসমীয়া (ভারত)
            case .assameseIndia: return "অসমীয়া (ভারত)"
            /// Asu - Kipare
            case .asu: return "Kipare"
            /// Asu (Tanzania) - Kipare (Tadhania)
            case .asuTanzania: return "Kipare (Tadhania)"
            /// Asturian - asturianu
            case .asturian: return "asturianu"
            /// Asturian (Spain) - asturianu (España)
            case .asturianSpain: return "asturianu (España)"
            /// Azerbaijani - azərbaycan
            case .azerbaijani: return "azərbaycan"
            /// Azerbaijani (Cyrillic) - азәрбајҹан (Кирил)
            case .azerbaijaniCyrillic: return "азәрбајҹан (Кирил)"
            /// Azerbaijani (Cyrillic, Azerbaijan) - азәрбајҹан (Кирил, Азәрбајҹан)
            case .azerbaijaniCyrillicAzerbaijan: return "азәрбајҹан (Кирил, Азәрбајҹан)"
            /// Azerbaijani (Latin) - azərbaycan (latın)
            case .azerbaijaniLatin: return "azərbaycan (latın)"
            /// Azerbaijani (Latin, Azerbaijan) - azərbaycan (latın, Azərbaycan)
            case .azerbaijaniLatinAzerbaijan: return "azərbaycan (latın, Azərbaycan)"
            /// Basaa - Ɓàsàa
            case .basaa: return "Ɓàsàa"
            /// Basaa (Cameroon) - Ɓàsàa (Kàmɛ̀rûn)
            case .basaaCameroon: return "Ɓàsàa (Kàmɛ̀rûn)"
            /// Belarusian - беларуская
            case .belarusian: return "беларуская"
            /// Belarusian (Belarus) - беларуская (Беларусь)
            case .belarusianBelarus: return "беларуская (Беларусь)"
            /// Bemba - Ichibemba
            case .bemba: return "Ichibemba"
            /// Bemba (Zambia) - Ichibemba (Zambia)
            case .bembaZambia: return "Ichibemba (Zambia)"
            /// Bena - Hibena
            case .bena: return "Hibena"
            /// Bena (Tanzania) - Hibena (Hutanzania)
            case .benaTanzania: return "Hibena (Hutanzania)"
            /// Bulgarian - български
            case .bulgarian: return "български"
            /// Bulgarian (Bulgaria) - български (България)
            case .bulgarianBulgaria: return "български (България)"
            /// Bambara - bamanakan
            case .bambara: return "bamanakan"
            /// Bambara (Mali) - bamanakan (Mali)
            case .bambaraMali: return "bamanakan (Mali)"
            /// Bangla - বাংলা
            case .bangla: return "বাংলা"
            /// Bangla (Bangladesh) - বাংলা (বাংলাদেশ)
            case .banglaBangladesh: return "বাংলা (বাংলাদেশ)"
            /// Bangla (India) - বাংলা (ভারত)
            case .banglaIndia: return "বাংলা (ভারত)"
            /// Tibetan - བོད་སྐད་
            case .tibetan: return "བོད་སྐད་"
            /// Tibetan (China) - བོད་སྐད་ (རྒྱ་ནག)
            case .tibetanChina: return "བོད་སྐད་ (རྒྱ་ནག)"
            /// Tibetan (India) - བོད་སྐད་ (རྒྱ་གར་)
            case .tibetanIndia: return "བོད་སྐད་ (རྒྱ་གར་)"
            /// Breton - brezhoneg
            case .breton: return "brezhoneg"
            /// Breton (France) - brezhoneg (Frañs)
            case .bretonFrance: return "brezhoneg (Frañs)"
            /// Bodo - बड़ो
            case .bodo: return "बड़ो"
            /// Bodo (India) - बड़ो (भारत)
            case .bodoIndia: return "बड़ो (भारत)"
            /// Bosnian - bosanski
            case .bosnian: return "bosanski"
            /// Bosnian (Cyrillic) - босански (ћирилица)
            case .bosnianCyrillic: return "босански (ћирилица)"
            /// Bosnian (Cyrillic, Bosnia & Herzegovina) - босански (ћирилица, Босна и Херцеговина)
            case .bosnianCyrillicBosniaAndHerzegovina: return "босански (ћирилица, Босна и Херцеговина)"
            /// Bosnian (Latin) - bosanski (latinica)
            case .bosnianLatin: return "bosanski (latinica)"
            /// Bosnian (Latin, Bosnia & Herzegovina) - bosanski (latinica, Bosna i Hercegovina)
            case .bosnianLatinBosniaAndHerzegovina: return "bosanski (latinica, Bosna i Hercegovina)"
            /// Catalan - català
            case .catalan: return "català"
            /// Catalan (Andorra) - català (Andorra)
            case .catalanAndorra: return "català (Andorra)"
            /// Catalan (Spain) - català (Espanya)
            case .catalanSpain: return "català (Espanya)"
            /// Catalan (France) - català (França)
            case .catalanFrance: return "català (França)"
            /// Catalan (Italy) - català (Itàlia)
            case .catalanItaly: return "català (Itàlia)"
            /// Chakma - 𑄌𑄋𑄴𑄟𑄳𑄦
            case .chakma: return "𑄌𑄋𑄴𑄟𑄳𑄦"
            /// Chakma (Bangladesh) - 𑄌𑄋𑄴𑄟𑄳𑄦 (𑄝𑄁𑄣𑄘𑄬𑄌𑄴)
            case .chakmaBangladesh: return "𑄌𑄋𑄴𑄟𑄳𑄦 (𑄝𑄁𑄣𑄘𑄬𑄌𑄴)"
            /// Chakma (India) - 𑄌𑄋𑄴𑄟𑄳𑄦 (𑄞𑄢𑄧𑄖𑄴)
            case .chakmaIndia: return "𑄌𑄋𑄴𑄟𑄳𑄦 (𑄞𑄢𑄧𑄖𑄴)"
            /// Chechen - нохчийн
            case .chechen: return "нохчийн"
            /// Chechen (Russia) - нохчийн (Росси)
            case .chechenRussia: return "нохчийн (Росси)"
            /// Chiga - Rukiga
            case .chiga: return "Rukiga"
            /// Chiga (Uganda) - Rukiga (Uganda)
            case .chigaUganda: return "Rukiga (Uganda)"
            /// Cherokee - ᏣᎳᎩ
            case .cherokee: return "ᏣᎳᎩ"
            /// Cherokee (United States) - ᏣᎳᎩ (ᏌᏊ ᎢᏳᎾᎵᏍᏔᏅ ᏍᎦᏚᎩ)
            case .cherokeeUnitedStates: return "ᏣᎳᎩ (ᏌᏊ ᎢᏳᎾᎵᏍᏔᏅ ᏍᎦᏚᎩ)"
            /// Central Kurdish - کوردیی ناوەندی
            case .centralKurdish: return "کوردیی ناوەندی"
            /// Central Kurdish (Iraq) - کوردیی ناوەندی (عێراق)
            case .centralKurdishIraq: return "کوردیی ناوەندی (عێراق)"
            /// Central Kurdish (Iran) - کوردیی ناوەندی (ئێران)
            case .centralKurdishIran: return "کوردیی ناوەندی (ئێران)"
            /// Czech - čeština
            case .czech: return "čeština"
            /// Czech (Czechia) - čeština (Česko)
            case .czechCzechia: return "čeština (Česko)"
            /// Welsh - Cymraeg
            case .welsh: return "Cymraeg"
            /// Welsh (United Kingdom) - Cymraeg (Y Deyrnas Unedig)
            case .welshUnitedKingdom: return "Cymraeg (Y Deyrnas Unedig)"
            /// Danish - dansk
            case .danish: return "dansk"
            /// Danish (Denmark) - dansk (Danmark)
            case .danishDenmark: return "dansk (Danmark)"
            /// Danish (Greenland) - dansk (Grønland)
            case .danishGreenland: return "dansk (Grønland)"
            /// Taita - Kitaita
            case .taita: return "Kitaita"
            /// Taita (Kenya) - Kitaita (Kenya)
            case .taitaKenya: return "Kitaita (Kenya)"
            /// German - Deutsch
            case .german: return "Deutsch"
            /// German (Austria) - Deutsch (Österreich) - Austrian German
            case .germanAustria: return "Deutsch (Österreich)"
            /// German (Belgium) - Deutsch (Belgien)
            case .germanBelgium: return "Deutsch (Belgien)"
            /// German (Switzerland) - Deutsch (Schweiz) - Swiss High German
            case .germanSwitzerland: return "Deutsch (Schweiz)"
            /// German (Germany) - Deutsch (Deutschland)
            case .germanGermany: return "Deutsch (Deutschland)"
            /// German (Italy) - Deutsch (Italien)
            case .germanItaly: return "Deutsch (Italien)"
            /// German (Liechtenstein) - Deutsch (Liechtenstein)
            case .germanLiechtenstein: return "Deutsch (Liechtenstein)"
            /// German (Luxembourg) - Deutsch (Luxemburg)
            case .germanLuxembourg: return "Deutsch (Luxemburg)"
            /// Zarma - Zarmaciine
            case .zarma: return "Zarmaciine"
            /// Zarma (Niger) - Zarmaciine (Nižer)
            case .zarmaNiger: return "Zarmaciine (Nižer)"
            /// Lower Sorbian - dolnoserbšćina
            case .lowerSorbian: return "dolnoserbšćina"
            /// Lower Sorbian (Germany) - dolnoserbšćina (Nimska)
            case .lowerSorbianGermany: return "dolnoserbšćina (Nimska)"
            /// Duala - duálá
            case .duala: return "duálá"
            /// Duala (Cameroon) - duálá (Cameroun)
            case .dualaCameroon: return "duálá (Cameroun)"
            /// Jola-Fonyi - joola
            case .jolaFonyi: return "joola"
            /// Jola-Fonyi (Senegal) - joola (Senegal)
            case .jolaFonyiSenegal: return "joola (Senegal)"
            /// Dzongkha - རྫོང་ཁ
            case .dzongkha: return "རྫོང་ཁ"
            /// Dzongkha (Bhutan) - རྫོང་ཁ། (འབྲུག།)
            case .dzongkhaBhutan: return "རྫོང་ཁ། (འབྲུག།)"
            /// Embu - Kĩembu
            case .embu: return "Kĩembu"
            /// Embu (Kenya) - Kĩembu (Kenya)
            case .embuKenya: return "Kĩembu (Kenya)"
            /// Ewe - Eʋegbe
            case .ewe: return "Eʋegbe"
            /// Ewe (Ghana) - Eʋegbe (Ghana nutome)
            case .eweGhana: return "Eʋegbe (Ghana nutome)"
            /// Ewe (Togo) - Eʋegbe (Togo nutome)
            case .eweTogo: return "Eʋegbe (Togo nutome)"
            /// Greek - Ελληνικά
            case .greek: return "Ελληνικά"
            /// Greek (Cyprus) - Ελληνικά (Κύπρος)
            case .greekCyprus: return "Ελληνικά (Κύπρος)"
            /// Greek (Greece) - Ελληνικά (Ελλάδα)
            case .greekGreece: return "Ελληνικά (Ελλάδα)"
            /// English - English
            case .english: return "English"
            /// English (World) - English (World)
            case .englishWorld: return "English (World)"
            /// English (Europe) - English (Europe)
            case .englishEurope: return "English (Europe)"
            /// English (Antigua & Barbuda) - English (Antigua & Barbuda)
            case .englishAntiguaAndBarbuda: return "English (Antigua & Barbuda)"
            /// English (Anguilla) - English (Anguilla)
            case .englishAnguilla: return "English (Anguilla)"
            /// English (American Samoa) - English (American Samoa)
            case .englishAmericanSamoa: return "English (American Samoa)"
            /// English (Austria) - English (Austria)
            case .englishAustria: return "English (Austria)"
            /// English (Australia) - English (Australia) - Australian English
            case .englishAustralia: return "English (Australia)"
            /// English (Barbados) - English (Barbados)
            case .englishBarbados: return "English (Barbados)"
            /// English (Belgium) - English (Belgium)
            case .englishBelgium: return "English (Belgium)"
            /// English (Burundi) - English (Burundi)
            case .englishBurundi: return "English (Burundi)"
            /// English (Bermuda) - English (Bermuda)
            case .englishBermuda: return "English (Bermuda)"
            /// English (Bahamas) - English (Bahamas)
            case .englishBahamas: return "English (Bahamas)"
            /// English (Botswana) - English (Botswana)
            case .englishBotswana: return "English (Botswana)"
            /// English (Belize) - English (Belize)
            case .englishBelize: return "English (Belize)"
            /// English (Canada) - English (Canada) - Canadian English
            case .englishCanada: return "English (Canada)"
            /// English (Cocos [Keeling] Islands) - English (Cocos [Keeling] Islands)
            case .englishCocosKeelingIslands: return "English (Cocos [Keeling] Islands)"
            /// English (Switzerland) - English (Switzerland)
            case .englishSwitzerland: return "English (Switzerland)"
            /// English (Cook Islands) - English (Cook Islands)
            case .englishCookIslands: return "English (Cook Islands)"
            /// English (Cameroon) - English (Cameroon)
            case .englishCameroon: return "English (Cameroon)"
            /// English (Christmas Island) - English (Christmas Island)
            case .englishChristmasIsland: return "English (Christmas Island)"
            /// English (Cyprus) - English (Cyprus)
            case .englishCyprus: return "English (Cyprus)"
            /// English (Germany) - English (Germany)
            case .englishGermany: return "English (Germany)"
            /// English (Diego Garcia) - English (Diego Garcia)
            case .englishDiegoGarcia: return "English (Diego Garcia)"
            /// English (Denmark) - English (Denmark)
            case .englishDenmark: return "English (Denmark)"
            /// English (Dominica) - English (Dominica)
            case .englishDominica: return "English (Dominica)"
            /// English (Eritrea) - English (Eritrea)
            case .englishEritrea: return "English (Eritrea)"
            /// English (Finland) - English (Finland)
            case .englishFinland: return "English (Finland)"
            /// English (Fiji) - English (Fiji)
            case .englishFiji: return "English (Fiji)"
            /// English (Falkland Islands) - English (Falkland Islands)
            case .englishFalklandIslands: return "English (Falkland Islands)"
            /// English (Micronesia) - English (Micronesia)
            case .englishMicronesia: return "English (Micronesia)"
            /// English (United Kingdom) - English (United Kingdom) - British English
            case .englishUnitedKingdom: return "English (United Kingdom)"
            /// English (Grenada) - English (Grenada)
            case .englishGrenada: return "English (Grenada)"
            /// English (Guernsey) - English (Guernsey)
            case .englishGuernsey: return "English (Guernsey)"
            /// English (Ghana) - English (Ghana)
            case .englishGhana: return "English (Ghana)"
            /// English (Gibraltar) - English (Gibraltar)
            case .englishGibraltar: return "English (Gibraltar)"
            /// English (Gambia) - English (Gambia)
            case .englishGambia: return "English (Gambia)"
            /// English (Guam) - English (Guam)
            case .englishGuam: return "English (Guam)"
            /// English (Guyana) - English (Guyana)
            case .englishGuyana: return "English (Guyana)"
            /// English (Hong Kong SAR China) - English (Hong Kong SAR China)
            case .englishHongKongSARChina: return "English (Hong Kong SAR China)"
            /// English (Ireland) - English (Ireland)
            case .englishIreland: return "English (Ireland)"
            /// English (Israel) - English (Israel)
            case .englishIsrael: return "English (Israel)"
            /// English (Isle of Man) - English (Isle of Man)
            case .englishIsleofMan: return "English (Isle of Man)"
            /// English (India) - English (India)
            case .englishIndia: return "English (India)"
            /// English (British Indian Ocean Territory) - English (British Indian Ocean Territory)
            case .englishBritishIndianOceanTerritory: return "English (British Indian Ocean Territory)"
            /// English (Jersey) - English (Jersey)
            case .englishJersey: return "English (Jersey)"
            /// English (Jamaica) - English (Jamaica)
            case .englishJamaica: return "English (Jamaica)"
            /// English (Kenya) - English (Kenya)
            case .englishKenya: return "English (Kenya)"
            /// English (Kiribati) - English (Kiribati)
            case .englishKiribati: return "English (Kiribati)"
            /// English (St. Kitts & Nevis) - English (St. Kitts & Nevis)
            case .englishStKittsAndNevis: return "English (St. Kitts & Nevis)"
            /// English (Cayman Islands) - English (Cayman Islands)
            case .englishCaymanIslands: return "English (Cayman Islands)"
            /// English (St. Lucia) - English (St. Lucia)
            case .englishStLucia: return "English (St. Lucia)"
            /// English (Liberia) - English (Liberia)
            case .englishLiberia: return "English (Liberia)"
            /// English (Lesotho) - English (Lesotho)
            case .englishLesotho: return "English (Lesotho)"
            /// English (Madagascar) - English (Madagascar)
            case .englishMadagascar: return "English (Madagascar)"
            /// English (Marshall Islands) - English (Marshall Islands)
            case .englishMarshallIslands: return "English (Marshall Islands)"
            /// English (Macau SAR China) - English (Macau SAR China)
            case .englishMacauSARChina: return "English (Macau SAR China)"
            /// English (Northern Mariana Islands) - English (Northern Mariana Islands)
            case .englishNorthernMarianaIslands: return "English (Northern Mariana Islands)"
            /// English (Montserrat) - English (Montserrat)
            case .englishMontserrat: return "English (Montserrat)"
            /// English (Malta) - English (Malta)
            case .englishMalta: return "English (Malta)"
            /// English (Mauritius) - English (Mauritius)
            case .englishMauritius: return "English (Mauritius)"
            /// English (Malawi) - English (Malawi)
            case .englishMalawi: return "English (Malawi)"
            /// English (Malaysia) - English (Malaysia)
            case .englishMalaysia: return "English (Malaysia)"
            /// English (Namibia) - English (Namibia)
            case .englishNamibia: return "English (Namibia)"
            /// English (Norfolk Island) - English (Norfolk Island)
            case .englishNorfolkIsland: return "English (Norfolk Island)"
            /// English (Nigeria) - English (Nigeria)
            case .englishNigeria: return "English (Nigeria)"
            /// English (Netherlands) - English (Netherlands)
            case .englishNetherlands: return "English (Netherlands)"
            /// English (Nauru) - English (Nauru)
            case .englishNauru: return "English (Nauru)"
            /// English (Niue) - English (Niue)
            case .englishNiue: return "English (Niue)"
            /// English (New Zealand) - English (New Zealand)
            case .englishNewZealand: return "English (New Zealand)"
            /// English (Papua New Guinea) - English (Papua New Guinea)
            case .englishPapuaNewGuinea: return "English (Papua New Guinea)"
            /// English (Philippines) - English (Philippines)
            case .englishPhilippines: return "English (Philippines)"
            /// English (Pakistan) - English (Pakistan)
            case .englishPakistan: return "English (Pakistan)"
            /// English (Pitcairn Islands) - English (Pitcairn Islands)
            case .englishPitcairnIslands: return "English (Pitcairn Islands)"
            /// English (Puerto Rico) - English (Puerto Rico)
            case .englishPuertoRico: return "English (Puerto Rico)"
            /// English (Palau) - English (Palau)
            case .englishPalau: return "English (Palau)"
            /// English (Rwanda) - English (Rwanda)
            case .englishRwanda: return "English (Rwanda)"
            /// English (Solomon Islands) - English (Solomon Islands)
            case .englishSolomonIslands: return "English (Solomon Islands)"
            /// English (Seychelles) - English (Seychelles)
            case .englishSeychelles: return "English (Seychelles)"
            /// English (Sudan) - English (Sudan)
            case .englishSudan: return "English (Sudan)"
            /// English (Sweden) - English (Sweden)
            case .englishSweden: return "English (Sweden)"
            /// English (Singapore) - English (Singapore)
            case .englishSingapore: return "English (Singapore)"
            /// English (St. Helena) - English (St. Helena)
            case .englishStHelena: return "English (St. Helena)"
            /// English (Slovenia) - English (Slovenia)
            case .englishSlovenia: return "English (Slovenia)"
            /// English (Sierra Leone) - English (Sierra Leone)
            case .englishSierraLeone: return "English (Sierra Leone)"
            /// English (South Sudan) - English (South Sudan)
            case .englishSouthSudan: return "English (South Sudan)"
            /// English (Sint Maarten) - English (Sint Maarten)
            case .englishSintMaarten: return "English (Sint Maarten)"
            /// English (Swaziland) - English (Swaziland)
            case .englishSwaziland: return "English (Swaziland)"
            /// English (Turks & Caicos Islands) - English (Turks & Caicos Islands)
            case .englishTurksAndCaicosIslands: return "English (Turks & Caicos Islands)"
            /// English (Tokelau) - English (Tokelau)
            case .englishTokelau: return "English (Tokelau)"
            /// English (Tonga) - English (Tonga)
            case .englishTonga: return "English (Tonga)"
            /// English (Trinidad & Tobago) - English (Trinidad & Tobago)
            case .englishTrinidadAndTobago: return "English (Trinidad & Tobago)"
            /// English (Tuvalu) - English (Tuvalu)
            case .englishTuvalu: return "English (Tuvalu)"
            /// English (Tanzania) - English (Tanzania)
            case .englishTanzania: return "English (Tanzania)"
            /// English (Uganda) - English (Uganda)
            case .englishUganda: return "English (Uganda)"
            /// English (U.S. Outlying Islands) - English (U.S. Outlying Islands)
            case .englishUSOutlyingIslands: return "English (U.S. Outlying Islands)"
            /// English (United States) - English (United States) - American English
            case .englishUnitedStates: return "English (United States)"
            /// English (United States, Computer) - English (United States, Computer) - American English (Computer)
            case .englishUnitedStatesComputer: return "English (United States, Computer)"
            /// English (St. Vincent & Grenadines) - English (St. Vincent & Grenadines)
            case .englishStVincentAndGrenadines: return "English (St. Vincent & Grenadines)"
            /// English (British Virgin Islands) - English (British Virgin Islands)
            case .englishBritishVirginIslands: return "English (British Virgin Islands)"
            /// English (U.S. Virgin Islands) - English (U.S. Virgin Islands)
            case .englishUSVirginIslands: return "English (U.S. Virgin Islands)"
            /// English (Vanuatu) - English (Vanuatu)
            case .englishVanuatu: return "English (Vanuatu)"
            /// English (Samoa) - English (Samoa)
            case .englishSamoa: return "English (Samoa)"
            /// English (South Africa) - English (South Africa)
            case .englishSouthAfrica: return "English (South Africa)"
            /// English (Zambia) - English (Zambia)
            case .englishZambia: return "English (Zambia)"
            /// English (Zimbabwe) - English (Zimbabwe)
            case .englishZimbabwe: return "English (Zimbabwe)"
            /// Esperanto - esperanto
            case .esperanto: return "esperanto"
            /// Spanish - español
            case .spanish: return "español"
            /// Spanish (Latin America) - español (Latinoamérica) - Latin American Spanish
            case .spanishLatinAmerica: return "español (Latinoamérica)"
            /// Spanish (Argentina) - español (Argentina)
            case .spanishArgentina: return "español (Argentina)"
            /// Spanish (Bolivia) - español (Bolivia)
            case .spanishBolivia: return "español (Bolivia)"
            /// Spanish (Brazil) - español (Brasil)
            case .spanishBrazil: return "español (Brasil)"
            /// Spanish (Belize) - español (Belice)
            case .spanishBelize: return "español (Belice)"
            /// Spanish (Chile) - español (Chile)
            case .spanishChile: return "español (Chile)"
            /// Spanish (Colombia) - español (Colombia)
            case .spanishColombia: return "español (Colombia)"
            /// Spanish (Costa Rica) - español (Costa Rica)
            case .spanishCostaRica: return "español (Costa Rica)"
            /// Spanish (Cuba) - español (Cuba)
            case .spanishCuba: return "español (Cuba)"
            /// Spanish (Dominican Republic) - español (República Dominicana)
            case .spanishDominicanRepublic: return "español (República Dominicana)"
            /// Spanish (Ceuta & Melilla) - español (Ceuta y Melilla)
            case .spanishCeutaAndMelilla: return "español (Ceuta y Melilla)"
            /// Spanish (Ecuador) - español (Ecuador)
            case .spanishEcuador: return "español (Ecuador)"
            /// Spanish (Spain) - español (España) - European Spanish
            case .spanishSpain: return "español (España)"
            /// Spanish (Equatorial Guinea) - español (Guinea Ecuatorial)
            case .spanishEquatorialGuinea: return "español (Guinea Ecuatorial)"
            /// Spanish (Guatemala) - español (Guatemala)
            case .spanishGuatemala: return "español (Guatemala)"
            /// Spanish (Honduras) - español (Honduras)
            case .spanishHonduras: return "español (Honduras)"
            /// Spanish (Canary Islands) - español (Canarias)
            case .spanishCanaryIslands: return "español (Canarias)"
            /// Spanish (Mexico) - español (México) - Mexican Spanish
            case .spanishMexico: return "español (México)"
            /// Spanish (Nicaragua) - español (Nicaragua)
            case .spanishNicaragua: return "español (Nicaragua)"
            /// Spanish (Panama) - español (Panamá)
            case .spanishPanama: return "español (Panamá)"
            /// Spanish (Peru) - español (Perú)
            case .spanishPeru: return "español (Perú)"
            /// Spanish (Philippines) - español (Filipinas)
            case .spanishPhilippines: return "español (Filipinas)"
            /// Spanish (Puerto Rico) - español (Puerto Rico)
            case .spanishPuertoRico: return "español (Puerto Rico)"
            /// Spanish (Paraguay) - español (Paraguay)
            case .spanishParaguay: return "español (Paraguay)"
            /// Spanish (El Salvador) - español (El Salvador)
            case .spanishElSalvador: return "español (El Salvador)"
            /// Spanish (United States) - español (Estados Unidos)
            case .spanishUnitedStates: return "español (Estados Unidos)"
            /// Spanish (Uruguay) - español (Uruguay)
            case .spanishUruguay: return "español (Uruguay)"
            /// Spanish (Venezuela) - español (Venezuela)
            case .spanishVenezuela: return "español (Venezuela)"
            /// Estonian - eesti
            case .estonian: return "eesti"
            /// Estonian (Estonia) - eesti (Eesti)
            case .estonianEstonia: return "eesti (Eesti)"
            /// Basque - euskara
            case .basque: return "euskara"
            /// Basque (Spain) - euskara (Espainia)
            case .basqueSpain: return "euskara (Espainia)"
            /// Ewondo - ewondo
            case .ewondo: return "ewondo"
            /// Ewondo (Cameroon) - ewondo (Kamərún)
            case .ewondoCameroon: return "ewondo (Kamərún)"
            /// Persian - فارسی
            case .persian: return "فارسی"
            /// Persian (Afghanistan) - فارسی (افغانستان) - Dari
            case .persianAfghanistan: return "فارسی (افغانستان)"
            /// Persian (Iran) - فارسی (ایران)
            case .persianIran: return "فارسی (ایران)"
            /// Fulah - Pulaar
            case .fulah: return "Pulaar"
            /// Fulah (Cameroon) - Pulaar (Kameruun)
            case .fulahCameroon: return "Pulaar (Kameruun)"
            /// Fulah (Guinea) - Pulaar (Gine)
            case .fulahGuinea: return "Pulaar (Gine)"
            /// Fulah (Mauritania) - Pulaar (Muritani)
            case .fulahMauritania: return "Pulaar (Muritani)"
            /// Fulah (Senegal) - Pulaar (Senegaal)
            case .fulahSenegal: return "Pulaar (Senegaal)"
            /// Finnish - suomi
            case .finnish: return "suomi"
            /// Finnish (Finland) - suomi (Suomi)
            case .finnishFinland: return "suomi (Suomi)"
            /// Filipino - Filipino
            case .filipino: return "Filipino"
            /// Filipino (Philippines) - Filipino (Pilipinas)
            case .filipinoPhilippines: return "Filipino (Pilipinas)"
            /// Faroese - føroyskt
            case .faroese: return "føroyskt"
            /// Faroese (Denmark) - føroyskt (Danmark)
            case .faroeseDenmark: return "føroyskt (Danmark)"
            /// Faroese (Faroe Islands) - føroyskt (Føroyar)
            case .faroeseFaroeIslands: return "føroyskt (Føroyar)"
            /// French - français
            case .french: return "français"
            /// French (Belgium) - français (Belgique)
            case .frenchBelgium: return "français (Belgique)"
            /// French (Burkina Faso) - français (Burkina Faso)
            case .frenchBurkinaFaso: return "français (Burkina Faso)"
            /// French (Burundi) - français (Burundi)
            case .frenchBurundi: return "français (Burundi)"
            /// French (Benin) - français (Bénin)
            case .frenchBenin: return "français (Bénin)"
            /// French (St. Barthélemy) - français (Saint-Barthélemy)
            case .frenchStBarthélemy: return "français (Saint"
            /// French (Canada) - français (Canada) - Canadian French
            case .frenchCanada: return "français (Canada)"
            /// French (Congo - Kinshasa) - français (Congo-Kinshasa)
            case .frenchCongoKinshasa: return "Kinshasa)"
            /// French (Central African Republic) - français (République centrafricaine)
            case .frenchCentralAfricanRepublic: return "français (République centrafricaine)"
            /// French (Congo - Brazzaville) - français (Congo-Brazzaville)
            case .frenchCongoBrazzaville: return "Brazzaville)"
            /// French (Switzerland) - français (Suisse) - Swiss French
            case .frenchSwitzerland: return "français (Suisse)"
            /// French (Côte d’Ivoire) - français (Côte d’Ivoire)
            case .frenchCôtedIvoire: return "français (Côte d’Ivoire)"
            /// French (Cameroon) - français (Cameroun)
            case .frenchCameroon: return "français (Cameroun)"
            /// French (Djibouti) - français (Djibouti)
            case .frenchDjibouti: return "français (Djibouti)"
            /// French (Algeria) - français (Algérie)
            case .frenchAlgeria: return "français (Algérie)"
            /// French (France) - français (France)
            case .frenchFrance: return "français (France)"
            /// French (Gabon) - français (Gabon)
            case .frenchGabon: return "français (Gabon)"
            /// French (French Guiana) - français (Guyane française)
            case .frenchFrenchGuiana: return "français (Guyane française)"
            /// French (Guinea) - français (Guinée)
            case .frenchGuinea: return "français (Guinée)"
            /// French (Guadeloupe) - français (Guadeloupe)
            case .frenchGuadeloupe: return "français (Guadeloupe)"
            /// French (Equatorial Guinea) - français (Guinée équatoriale)
            case .frenchEquatorialGuinea: return "français (Guinée équatoriale)"
            /// French (Haiti) - français (Haïti)
            case .frenchHaiti: return "français (Haïti)"
            /// French (Comoros) - français (Comores)
            case .frenchComoros: return "français (Comores)"
            /// French (Luxembourg) - français (Luxembourg)
            case .frenchLuxembourg: return "français (Luxembourg)"
            /// French (Morocco) - français (Maroc)
            case .frenchMorocco: return "français (Maroc)"
            /// French (Monaco) - français (Monaco)
            case .frenchMonaco: return "français (Monaco)"
            /// French (St. Martin) - français (Saint-Martin)
            case .frenchStMartin: return "français (Saint"
            /// French (Madagascar) - français (Madagascar)
            case .frenchMadagascar: return "français (Madagascar)"
            /// French (Mali) - français (Mali)
            case .frenchMali: return "français (Mali)"
            /// French (Martinique) - français (Martinique)
            case .frenchMartinique: return "français (Martinique)"
            /// French (Mauritania) - français (Mauritanie)
            case .frenchMauritania: return "français (Mauritanie)"
            /// French (Mauritius) - français (Maurice)
            case .frenchMauritius: return "français (Maurice)"
            /// French (New Caledonia) - français (Nouvelle-Calédonie)
            case .frenchNewCaledonia: return "français (Nouvelle"
            /// French (Niger) - français (Niger)
            case .frenchNiger: return "français (Niger)"
            /// French (French Polynesia) - français (Polynésie française)
            case .frenchFrenchPolynesia: return "français (Polynésie française)"
            /// French (St. Pierre & Miquelon) - français (Saint-Pierre-et-Miquelon)
            case .frenchStPierreAndMiquelon: return "français (Saint"
            /// French (Réunion) - français (La Réunion)
            case .frenchRéunion: return "français (La Réunion)"
            /// French (Rwanda) - français (Rwanda)
            case .frenchRwanda: return "français (Rwanda)"
            /// French (Seychelles) - français (Seychelles)
            case .frenchSeychelles: return "français (Seychelles)"
            /// French (Senegal) - français (Sénégal)
            case .frenchSenegal: return "français (Sénégal)"
            /// French (Syria) - français (Syrie)
            case .frenchSyria: return "français (Syrie)"
            /// French (Chad) - français (Tchad)
            case .frenchChad: return "français (Tchad)"
            /// French (Togo) - français (Togo)
            case .frenchTogo: return "français (Togo)"
            /// French (Tunisia) - français (Tunisie)
            case .frenchTunisia: return "français (Tunisie)"
            /// French (Vanuatu) - français (Vanuatu)
            case .frenchVanuatu: return "français (Vanuatu)"
            /// French (Wallis & Futuna) - français (Wallis-et-Futuna)
            case .frenchWallisAndFutuna: return "français (Wallis"
            /// French (Mayotte) - français (Mayotte)
            case .frenchMayotte: return "français (Mayotte)"
            /// Friulian - furlan
            case .friulian: return "furlan"
            /// Friulian (Italy) - furlan (Italie)
            case .friulianItaly: return "furlan (Italie)"
            /// Western Frisian - Frysk
            case .westernFrisian: return "Frysk"
            /// Western Frisian (Netherlands) - Frysk (Nederlân)
            case .westernFrisianNetherlands: return "Frysk (Nederlân)"
            /// Irish - Gaeilge
            case .irish: return "Gaeilge"
            /// Irish (Ireland) - Gaeilge (Éire)
            case .irishIreland: return "Gaeilge (Éire)"
            /// Scottish Gaelic - Gàidhlig
            case .scottishGaelic: return "Gàidhlig"
            /// Scottish Gaelic (United Kingdom) - Gàidhlig (An Rìoghachd Aonaichte)
            case .scottishGaelicUnitedKingdom: return "Gàidhlig (An Rìoghachd Aonaichte)"
            /// Galician - galego
            case .galician: return "galego"
            /// Galician (Spain) - galego (España)
            case .galicianSpain: return "galego (España)"
            /// Swiss German - Schwiizertüütsch
            case .swissGerman: return "Schwiizertüütsch"
            /// Swiss German (Switzerland) - Schwiizertüütsch (Schwiiz)
            case .swissGermanSwitzerland: return "Schwiizertüütsch (Schwiiz)"
            /// Swiss German (France) - Schwiizertüütsch (Frankriich)
            case .swissGermanFrance: return "Schwiizertüütsch (Frankriich)"
            /// Swiss German (Liechtenstein) - Schwiizertüütsch (Liächteschtäi)
            case .swissGermanLiechtenstein: return "Schwiizertüütsch (Liächteschtäi)"
            /// Gujarati - ગુજરાતી
            case .gujarati: return "ગુજરાતી"
            /// Gujarati (India) - ગુજરાતી (ભારત)
            case .gujaratiIndia: return "ગુજરાતી (ભારત)"
            /// Gusii - Ekegusii
            case .gusii: return "Ekegusii"
            /// Gusii (Kenya) - Ekegusii (Kenya)
            case .gusiiKenya: return "Ekegusii (Kenya)"
            /// Manx - Gaelg
            case .manx: return "Gaelg"
            /// Manx (Isle of Man) - Gaelg (Ellan Vannin)
            case .manxIsleofMan: return "Gaelg (Ellan Vannin)"
            /// Hausa - Hausa
            case .hausa: return "Hausa"
            /// Hausa (Ghana) - Hausa (Gana)
            case .hausaGhana: return "Hausa (Gana)"
            /// Hausa (Niger) - Hausa (Nijar)
            case .hausaNiger: return "Hausa (Nijar)"
            /// Hausa (Nigeria) - Hausa (Najeriya)
            case .hausaNigeria: return "Hausa (Najeriya)"
            /// Hawaiian - ʻŌlelo Hawaiʻi
            case .hawaiian: return "ʻŌlelo Hawaiʻi"
            /// Hawaiian (United States) - ʻŌlelo Hawaiʻi (ʻAmelika Hui Pū ʻIa)
            case .hawaiianUnitedStates: return "ʻŌlelo Hawaiʻi (ʻAmelika Hui Pū ʻIa)"
            /// Hebrew - עברית
            case .hebrew: return "עברית"
            /// Hebrew (Israel) - עברית (ישראל)
            case .hebrewIsrael: return "עברית (ישראל)"
            /// Hindi - हिन्दी
            case .hindi: return "हिन्दी"
            /// Hindi (India) - हिन्दी (भारत)
            case .hindiIndia: return "हिन्दी (भारत)"
            /// Croatian - hrvatski
            case .croatian: return "hrvatski"
            /// Croatian (Bosnia & Herzegovina) - hrvatski (Bosna i Hercegovina)
            case .croatianBosniaAndHerzegovina: return "hrvatski (Bosna i Hercegovina)"
            /// Croatian (Croatia) - hrvatski (Hrvatska)
            case .croatianCroatia: return "hrvatski (Hrvatska)"
            /// Upper Sorbian - hornjoserbšćina
            case .upperSorbian: return "hornjoserbšćina"
            /// Upper Sorbian (Germany) - hornjoserbšćina (Němska)
            case .upperSorbianGermany: return "hornjoserbšćina (Němska)"
            /// Hungarian - magyar
            case .hungarian: return "magyar"
            /// Hungarian (Hungary) - magyar (Magyarország)
            case .hungarianHungary: return "magyar (Magyarország)"
            /// Armenian - հայերեն
            case .armenian: return "հայերեն"
            /// Armenian (Armenia) - հայերեն (Հայաստան)
            case .armenianArmenia: return "հայերեն (Հայաստան)"
            /// Indonesian - Indonesia
            case .indonesian: return "Indonesia"
            /// Indonesian (Indonesia) - Indonesia (Indonesia)
            case .indonesianIndonesia: return "Indonesia (Indonesia)"
            /// Igbo - Igbo
            case .igbo: return "Igbo"
            /// Igbo (Nigeria) - Igbo (Naịjịrịa)
            case .igboNigeria: return "Igbo (Naịjịrịa)"
            /// Sichuan Yi - ꆈꌠꉙ
            case .sichuanYi: return "ꆈꌠꉙ"
            /// Sichuan Yi (China) - ꆈꌠꉙ (ꍏꇩ)
            case .sichuanYiChina: return "ꆈꌠꉙ (ꍏꇩ)"
            /// Icelandic - íslenska
            case .icelandic: return "íslenska"
            /// Icelandic (Iceland) - íslenska (Ísland)
            case .icelandicIceland: return "íslenska (Ísland)"
            /// Italian - italiano
            case .italian: return "italiano"
            /// Italian (Switzerland) - italiano (Svizzera)
            case .italianSwitzerland: return "italiano (Svizzera)"
            /// Italian (Italy) - italiano (Italia)
            case .italianItaly: return "italiano (Italia)"
            /// Italian (San Marino) - italiano (San Marino)
            case .italianSanMarino: return "italiano (San Marino)"
            /// Italian (Vatican City) - italiano (Città del Vaticano)
            case .italianVaticanCity: return "italiano (Città del Vaticano)"
            /// Japanese - 日本語
            case .japanese: return "日本語"
            /// Japanese (Japan) - 日本語 (日本)
            case .japaneseJapan: return "日本語 (日本)"
            /// Ngomba - Ndaꞌa
            case .ngomba: return "Ndaꞌa"
            /// Ngomba (Cameroon) - Ndaꞌa (Kamɛlûn)
            case .ngombaCameroon: return "Ndaꞌa (Kamɛlûn)"
            /// Machame - Kimachame
            case .machame: return "Kimachame"
            /// Machame (Tanzania) - Kimachame (Tanzania)
            case .machameTanzania: return "Kimachame (Tanzania)"
            /// Georgian - ქართული
            case .georgian: return "ქართული"
            /// Georgian (Georgia) - ქართული (საქართველო)
            case .georgianGeorgia: return "ქართული (საქართველო)"
            /// Kabyle - Taqbaylit
            case .kabyle: return "Taqbaylit"
            /// Kabyle (Algeria) - Taqbaylit (Lezzayer)
            case .kabyleAlgeria: return "Taqbaylit (Lezzayer)"
            /// Kamba - Kikamba
            case .kamba: return "Kikamba"
            /// Kamba (Kenya) - Kikamba (Kenya)
            case .kambaKenya: return "Kikamba (Kenya)"
            /// Makonde - Chimakonde
            case .makonde: return "Chimakonde"
            /// Makonde (Tanzania) - Chimakonde (Tanzania)
            case .makondeTanzania: return "Chimakonde (Tanzania)"
            /// Kabuverdianu - kabuverdianu
            case .kabuverdianu: return "kabuverdianu"
            /// Kabuverdianu (Cape Verde) - kabuverdianu (Kabu Verdi)
            case .kabuverdianuCapeVerde: return "kabuverdianu (Kabu Verdi)"
            /// Koyra Chiini - Koyra ciini
            case .koyraChiini: return "Koyra ciini"
            /// Koyra Chiini (Mali) - Koyra ciini (Maali)
            case .koyraChiiniMali: return "Koyra ciini (Maali)"
            /// Kikuyu - Gikuyu
            case .kikuyu: return "Gikuyu"
            /// Kikuyu (Kenya) - Gikuyu (Kenya)
            case .kikuyuKenya: return "Gikuyu (Kenya)"
            /// Kazakh - қазақ тілі
            case .kazakh: return "қазақ тілі"
            /// Kazakh (Kazakhstan) - қазақ тілі (Қазақстан)
            case .kazakhKazakhstan: return "қазақ тілі (Қазақстан)"
            /// Kako - kakɔ
            case .kako: return "kakɔ"
            /// Kako (Cameroon) - kakɔ (Kamɛrun)
            case .kakoCameroon: return "kakɔ (Kamɛrun)"
            /// Kalaallisut - kalaallisut
            case .kalaallisut: return "kalaallisut"
            /// Kalaallisut (Greenland) - kalaallisut (Kalaallit Nunaat)
            case .kalaallisutGreenland: return "kalaallisut (Kalaallit Nunaat)"
            /// Kalenjin - Kalenjin
            case .kalenjin: return "Kalenjin"
            /// Kalenjin (Kenya) - Kalenjin (Emetab Kenya)
            case .kalenjinKenya: return "Kalenjin (Emetab Kenya)"
            /// Khmer - ខ្មែរ
            case .khmer: return "ខ្មែរ"
            /// Khmer (Cambodia) - ខ្មែរ (កម្ពុជា)
            case .khmerCambodia: return "ខ្មែរ (កម្ពុជា)"
            /// Kannada - ಕನ್ನಡ
            case .kannada: return "ಕನ್ನಡ"
            /// Kannada (India) - ಕನ್ನಡ (ಭಾರತ)
            case .kannadaIndia: return "ಕನ್ನಡ (ಭಾರತ)"
            /// Korean - 한국어
            case .korean: return "한국어"
            /// Korean (North Korea) - 한국어(조선민주주의인민공화국)
            case .koreanNorthKorea: return "한국어(조선민주주의인민공화국)"
            /// Korean (South Korea) - 한국어(대한민국)
            case .koreanSouthKorea: return "한국어(대한민국)"
            /// Konkani - कोंकणी
            case .konkani: return "कोंकणी"
            /// Konkani (India) - कोंकणी (भारत)
            case .konkaniIndia: return "कोंकणी (भारत)"
            /// Kashmiri - کٲشُر
            case .kashmiri: return "کٲشُر"
            /// Kashmiri (India) - کٲشُر (ہِنٛدوستان)
            case .kashmiriIndia: return "کٲشُر (ہِنٛدوستان)"
            /// Shambala - Kishambaa
            case .shambala: return "Kishambaa"
            /// Shambala (Tanzania) - Kishambaa (Tanzania)
            case .shambalaTanzania: return "Kishambaa (Tanzania)"
            /// Bafia - rikpa
            case .bafia: return "rikpa"
            /// Bafia (Cameroon) - rikpa (kamɛrún)
            case .bafiaCameroon: return "rikpa (kamɛrún)"
            /// Colognian - Kölsch
            case .colognian: return "Kölsch"
            /// Colognian (Germany) - Kölsch en Doütschland
            case .colognianGermany: return "Kölsch en Doütschland"
            /// Cornish - kernewek
            case .cornish: return "kernewek"
            /// Cornish (United Kingdom) - kernewek (Rywvaneth Unys)
            case .cornishUnitedKingdom: return "kernewek (Rywvaneth Unys)"
            /// Kyrgyz - кыргызча
            case .kyrgyz: return "кыргызча"
            /// Kyrgyz (Kyrgyzstan) - кыргызча (Кыргызстан)
            case .kyrgyzKyrgyzstan: return "кыргызча (Кыргызстан)"
            /// Langi - Kɨlaangi
            case .langi: return "Kɨlaangi"
            /// Langi (Tanzania) - Kɨlaangi (Taansanía)
            case .langiTanzania: return "Kɨlaangi (Taansanía)"
            /// Luxembourgish - Lëtzebuergesch
            case .luxembourgish: return "Lëtzebuergesch"
            /// Luxembourgish (Luxembourg) - Lëtzebuergesch (Lëtzebuerg)
            case .luxembourgishLuxembourg: return "Lëtzebuergesch (Lëtzebuerg)"
            /// Ganda - Luganda
            case .ganda: return "Luganda"
            /// Ganda (Uganda) - Luganda (Yuganda)
            case .gandaUganda: return "Luganda (Yuganda)"
            /// Lakota - Lakȟólʼiyapi
            case .lakota: return "Lakȟólʼiyapi"
            /// Lakota (United States) - Lakȟólʼiyapi (Mílahaŋska Tȟamákȟočhe)
            case .lakotaUnitedStates: return "Lakȟólʼiyapi (Mílahaŋska Tȟamákȟočhe)"
            /// Lingala - lingála
            case .lingala: return "lingála"
            /// Lingala (Angola) - lingála (Angóla)
            case .lingalaAngola: return "lingála (Angóla)"
            /// Lingala (Congo - Kinshasa) - lingála (Republíki ya Kongó Demokratíki)
            case .lingalaCongoKinshasa: return "Kinshasa)"
            /// Lingala (Central African Republic) - lingála (Repibiki ya Afríka ya Káti)
            case .lingalaCentralAfricanRepublic: return "lingála (Repibiki ya Afríka ya Káti)"
            /// Lingala (Congo - Brazzaville) - lingála (Kongo)
            case .lingalaCongoBrazzaville: return "Brazzaville)"
            /// Lao - ລາວ
            case .lao: return "ລາວ"
            /// Lao (Laos) - ລາວ (ລາວ)
            case .laoLaos: return "ລາວ (ລາວ)"
            /// Northern Luri - لۊری شومالی
            case .northernLuri: return "لۊری شومالی"
            /// Northern Luri (Iraq) - لۊری شومالی (IQ)
            case .northernLuriIraq: return "لۊری شومالی (IQ)"
            /// Northern Luri (Iran) - لۊری شومالی (IR)
            case .northernLuriIran: return "لۊری شومالی (IR)"
            /// Lithuanian - lietuvių
            case .lithuanian: return "lietuvių"
            /// Lithuanian (Lithuania) - lietuvių (Lietuva)
            case .lithuanianLithuania: return "lietuvių (Lietuva)"
            /// Luba-Katanga - Tshiluba
            case .lubaKatanga: return "Tshiluba"
            /// Luba-Katanga (Congo - Kinshasa) - Tshiluba (Ditunga wa Kongu)
            case .lubaKatangaCongoKinshasa: return "Kinshasa)"
            /// Luo - Dholuo
            case .luo: return "Dholuo"
            /// Luo (Kenya) - Dholuo (Kenya)
            case .luoKenya: return "Dholuo (Kenya)"
            /// Luyia - Luluhia
            case .luyia: return "Luluhia"
            /// Luyia (Kenya) - Luluhia (Kenya)
            case .luyiaKenya: return "Luluhia (Kenya)"
            /// Latvian - latviešu
            case .latvian: return "latviešu"
            /// Latvian (Latvia) - latviešu (Latvija)
            case .latvianLatvia: return "latviešu (Latvija)"
            /// Masai - Maa
            case .masai: return "Maa"
            /// Masai (Kenya) - Maa (Kenya)
            case .masaiKenya: return "Maa (Kenya)"
            /// Masai (Tanzania) - Maa (Tansania)
            case .masaiTanzania: return "Maa (Tansania)"
            /// Meru - Kĩmĩrũ
            case .meru: return "Kĩmĩrũ"
            /// Meru (Kenya) - Kĩmĩrũ (Kenya)
            case .meruKenya: return "Kĩmĩrũ (Kenya)"
            /// Morisyen - kreol morisien
            case .morisyen: return "kreol morisien"
            /// Morisyen (Mauritius) - kreol morisien (Moris)
            case .morisyenMauritius: return "kreol morisien (Moris)"
            /// Malagasy - Malagasy
            case .malagasy: return "Malagasy"
            /// Malagasy (Madagascar) - Malagasy (Madagasikara)
            case .malagasyMadagascar: return "Malagasy (Madagasikara)"
            /// Makhuwa-Meetto - Makua
            case .makhuwaMeetto: return "Makua"
            /// Makhuwa-Meetto (Mozambique) - Makua (Umozambiki)
            case .makhuwaMeettoMozambique: return "Makua (Umozambiki)"
            /// Metaʼ - metaʼ
            case .metaʼ: return "metaʼ"
            /// Metaʼ (Cameroon) - metaʼ (Kamalun)
            case .metaʼCameroon: return "metaʼ (Kamalun)"
            /// Macedonian - македонски
            case .macedonian: return "македонски"
            /// Macedonian (Macedonia) - македонски (Македонија)
            case .macedonianMacedonia: return "македонски (Македонија)"
            /// Malayalam - മലയാളം
            case .malayalam: return "മലയാളം"
            /// Malayalam (India) - മലയാളം (ഇന്ത്യ)
            case .malayalamIndia: return "മലയാളം (ഇന്ത്യ)"
            /// Mongolian - монгол
            case .mongolian: return "монгол"
            /// Mongolian (Mongolia) - монгол (Монгол)
            case .mongolianMongolia: return "монгол (Монгол)"
            /// Marathi - मराठी
            case .marathi: return "मराठी"
            /// Marathi (India) - मराठी (भारत)
            case .marathiIndia: return "मराठी (भारत)"
            /// Malay - Melayu
            case .malay: return "Melayu"
            /// Malay (Brunei) - Melayu (Brunei)
            case .malayBrunei: return "Melayu (Brunei)"
            /// Malay (Malaysia) - Melayu (Malaysia)
            case .malayMalaysia: return "Melayu (Malaysia)"
            /// Malay (Singapore) - Melayu (Singapura)
            case .malaySingapore: return "Melayu (Singapura)"
            /// Maltese - Malti
            case .maltese: return "Malti"
            /// Maltese (Malta) - Malti (Malta)
            case .malteseMalta: return "Malti (Malta)"
            /// Mundang - MUNDAŊ
            case .mundang: return "MUNDAŊ"
            /// Mundang (Cameroon) - MUNDAŊ (kameruŋ)
            case .mundangCameroon: return "MUNDAŊ (kameruŋ)"
            /// Burmese - မြန်မာ
            case .burmese: return "မြန်မာ"
            /// Burmese (Myanmar [Burma]) - မြန်မာ (မြန်မာ)
            case .burmeseMyanmarBurma: return "မြန်မာ (မြန်မာ)"
            /// Mazanderani - مازرونی
            case .mazanderani: return "مازرونی"
            /// Mazanderani (Iran) - مازرونی (ایران)
            case .mazanderaniIran: return "مازرونی (ایران)"
            /// Nama - Khoekhoegowab
            case .nama: return "Khoekhoegowab"
            /// Nama (Namibia) - Khoekhoegowab (Namibiab)
            case .namaNamibia: return "Khoekhoegowab (Namibiab)"
            /// Norwegian Bokmål - norsk bokmål
            case .norwegianBokmål: return "norsk bokmål"
            /// Norwegian Bokmål (Norway) - norsk bokmål (Norge)
            case .norwegianBokmålNorway: return "norsk bokmål (Norge)"
            /// Norwegian Bokmål (Svalbard & Jan Mayen) - norsk bokmål (Svalbard og Jan Mayen)
            case .norwegianBokmålSvalbardAndJanMayen: return "norsk bokmål (Svalbard og Jan Mayen)"
            /// North Ndebele - isiNdebele
            case .northNdebele: return "isiNdebele"
            /// North Ndebele (Zimbabwe) - isiNdebele (Zimbabwe)
            case .northNdebeleZimbabwe: return "isiNdebele (Zimbabwe)"
            /// Low German - nds
            case .lowGerman: return "nds"
            /// Low German (Germany) - nds (DE)
            case .lowGermanGermany: return "nds (DE)"
            /// Low German (Netherlands) - nds (NL) - Low Saxon
            case .lowGermanNetherlands: return "nds (NL)"
            /// Nepali - नेपाली
            case .nepali: return "नेपाली"
            /// Nepali (India) - नेपाली (भारत)
            case .nepaliIndia: return "नेपाली (भारत)"
            /// Nepali (Nepal) - नेपाली (नेपाल)
            case .nepaliNepal: return "नेपाली (नेपाल)"
            /// Dutch - Nederlands
            case .dutch: return "Nederlands"
            /// Dutch (Aruba) - Nederlands (Aruba)
            case .dutchAruba: return "Nederlands (Aruba)"
            /// Dutch (Belgium) - Nederlands (België) - Flemish
            case .dutchBelgium: return "Nederlands (België)"
            /// Dutch (Caribbean Netherlands) - Nederlands (Caribisch Nederland)
            case .dutchCaribbeanNetherlands: return "Nederlands (Caribisch Nederland)"
            /// Dutch (Curaçao) - Nederlands (Curaçao)
            case .dutchCuraçao: return "Nederlands (Curaçao)"
            /// Dutch (Netherlands) - Nederlands (Nederland)
            case .dutchNetherlands: return "Nederlands (Nederland)"
            /// Dutch (Suriname) - Nederlands (Suriname)
            case .dutchSuriname: return "Nederlands (Suriname)"
            /// Dutch (Sint Maarten) - Nederlands (Sint-Maarten)
            case .dutchSintMaarten: return "Nederlands (Sint"
            /// Kwasio - nmg
            case .kwasio: return "nmg"
            /// Kwasio (Cameroon) - nmg (Kamerun)
            case .kwasioCameroon: return "nmg (Kamerun)"
            /// Norwegian Nynorsk - nynorsk
            case .norwegianNynorsk: return "nynorsk"
            /// Norwegian Nynorsk (Norway) - nynorsk (Noreg)
            case .norwegianNynorskNorway: return "nynorsk (Noreg)"
            /// Ngiemboon - Shwóŋò ngiembɔɔn
            case .ngiemboon: return "Shwóŋò ngiembɔɔn"
            /// Ngiemboon (Cameroon) - Shwóŋò ngiembɔɔn (Kàmalûm)
            case .ngiemboonCameroon: return "Shwóŋò ngiembɔɔn (Kàmalûm)"
            /// Nuer - Thok Nath
            case .nuer: return "Thok Nath"
            /// Nuer (South Sudan) - Thok Nath (SS)
            case .nuerSouthSudan: return "Thok Nath (SS)"
            /// Nyankole - Runyankore
            case .nyankole: return "Runyankore"
            /// Nyankole (Uganda) - Runyankore (Uganda)
            case .nyankoleUganda: return "Runyankore (Uganda)"
            /// Oromo - Oromoo
            case .oromo: return "Oromoo"
            /// Oromo (Ethiopia) - Oromoo (Itoophiyaa)
            case .oromoEthiopia: return "Oromoo (Itoophiyaa)"
            /// Oromo (Kenya) - Oromoo (Keeniyaa)
            case .oromoKenya: return "Oromoo (Keeniyaa)"
            /// Odia - ଓଡ଼ିଆ
            case .odia: return "ଓଡ଼ିଆ"
            /// Odia (India) - ଓଡ଼ିଆ (ଭାରତ)
            case .odiaIndia: return "ଓଡ଼ିଆ (ଭାରତ)"
            /// Ossetic - ирон
            case .ossetic: return "ирон"
            /// Ossetic (Georgia) - ирон (Гуырдзыстон)
            case .osseticGeorgia: return "ирон (Гуырдзыстон)"
            /// Ossetic (Russia) - ирон (Уӕрӕсе)
            case .osseticRussia: return "ирон (Уӕрӕсе)"
            /// Punjabi - ਪੰਜਾਬੀ
            case .punjabi: return "ਪੰਜਾਬੀ"
            /// Punjabi (Arabic) - پنجابی (عربی)
            case .punjabiArabic: return "پنجابی (عربی)"
            /// Punjabi (Arabic, Pakistan) - پنجابی (عربی, پاکستان)
            case .punjabiArabicPakistan: return "پنجابی (عربی, پاکستان)"
            /// Punjabi (Gurmukhi) - ਪੰਜਾਬੀ (ਗੁਰਮੁਖੀ)
            case .punjabiGurmukhi: return "ਪੰਜਾਬੀ (ਗੁਰਮੁਖੀ)"
            /// Punjabi (Gurmukhi, India) - ਪੰਜਾਬੀ (ਗੁਰਮੁਖੀ, ਭਾਰਤ)
            case .punjabiGurmukhiIndia: return "ਪੰਜਾਬੀ (ਗੁਰਮੁਖੀ, ਭਾਰਤ)"
            /// Polish - polski
            case .polish: return "polski"
            /// Polish (Poland) - polski (Polska)
            case .polishPoland: return "polski (Polska)"
            /// Pashto - پښتو
            case .pashto: return "پښتو"
            /// Pashto (Afghanistan) - پښتو (افغانستان)
            case .pashtoAfghanistan: return "پښتو (افغانستان)"
            /// Portuguese - português
            case .portuguese: return "português"
            /// Portuguese (Angola) - português (Angola)
            case .portugueseAngola: return "português (Angola)"
            /// Portuguese (Brazil) - português (Brasil) - Brazilian Portuguese
            case .portugueseBrazil: return "português (Brasil)"
            /// Portuguese (Switzerland) - português (Suíça)
            case .portugueseSwitzerland: return "português (Suíça)"
            /// Portuguese (Cape Verde) - português (Cabo Verde)
            case .portugueseCapeVerde: return "português (Cabo Verde)"
            /// Portuguese (Equatorial Guinea) - português (Guiné Equatorial)
            case .portugueseEquatorialGuinea: return "português (Guiné Equatorial)"
            /// Portuguese (Guinea-Bissau) - português (Guiné-Bissau)
            case .portugueseGuineaBissau: return "português (Guiné"
            /// Portuguese (Luxembourg) - português (Luxemburgo)
            case .portugueseLuxembourg: return "português (Luxemburgo)"
            /// Portuguese (Macau SAR China) - português (Macau, RAE da China)
            case .portugueseMacauSARChina: return "português (Macau, RAE da China)"
            /// Portuguese (Mozambique) - português (Moçambique)
            case .portugueseMozambique: return "português (Moçambique)"
            /// Portuguese (Portugal) - português (Portugal) - European Portuguese
            case .portuguesePortugal: return "português (Portugal)"
            /// Portuguese (São Tomé & Príncipe) - português (São Tomé e Príncipe)
            case .portugueseSãoToméAndPríncipe: return "português (São Tomé e Príncipe)"
            /// Portuguese (Timor-Leste) - português (Timor-Leste)
            case .portugueseTimorLeste: return "português (Timor"
            /// Quechua - Runasimi
            case .quechua: return "Runasimi"
            /// Quechua (Bolivia) - Runasimi (Bolivia)
            case .quechuaBolivia: return "Runasimi (Bolivia)"
            /// Quechua (Ecuador) - Runasimi (Ecuador)
            case .quechuaEcuador: return "Runasimi (Ecuador)"
            /// Quechua (Peru) - Runasimi (Perú)
            case .quechuaPeru: return "Runasimi (Perú)"
            /// Romansh - rumantsch
            case .romansh: return "rumantsch"
            /// Romansh (Switzerland) - rumantsch (Svizra)
            case .romanshSwitzerland: return "rumantsch (Svizra)"
            /// Rundi - Ikirundi
            case .rundi: return "Ikirundi"
            /// Rundi (Burundi) - Ikirundi (Uburundi)
            case .rundiBurundi: return "Ikirundi (Uburundi)"
            /// Romanian - română
            case .romanian: return "română"
            /// Romanian (Moldova) - română (Republica Moldova) - Moldavian
            case .romanianMoldova: return "română (Republica Moldova)"
            /// Romanian (Romania) - română (România)
            case .romanianRomania: return "română (România)"
            /// Rombo - Kihorombo
            case .rombo: return "Kihorombo"
            /// Rombo (Tanzania) - Kihorombo (Tanzania)
            case .romboTanzania: return "Kihorombo (Tanzania)"
            /// Russian - русский
            case .russian: return "русский"
            /// Russian (Belarus) - русский (Беларусь)
            case .russianBelarus: return "русский (Беларусь)"
            /// Russian (Kyrgyzstan) - русский (Киргизия)
            case .russianKyrgyzstan: return "русский (Киргизия)"
            /// Russian (Kazakhstan) - русский (Казахстан)
            case .russianKazakhstan: return "русский (Казахстан)"
            /// Russian (Moldova) - русский (Молдова)
            case .russianMoldova: return "русский (Молдова)"
            /// Russian (Russia) - русский (Россия)
            case .russianRussia: return "русский (Россия)"
            /// Russian (Ukraine) - русский (Украина)
            case .russianUkraine: return "русский (Украина)"
            /// Kinyarwanda - Kinyarwanda
            case .kinyarwanda: return "Kinyarwanda"
            /// Kinyarwanda (Rwanda) - Kinyarwanda (U Rwanda)
            case .kinyarwandaRwanda: return "Kinyarwanda (U Rwanda)"
            /// Rwa - Kiruwa
            case .rwa: return "Kiruwa"
            /// Rwa (Tanzania) - Kiruwa (Tanzania)
            case .rwaTanzania: return "Kiruwa (Tanzania)"
            /// Sakha - саха тыла
            case .sakha: return "саха тыла"
            /// Sakha (Russia) - саха тыла (Арассыыйа)
            case .sakhaRussia: return "саха тыла (Арассыыйа)"
            /// Samburu - Kisampur
            case .samburu: return "Kisampur"
            /// Samburu (Kenya) - Kisampur (Kenya)
            case .samburuKenya: return "Kisampur (Kenya)"
            /// Sangu - Ishisangu
            case .sangu: return "Ishisangu"
            /// Sangu (Tanzania) - Ishisangu (Tansaniya)
            case .sanguTanzania: return "Ishisangu (Tansaniya)"
            /// Northern Sami - davvisámegiella
            case .northernSami: return "davvisámegiella"
            /// Northern Sami (Finland) - davvisámegiella (Suopma)
            case .northernSamiFinland: return "davvisámegiella (Suopma)"
            /// Northern Sami (Norway) - davvisámegiella (Norga)
            case .northernSamiNorway: return "davvisámegiella (Norga)"
            /// Northern Sami (Sweden) - davvisámegiella (Ruoŧŧa)
            case .northernSamiSweden: return "davvisámegiella (Ruoŧŧa)"
            /// Sena - sena
            case .sena: return "sena"
            /// Sena (Mozambique) - sena (Moçambique)
            case .senaMozambique: return "sena (Moçambique)"
            /// Koyraboro Senni - Koyraboro senni
            case .koyraboroSenni: return "Koyraboro senni"
            /// Koyraboro Senni (Mali) - Koyraboro senni (Maali)
            case .koyraboroSenniMali: return "Koyraboro senni (Maali)"
            /// Sango - Sängö
            case .sango: return "Sängö"
            /// Sango (Central African Republic) - Sängö (Ködörösêse tî Bêafrîka)
            case .sangoCentralAfricanRepublic: return "Sängö (Ködörösêse tî Bêafrîka)"
            /// Tachelhit - ⵜⴰⵛⵍⵃⵉⵜ
            case .tachelhit: return "ⵜⴰⵛⵍⵃⵉⵜ"
            /// Tachelhit (Latin) - Tashelḥiyt (Latn)
            case .tachelhitLatin: return "Tashelḥiyt (Latn)"
            /// Tachelhit (Latin, Morocco) - Tashelḥiyt (Latn, lmɣrib)
            case .tachelhitLatinMorocco: return "Tashelḥiyt (Latn, lmɣrib)"
            /// Tachelhit (Tifinagh) - ⵜⴰⵛⵍⵃⵉⵜ (Tfng)
            case .tachelhitTifinagh: return "ⵜⴰⵛⵍⵃⵉⵜ (Tfng)"
            /// Tachelhit (Tifinagh, Morocco) - ⵜⴰⵛⵍⵃⵉⵜ (Tfng, ⵍⵎⵖⵔⵉⴱ)
            case .tachelhitTifinaghMorocco: return "ⵜⴰⵛⵍⵃⵉⵜ (Tfng, ⵍⵎⵖⵔⵉⴱ)"
            /// Sinhala - සිංහල
            case .sinhala: return "සිංහල"
            /// Sinhala (Sri Lanka) - සිංහල (ශ්‍රී ලංකාව)
            case .sinhalaSriLanka: return "සිංහල (ශ්‍රී ලංකාව)"
            /// Slovak - slovenčina
            case .slovak: return "slovenčina"
            /// Slovak (Slovakia) - slovenčina (Slovensko)
            case .slovakSlovakia: return "slovenčina (Slovensko)"
            /// Slovenian - slovenščina
            case .slovenian: return "slovenščina"
            /// Slovenian (Slovenia) - slovenščina (Slovenija)
            case .slovenianSlovenia: return "slovenščina (Slovenija)"
            /// Inari Sami - anarâškielâ
            case .inariSami: return "anarâškielâ"
            /// Inari Sami (Finland) - anarâškielâ (Suomâ)
            case .inariSamiFinland: return "anarâškielâ (Suomâ)"
            /// Shona - chiShona
            case .shona: return "chiShona"
            /// Shona (Zimbabwe) - chiShona (Zimbabwe)
            case .shonaZimbabwe: return "chiShona (Zimbabwe)"
            /// Somali - Soomaali
            case .somali: return "Soomaali"
            /// Somali (Djibouti) - Soomaali (Jabuuti)
            case .somaliDjibouti: return "Soomaali (Jabuuti)"
            /// Somali (Ethiopia) - Soomaali (Itoobiya)
            case .somaliEthiopia: return "Soomaali (Itoobiya)"
            /// Somali (Kenya) - Soomaali (Kiiniya)
            case .somaliKenya: return "Soomaali (Kiiniya)"
            /// Somali (Somalia) - Soomaali (Soomaaliya)
            case .somaliSomalia: return "Soomaali (Soomaaliya)"
            /// Albanian - shqip
            case .albanian: return "shqip"
            /// Albanian (Albania) - shqip (Shqipëri)
            case .albanianAlbania: return "shqip (Shqipëri)"
            /// Albanian (Macedonia) - shqip (Maqedoni)
            case .albanianMacedonia: return "shqip (Maqedoni)"
            /// Albanian (Kosovo) - shqip (Kosovë)
            case .albanianKosovo: return "shqip (Kosovë)"
            /// Serbian - српски
            case .serbian: return "српски"
            /// Serbian (Cyrillic) - српски (ћирилица)
            case .serbianCyrillic: return "српски (ћирилица)"
            /// Serbian (Cyrillic, Bosnia & Herzegovina) - српски (ћирилица, Босна и Херцеговина)
            case .serbianCyrillicBosniaAndHerzegovina: return "српски (ћирилица, Босна и Херцеговина)"
            /// Serbian (Cyrillic, Montenegro) - српски (ћирилица, Црна Гора)
            case .serbianCyrillicMontenegro: return "српски (ћирилица, Црна Гора)"
            /// Serbian (Cyrillic, Serbia) - српски (ћирилица, Србија)
            case .serbianCyrillicSerbia: return "српски (ћирилица, Србија)"
            /// Serbian (Cyrillic, Kosovo) - српски (ћирилица, Косово)
            case .serbianCyrillicKosovo: return "српски (ћирилица, Косово)"
            /// Serbian (Latin) - srpski (latinica)
            case .serbianLatin: return "srpski (latinica)"
            /// Serbian (Latin, Bosnia & Herzegovina) - srpski (latinica, Bosna i Hercegovina)
            case .serbianLatinBosniaAndHerzegovina: return "srpski (latinica, Bosna i Hercegovina)"
            /// Serbian (Latin, Montenegro) - srpski (latinica, Crna Gora)
            case .serbianLatinMontenegro: return "srpski (latinica, Crna Gora)"
            /// Serbian (Latin, Serbia) - srpski (latinica, Srbija)
            case .serbianLatinSerbia: return "srpski (latinica, Srbija)"
            /// Serbian (Latin, Kosovo) - srpski (latinica, Kosovo)
            case .serbianLatinKosovo: return "srpski (latinica, Kosovo)"
            /// Swedish - svenska
            case .swedish: return "svenska"
            /// Swedish (Åland Islands) - svenska (Åland)
            case .swedishÅlandIslands: return "svenska (Åland)"
            /// Swedish (Finland) - svenska (Finland)
            case .swedishFinland: return "svenska (Finland)"
            /// Swedish (Sweden) - svenska (Sverige)
            case .swedishSweden: return "svenska (Sverige)"
            /// Swahili - Kiswahili
            case .swahili: return "Kiswahili"
            /// Swahili (Congo - Kinshasa) - Kiswahili (Jamhuri ya Kidemokrasia ya Kongo) - Congo Swahili
            case .swahiliCongoKinshasa: return "Kinshasa)"
            /// Swahili (Kenya) - Kiswahili (Kenya)
            case .swahiliKenya: return "Kiswahili (Kenya)"
            /// Swahili (Tanzania) - Kiswahili (Tanzania)
            case .swahiliTanzania: return "Kiswahili (Tanzania)"
            /// Swahili (Uganda) - Kiswahili (Uganda)
            case .swahiliUganda: return "Kiswahili (Uganda)"
            /// Tamil - தமிழ்
            case .tamil: return "தமிழ்"
            /// Tamil (India) - தமிழ் (இந்தியா)
            case .tamilIndia: return "தமிழ் (இந்தியா)"
            /// Tamil (Sri Lanka) - தமிழ் (இலங்கை)
            case .tamilSriLanka: return "தமிழ் (இலங்கை)"
            /// Tamil (Malaysia) - தமிழ் (மலேசியா)
            case .tamilMalaysia: return "தமிழ் (மலேசியா)"
            /// Tamil (Singapore) - தமிழ் (சிங்கப்பூர்)
            case .tamilSingapore: return "தமிழ் (சிங்கப்பூர்)"
            /// Telugu - తెలుగు
            case .telugu: return "తెలుగు"
            /// Telugu (India) - తెలుగు (భారతదేశం)
            case .teluguIndia: return "తెలుగు (భారతదేశం)"
            /// Teso - Kiteso
            case .teso: return "Kiteso"
            /// Teso (Kenya) - Kiteso (Kenia)
            case .tesoKenya: return "Kiteso (Kenia)"
            /// Teso (Uganda) - Kiteso (Uganda)
            case .tesoUganda: return "Kiteso (Uganda)"
            /// Tajik - тоҷикӣ
            case .tajik: return "тоҷикӣ"
            /// Tajik (Tajikistan) - тоҷикӣ (Тоҷикистон)
            case .tajikTajikistan: return "тоҷикӣ (Тоҷикистон)"
            /// Thai - ไทย
            case .thai: return "ไทย"
            /// Thai (Thailand) - ไทย (ไทย)
            case .thaiThailand: return "ไทย (ไทย)"
            /// Tigrinya - ትግርኛ
            case .tigrinya: return "ትግርኛ"
            /// Tigrinya (Eritrea) - ትግርኛ (ኤርትራ)
            case .tigrinyaEritrea: return "ትግርኛ (ኤርትራ)"
            /// Tigrinya (Ethiopia) - ትግርኛ (ኢትዮጵያ)
            case .tigrinyaEthiopia: return "ትግርኛ (ኢትዮጵያ)"
            /// Tongan - lea fakatonga
            case .tongan: return "lea fakatonga"
            /// Tongan (Tonga) - lea fakatonga (Tonga)
            case .tonganTonga: return "lea fakatonga (Tonga)"
            /// Turkish - Türkçe
            case .turkish: return "Türkçe"
            /// Turkish (Cyprus) - Türkçe (Kıbrıs)
            case .turkishCyprus: return "Türkçe (Kıbrıs)"
            /// Turkish (Turkey) - Türkçe (Türkiye)
            case .turkishTurkey: return "Türkçe (Türkiye)"
            /// Tatar - татар
            case .tatar: return "татар"
            /// Tatar (Russia) - татар (Россия)
            case .tatarRussia: return "татар (Россия)"
            /// Tasawaq - Tasawaq senni
            case .tasawaq: return "Tasawaq senni"
            /// Tasawaq (Niger) - Tasawaq senni (Nižer)
            case .tasawaqNiger: return "Tasawaq senni (Nižer)"
            /// Central Atlas Tamazight - Tamaziɣt n laṭlaṣ
            case .centralAtlasTamazight: return "Tamaziɣt n laṭlaṣ"
            /// Central Atlas Tamazight (Morocco) - Tamaziɣt n laṭlaṣ (Meṛṛuk)
            case .centralAtlasTamazightMorocco: return "Tamaziɣt n laṭlaṣ (Meṛṛuk)"
            /// Uyghur - ئۇيغۇرچە
            case .uyghur: return "ئۇيغۇرچە"
            /// Uyghur (China) - ئۇيغۇرچە (جۇڭگو)
            case .uyghurChina: return "ئۇيغۇرچە (جۇڭگو)"
            /// Ukrainian - українська
            case .ukrainian: return "українська"
            /// Ukrainian (Ukraine) - українська (Україна)
            case .ukrainianUkraine: return "українська (Україна)"
            /// Urdu - اردو
            case .urdu: return "اردو"
            /// Urdu (India) - اردو (بھارت)
            case .urduIndia: return "اردو (بھارت)"
            /// Urdu (Pakistan) - اردو (پاکستان)
            case .urduPakistan: return "اردو (پاکستان)"
            /// Uzbek - o‘zbek
            case .uzbek: return "o‘zbek"
            /// Uzbek (Arabic) - اوزبیک (عربی)
            case .uzbekArabic: return "اوزبیک (عربی)"
            /// Uzbek (Arabic, Afghanistan) - اوزبیک (عربی, افغانستان)
            case .uzbekArabicAfghanistan: return "اوزبیک (عربی, افغانستان)"
            /// Uzbek (Cyrillic) - ўзбекча (Кирил)
            case .uzbekCyrillic: return "ўзбекча (Кирил)"
            /// Uzbek (Cyrillic, Uzbekistan) - ўзбекча (Кирил, Ўзбекистон)
            case .uzbekCyrillicUzbekistan: return "ўзбекча (Кирил, Ўзбекистон)"
            /// Uzbek (Latin) - o‘zbek (lotin)
            case .uzbekLatin: return "o‘zbek (lotin)"
            /// Uzbek (Latin, Uzbekistan) - o‘zbek (lotin, Oʻzbekiston)
            case .uzbekLatinUzbekistan: return "o‘zbek (lotin, Oʻzbekiston)"
            /// Vai - ꕙꔤ
            case .vai: return "ꕙꔤ"
            /// Vai (Latin) - Vai (Latn)
            case .vaiLatin: return "Vai (Latn)"
            /// Vai (Latin, Liberia) - Vai (Latn, Laibhiya)
            case .vaiLatinLiberia: return "Vai (Latn, Laibhiya)"
            /// Vai (Vai) - ꕙꔤ (Vaii)
            case .vaiVai: return "ꕙꔤ (Vaii)"
            /// Vai (Vai, Liberia) - ꕙꔤ (Vaii, ꕞꔤꔫꕩ)
            case .vaiVaiLiberia: return "ꕙꔤ (Vaii, ꕞꔤꔫꕩ)"
            /// Vietnamese - Tiếng Việt
            case .vietnamese: return "Tiếng Việt"
            /// Vietnamese (Vietnam) - Tiếng Việt (Việt Nam)
            case .vietnameseVietnam: return "Tiếng Việt (Việt Nam)"
            /// Vunjo - Kyivunjo
            case .vunjo: return "Kyivunjo"
            /// Vunjo (Tanzania) - Kyivunjo (Tanzania)
            case .vunjoTanzania: return "Kyivunjo (Tanzania)"
            /// Walser - Walser
            case .walser: return "Walser"
            /// Walser (Switzerland) - Walser (Schwiz)
            case .walserSwitzerland: return "Walser (Schwiz)"
            /// Wolof - Wolof
            case .wolof: return "Wolof"
            /// Wolof (Senegal) - Wolof (Senegaal)
            case .wolofSenegal: return "Wolof (Senegaal)"
            /// Soga - Olusoga
            case .soga: return "Olusoga"
            /// Soga (Uganda) - Olusoga (Yuganda)
            case .sogaUganda: return "Olusoga (Yuganda)"
            /// Yangben - nuasue
            case .yangben: return "nuasue"
            /// Yangben (Cameroon) - nuasue (Kemelún)
            case .yangbenCameroon: return "nuasue (Kemelún)"
            /// Yiddish - ייִדיש
            case .yiddish: return "ייִדיש"
            /// Yiddish (World) - ייִדיש (וועלט)
            case .yiddishWorld: return "ייִדיש (וועלט)"
            /// Yoruba - Èdè Yorùbá
            case .yoruba: return "Èdè Yorùbá"
            /// Yoruba (Benin) - Èdè Yorùbá (Orílɛ́ède Bɛ̀nɛ̀)
            case .yorubaBenin: return "Èdè Yorùbá (Orílɛ́ède Bɛ̀nɛ̀)"
            /// Yoruba (Nigeria) - Èdè Yorùbá (Orílẹ́ède Nàìjíríà)
            case .yorubaNigeria: return "Èdè Yorùbá (Orílẹ́ède Nàìjíríà)"
            /// Cantonese - 粵語
            case .cantonese: return "粵語"
            /// Cantonese (Simplified) - 粤语 (简体)
            case .cantoneseSimplified: return "粤语 (简体)"
            /// Cantonese (Simplified, China) - 粤语 (简体，中华人民共和国)
            case .cantoneseSimplifiedChina: return "粤语 (简体，中华人民共和国)"
            /// Cantonese (Traditional) - 粵語 (繁體)
            case .cantoneseTraditional: return "粵語 (繁體)"
            /// Cantonese (Traditional, Hong Kong SAR China) - 粵語 (繁體，中華人民共和國香港特別行政區)
            case .cantoneseTraditionalHongKongSARChina: return "粵語 (繁體，中華人民共和國香港特別行政區)"
            /// Standard Moroccan Tamazight - ⵜⴰⵎⴰⵣⵉⵖⵜ
            case .standardMoroccanTamazight: return "ⵜⴰⵎⴰⵣⵉⵖⵜ"
            /// Standard Moroccan Tamazight (Morocco) - ⵜⴰⵎⴰⵣⵉⵖⵜ (ⵍⵎⵖⵔⵉⴱ)
            case .standardMoroccanTamazightMorocco: return "ⵜⴰⵎⴰⵣⵉⵖⵜ (ⵍⵎⵖⵔⵉⴱ)"
            /// Chinese - 中文
            case .chinese: return "中文"
            /// Chinese (Simplified) - 中文（简体） - Simplified Chinese
            case .chineseSimplified: return "中文（简体）"
            /// Chinese (Simplified, China) - 中文（简体，中国） - Simplified Chinese (China)
            case .chineseSimplifiedChina: return "中文（简体，中国）"
            /// Chinese (Simplified, Hong Kong SAR China) - 中文（简体，中国香港特别行政区） - Simplified Chinese (Hong Kong SAR China)
            case .chineseSimplifiedHongKongSARChina: return "中文（简体，中国香港特别行政区）"
            /// Chinese (Simplified, Macau SAR China) - 中文（简体，中国澳门特别行政区） - Simplified Chinese (Macau SAR China)
            case .chineseSimplifiedMacauSARChina: return "中文（简体，中国澳门特别行政区）"
            /// Chinese (Simplified, Singapore) - 中文（简体，新加坡） - Simplified Chinese (Singapore)
            case .chineseSimplifiedSingapore: return "中文（简体，新加坡）"
            /// Chinese (Traditional) - 中文（繁體） - Traditional Chinese
            case .chineseTraditional: return "中文（繁體）"
            /// Chinese (Traditional, Hong Kong SAR China) - 中文（繁體字，中國香港特別行政區） - Traditional Chinese (Hong Kong SAR China)
            case .chineseTraditionalHongKongSARChina: return "中文（繁體字，中國香港特別行政區）"
            /// Chinese (Traditional, Macau SAR China) - 中文（繁體字，中國澳門特別行政區） - Traditional Chinese (Macau SAR China)
            case .chineseTraditionalMacauSARChina: return "中文（繁體字，中國澳門特別行政區）"
            /// Chinese (Traditional, Taiwan) - 中文（繁體，台灣） - Traditional Chinese (Taiwan)
            case .chineseTraditionalTaiwan: return "中文（繁體，台灣）"
            /// Zulu - isiZulu
            case .zulu: return "isiZulu"
            /// Zulu (South Africa) - isiZulu (iNingizimu Afrika)
            case .zuluSouthAfrica: return "isiZulu (iNingizimu Afrika)"
            default: break
        }
    }
}
