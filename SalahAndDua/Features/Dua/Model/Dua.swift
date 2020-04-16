//
//  Dua.swift
//  SalahAndDua
//
//  Created by MacBook Pro  on 14/4/20.
//  Copyright © 2020 LastBlade. All rights reserved.
//

import Foundation

struct Model {
    var duas : [Dua] {
        var duas_ = [Dua]()
        
        duas_.append(Dua(title: "Dua for forgiveness - Istighfar", detail: DuaDetail(duaArabic: """
         أسْتَغْفِرُ اللَّهَ
        \n
        2 No dua\n
        رَبَّنَآ إنَّنَآ ءَاَمنَّا فَاغْفِرْ لَنَا ذُنُوبَنَا وَ قِنَا عَذَابَ النَّارِ
                 \n
          3 no dua\n
        سُبْحَنَكَ تُبْتُ إلَيْكَ وَ أنَاْ أوَّلُ الْمُؤْمِنِينَ
         \n 4 no dua\n
        اللَّهُمَّ اغْفِرْ لِي ذَنْبِي كُلَّهُ، دِقَّهُ وَجِلَّهُ، وَأَوَّلَهُ وَآخِرَهُ وَعَلَانِيَتَهُ وَسِرَّهُ
                
        """, duaNote: "Recite 3 times after every fadr salah\nOthers dua can be recited anytime", reference: """
        Sahih Muslim 1/212\n
        2 no dua\n
            surah Ali' Imran; 3:16
            \n 3 no dua\n
            [surah al-A'raf, 7:143]
            \n
            4 no dua\n
            Muslim 1:350
        """, pronunciation: """
Astagfirullah\n
2 no dua\n
    Rabbana innanā amanna, faghfir lana, dhunoobana wa-qinna 'adhāāban-naar\n
    3 no dua\n
    Subhānaka tubtu ilaiyka wa 'ana awwal-ul mu'mineen
    \n
    4 no dua\n
    Allahumma-ghfir li dhanbi kullahu,
    diqqahu wa jillahu, wa awwalahu wa akhirahu, wa 'ala niyatahu wa sirrahu

""", translation: """
I ask Allah to forgive me\n
2 no dua\n
Our Lord!  we have indeed believed: forgive us, then,
    our sins, and save us from the agony of the Fire
\n
    3 no dua\n
Glory be to Thee!  To Thee I turn in repentance, and I am the first to believe)
    \n
    4 no dua\n
O Allah!  Forgive me all my sins, great and small,
    the first and the last, those that are apparent and those that are hidden

""", hadithOrBenefit: """
Ibn Abbas (R.A) said, The Messenger of Allah (S.A.W)
        said, “If anyone constantly seeks pardon from Allah, Allah will appoint for him a
        way out of every distress and a relief from every anxiety,
        and will provide sustenance for him from where he expects not”.
[Abu Dawud]\n\n
        O son of Adam, so long as you call upon Me and ask of Me,
            I shall forgive you for what you have done, and I shall
            not mind. O son of Adam, were your sins to reach the clouds
            of the sky and were you then to ask forgiveness of Me, I would forgive you.
[hadith Qudsi]
""")))
      
        
        duas_.append(Dua(title: "At the beginning of making wudu", detail:
            DuaDetail(duaArabic:  """
بِسْمِ اللَّهِ الرَّحْمَنِ الرَّحِيمِ
""", duaNote: "At the begining of making wudu", reference: "Mishkat", pronunciation:  "Bismillahir Rohmanir Rohim", translation: "I begin in the name of Allah, who is the Most Merciful, Most Gracious", hadithOrBenefit: """
It is stated in the hadith that one should begin wudhu with Allah\'s name.
No words have been specified and our elders read the above.
It is recorded in some ahadith that wudhu is valid although no "Bismillah" is recited
""")))


        duas_.append(Dua(title: "On completion of wudu", detail: DuaDetail(duaArabic: """
....1....\n
سُبْحَانَكَ اللَّهُمَّ وَبِحَمْدِكَ أَشْهَدُ أَنْ لَّا إِلَهَ إِلَّا أَنْتَ أَسْتَغْفِرُكَ وَأَتُوبَ إِلَيْكَ
        \n....2....\n
أَشْهَدُ أَنْ لَّا إِلَهَ إِلَّا اللَّهُ وَحْدَهُ لَا شَرِيكَ لَهُ وَأَشْهَدُ أَنَّ مُحَمَّدَاً عَبْدَهُ  وَرَسُولُهُ
\n .....3.....\n
اللَّهُمَّ اجْعَلْنِي مِنَ التَّوَّابِينَ وَاجْعَلْنِي مِنَ الْمُتَطَهِّرِينَ
""", duaNote: "On the Completion of wudu", reference: """
1. An-Nasa\'i, \'Amalul-Yawm wal-Laylah, p. 173. See also Al-Albani, \'Irwa\'ul-Ghalil
    1/135 and 2/94\n
2. Muslim 1/209\n
3. At-Tirmithi 1/78. See also Al-Albani, Sahih At- Tirmithi 1/18
""", pronunciation: """
1. Subhaanaka Allaahumma wa bihamdika, 'ash-hadu 'an laa 'ilaaha 'illaa \'Anta,
    'astaghfiruka wa 'atoobu 'ilayk\n
2. Ash-hadu 'an laa 'ilaaha 'illallaahu wahdahu
    laa shareeka lahu wa 'ash-hadu 'anna Muhammadan 'abduhu wa Rasooluhu\n
3. Allaahummaj'alnee minat-tawwaabeena waj'alnee minal-mutatahhireen
""", translation:  """
1. Glory is to You, O Allah, and praise; I bear witness that there
is none worthy of worship but You.
I seek Your forgiveness and turn to You in repentance\n
2. I bear witness that none has the right to be worshipped but Allah alone, Who has no partner;
and I bear witness that Muhammad is His slave and His Messenger.\n
3. O Allah, make me among those who turn to You in repentance,
and make me among those who are purified.
""", hadithOrBenefit: """
2. Eight doors of Jannah will be open for the reciter of this dua.
He will be able to enter from whichever door he pleases. (Mishkat).
It is recorded in the same narration that the dua should be recited three times.
(Hisnul Hasin)\n
3. After Dua 2,  this (3 No) dua should be recited (Hisnul Hasin)
""")))


        duas_.append(Dua(title: "When entering the Masjid", detail: DuaDetail(duaArabic: """
اللَّهُمَّ افْتَحْ لِي أَبْوَابَ رَحْمَتِك
""", duaNote: "When entering the Masjid", reference: "Mishkat", pronunciation: "Allohummaf tahli ab waba wa rohmatika"
, translation: "Allah, open the doors of mercy", hadithOrBenefit: """
Abu Usaid reported: The Messenger of Allah, peace and blessings
            be upon him, said, “When one of you enters the mosque, then let him say:
            O Allah, open for me the doors of your mercy. When he leaves,
            then let him say: O Allah, verily, I ask you for your favor.”
Source: Sahih Muslim 713
""")))


        duas_.append(Dua(title: "After completion of prayer in Masjid", detail: DuaDetail(duaArabic: """
سُبْحَانَ اللَّهِ وَالْحَمْدُ لِلَّهِ وَلَا إِلَهَ إِلَّا اللَّهُ وَاللَّهُ أَكْبَر
""",duaNote: "After completion of prayer in Masjid", reference: "Mishkat", pronunciation: "Subhanallohi wal hamdulillahi wala ilaha illallohu wallohu akbar", translation: "Allah is Pure and all Praise is to Him. Besides Him there is no one worthy of worship, He is the Greatest", hadithOrBenefit: """
The Messenger of Allah (peace and blessings of Allah be upon him) said:
All these words which is pronounced in my mouth, more favorite than those things
     which arise on the sun. (Muslim)
""")))

        duas_.append(Dua(title: "When coming out of the Masjid", detail: DuaDetail(duaArabic: """
رَبِّ اغْفِرْ لِي ذُنُوبِي وَافْتَحْ لِي أَبْوَابَ فَضْلِك
""", duaNote: "When coming out of the Masjid recite Durood and Salaam first and thereafter recite", reference: "Mishkat", pronunciation: "Robbig firli junubi waf tahli ab waba fadlika", translation: "O Lord, pardon my sins and open the doors of virtue for me", hadithOrBenefit: """
Faatimah (RA) reported that when Allahs Messenger (Sallallahu Alaihi Wasallam)
went out of the Masjid, he would supplicate for blessings and
    peace upon Muhammad (himself) and say: My Lord, forgive my sins and open unto
    me the doors of Your Bounty. (Muslim, Mishkaat,
    Chapter: of Masjid and the places of Salah.)
""")))

        duas_.append(Dua(title: "On hearing the Athan", detail: DuaDetail(duaArabic: """
               1 No Dua\n
               وَأَنَا أَشَهَدُ أَنْ لَا إِلَهَ إِلَّا اللهُ وَحْدَهُ لَا شَرِيكَ لَهُ وَأَنَّ مُحَمَّداً عَبْدُهُ وَرَسُولُهُ، رَضِيتُ بِاللهِ رَبَّاً وَبِمُحَمَّدٍ رِسُولاً وَبِالإِسلاَمِ دِيناً
               \n2 No Dua\n
               اللَّهُمَّ رَبَّ هَذِهِ الدَّعْوَةِ التَّامَّةِ، وَالصَّلاَةِ الْقَائِمَةِ، آتِ مُحَمَّداً الْوَسِيلَةَ وَالْفَضِيلَةَ، وَابْعَثْهُ مَقَامَاً مَحمُوداً الَّذِي وَعَدْتَهُ، إِنَّكَ لَا تُخْلِفُ الْمِيعَ
               \n3 No Dua\n
               Repeat what the Mu\'aththin says, except for when he says\n
               حَيَّ عَلَى الصَّلاَةِ وَحَيَّ عَلَى الْفَلَاحِ
               \n
               Hayya \'alas-Salaah (hasten to the prayer) and Hayya
               'alal-Falaah (hasten to salvation). Here you should say \n
               لَا حَوْلَ وَلَا قُوَّةَ إِلَّا بِاللهِ
               """, duaNote: "On hearing the Athan\n1 no dua To be recited in Arabic after the Mu'aththin’s Tashahhud or the words of affirmation of Faith", reference: """
1 No Dua\n
                            Muslim 1/290.\n
               Ibn Khuzaymah 1/220.
                       \n\n2 No Dua\n

               Al-Bukhari 1/152, and the addition between brackets
                           is from Al-Bayhaqi 1/410 with a good (Hasan)
                           chain of narration. See \'Abdul-Azlz bin Baz\'s Tuhfatul-\'Akhyar, pg. 38.
                           \n\n
                           3 No Dua\n
                           Al-Bukhari 1/152, Muslim 1/288.
""", pronunciation: """
1 No Dua\nWa 'anaa 'ash-hadu 'an laa 'ilaaha 'illallaahu
            wahdahu laa shareeka
            lahu wa 'anna Muhammadan 'abduhu wa Rasooluhu,
            radheetu billaahi Rabban, wa bi-Muhammadin Rasoolan wa
            bil'islaami deenan
            \n\n2 No Dua\n\n
            Allaahumma Rabba haathihid-da 'watit-taammati wassalaatil-qaa'imati,
            'aati Muhammadanil-waseelata walfadheelata, wab
            'ath-hu maqaamam-mahmoodanil-lathee wa\'adtahu,
            'innaka laa tukhliful-mee\'aad
            \n\n3 No Dua\n\n
Repeat what the Mu\'aththin says, except for when he says\n
            حَيَّ عَلَى الصَّلاَةِ وَحَيَّ عَلَى الْفَلَاحِ
        \n
         Hayya 'alas-Salaah (hasten to the prayer) and Hayya
            'alal-Falaah (hasten to salvation). Here you should say:  \n
            لَا حَوْلَ وَلَا قُوَّةَ إِلَّا بِاللهِ
        \n
            Laa hawla wa laa quwwata 'illaa billaah.
""", translation: """

1 No Dua\n
I bear witness that none has the right to be
    worshipped but Allah alone, Who has no partner,
    and that Muhammad is His slave and His Messenger.
    I am pleased with Allah as my Lord, with Muhammad
    as my Messenger and with Islam as my religion.
    \n Muslim 1/290
\n
2 No Dua\n\n
O Allah , Lord of this perfect call and established prayer.
    Grant Muhammad the intercession and favor, and raise him to
    the honored station You have promised him,
    [verily You do not neglect promises].
\n\n3 No Dua\n
    There is no might and no power except by Allah.
"""
, hadithOrBenefit: """
1 No Dua\n
Muslim 1/290.\n
Ibn Khuzaymah 1/220
       \n
       2 No Dua\n\n
       Al-Bukhari 1/152, and the addition between brackets
           is from Al-Bayhaqi 1/410 with a good (Hasan) chain of narration.
           See \'Abdul-Azlz bin Baz\'s Tuhfatul-\'Akhyar, pg. 38.
       \n\n
           3 No Dua\n
           Al-Bukhari 1/152, Muslim 1/288.
""")))


        duas_.append(Dua(title: "After Fajr and Maghrib Prayer", detail: DuaDetail(duaArabic: """
        اللَّهُمَّ أَجِرْنِي مِنَ النَّارِ
        """, duaNote: "After Fajr and Maghrib Prayer", reference: "Mishkat from Abu Dawood", pronunciation: "Allohumma ajirni minannar", translation: "O Allah, save me from the fire (Jahannam)", hadithOrBenefit: """
Muslim Taimi (R.A.) narrates from Prophet Mohammad (S.A.W.)
    to recite the following seven times before speaking to anyone.
If a person recites the above dua and dies the same night, he will be saved from Jahannam and if he recites it seven times after Fajr Salaat
    before speaking to anyone and if he dies on that same day,
    he will be saved from Jahannam (Mishkat from Abu Dawood)\n\n
In another hadith Prophet Mohammad (S.A.W.) stated that if a person recites
    the following dua 10 times while sitting in the Tashahudd position, then
    for each time ten rewards are written for him and ten sins are removed
    from the Name-Amal and he will be saved from every evil thing and
    the accursed Satan and no other sin besides shirk will be able
    to destroy him. In relation to actions, he will be superior to all other people.
    If anyone recites more than the above, he will go
    further and that is a different matter.
""")))

        

        duas_.append(Dua(title: "When breaking fast", detail: DuaDetail(duaArabic: """
        ....1....\n
        اللَّهُمَّ لَكَ صُمْتُ وَعَلَى رِزْقِكَ أَفْطَرْتُ
        \n....2....\n
        اللَّهُمَّ إِنِّي أَسْأَلُكَ بِرَحْمَتِكَ الَّتِي وَسِعَتْ كُلَّ شَيْءٍ أَنْ تَغْفِرَ لِي ذُنُوبِي
            بِسْمِ اللَّهِ الرَّحْمَنِ الرَّحِيم
        """, duaNote: "When breaking fast", reference: """
1. \n
Abu Dawud\n
2\n
Hisnul hasin
""", pronunciation: """
1. Allahumma inni laka sumtu wa bika aamantu wa alayka tawakkaltu wa ala rizq-ika-aftartu

\n
2.  Allahumma innee as'aluka bi-rahmatikal-latee wasi'ath kulla shai'in an taghfira lee junubi </item>

""", translation: """
1. O Allah, I have fasted for You and from the sustenance given by You, I break the fast\n
2. O Allah, I seek by your mercy which encompasses everything, that You forgive my sins.
""", hadithOrBenefit: """
The acceptance of Du’a at the time of Iftar\n
On the authority of Abu Hurayrah
            (May Allah be pleased with him)
            it is related that the Prophet (Peace be upon him) said,\n


“There are three people whose ‘Du’a’ is not
            rejected; the fasting person
            until he breaks the fast, the
            just ruler, and the oppressed
            person, whose Duaa Allah lifts
            above the clouds and opens unto it the doors of Jannah,
            and Allah says: “I swear by My Honour, verily
            I shall assist you, even though it may be after some time.”\n

[Ahmad and Tirmidhi]\n


In another hadith also on the authority of Abu
            Hurayrah (May Allah be pleased with him)
            it is related that the Prophet (Peace be upon him) said,\n


“Whatever is prayed for at the time of breaking the
            fast is granted and never refused.”
            [Tirmidhi]
""")))


        duas_.append(Dua(title: "After Iftaar", detail: DuaDetail(duaArabic: """
ذَهَبَ الظَّمَأُ وَابْتَلَّتِ الْعُرُوقُ وَثَبُتَ الْأَجْرُ إِنْ شَاءَ اللَّه
""", duaNote: "After Iftaar", reference: "Abu Dawood", pronunciation: "dhahabadh dhama-u wabtallatil ‘urooqu, wa tha-batal ajru insha Allah", translation: "The thirst has quenched and left wetness and with the will of Allah, reward is proven (certain)", hadithOrBenefit: """
The acceptance of Du’a at the time of Iftar\n


On the authority of Abu Hurayrah
            (May Allah be pleased with him)
            it is related that the Prophet (Peace be upon him) said,\n


“There are three people whose ‘Du’a’ is not
            rejected; the fasting person
            until he breaks the fast, the
            just ruler, and the oppressed
            person, whose Duaa Allah lifts
            above the clouds and opens unto it the doors of Jannah,
            and Allah says: “I swear by My Honour, verily
            I shall assist you, even though it may be after some time.”\n

[Ahmad and Tirmidhi]\n


In another hadith also on the authority of Abu
            Hurayrah (May Allah be pleased with him)
            it is related that the Prophet (Peace be upon him) said,\n


“Whatever is prayed for at the time of breaking the
            fast is granted and never refused.”
            [Tirmidhi]
""")))


        duas_.append(Dua(title: "Making Iftaar at someone\'s place", detail: DuaDetail(duaArabic: """
أَفْطَرَ عِنْدَكُمُ الصَّائِمُونَ وَأَكَلَ طَعَامَكُمُ الْأَبْرَارُ وَصَلَّتْ عَلَيْكُمُ الْمَلَائِكَة
""", duaNote: "Making Iftaar at someone\'s place", reference: "Hisnul Hasin, Ibn Maja", pronunciation: "afṭara ‛indakum-us-saa’imoona wa akala ṭa/‛aamakum-ul-abraaru, wa ṣallat ‛alaykum-ul-malaa’ikah", translation: "May the fasting persons make Iftari with you, the righteous partake in your meals and the angels send mercy on you", hadithOrBenefit: """
Offering foods to one\'s companions and friends is more
            meritorious than giving alms. Hadrat Ali stated:\n
"A meal I offer to my friends is more valuable than five loaves of
            bread I give to the poor. A meal that is eaten with
            friends is better than freeing a slave."\n

We should not say, "He does not invite me. Why will I invite him?"
            Our sole objective should be to seek the pleasure of
            Allah when we invite someone for a meal or when we accept
            someone\'s invitation for a meal.\n

One must not partake in an invitation if sins are committed where the
            meal is offered. It is conceit to refuse a poor person\'s
            invitation and to accept a rich one\'s. To visit those who
            are lower in rank than you is a sign of humility.\n

For a person invited, it is sunnat to attend a wedding banquet, and it
            is mustahab to attend other banquets. Some Islamic scholars
            stated, "It is wajib to go to a wedding banquet, and it is
            sunnat to go to other banquets."\n

One of the five rights of a Muslim over another Muslim is to accept
            his/her invitation, that is, to accept and attend it.
            It is declared in a hadith-i sharif, "Accept an invitation" (Muslim).
""")))
        
        duas_.append(Dua(title: "Al Quran: 2:127", detail: DuaDetail(duaArabic: """
رَبَّنَا تَقَبَّلۡ مِنَّآ‌ۖ إِنَّكَ أَنتَ ٱلسَّمِيعُ ٱلۡعَلِيمُ
""", duaNote: """
You can recite it anytime\n
You can recite when you sit for last tashahud\n
Or After Every Fadr Salah\n
Or After Zikir\n
Do not recite Quran when you are in Ruku or Sijdah
""", reference: "Al Quran: 2:127", pronunciation: "Rabbana taqabbal minna innaka antas Sameeaul Aleem", translation: "Our Lord! Accept (this service) from us: For Thou art the All-Hearing, the All-knowing ", hadithOrBenefit: "Al Quran: 2:127")))



        duas_.append(Dua(title: "Al Quran: 2:128", detail: DuaDetail(duaArabic: """
رَبَّنَا وَٱجۡعَلۡنَا مُسۡلِمَيۡنِ لَكَ وَمِن ذُرِّيَّتِنَآ أُمَّةً۬ مُّسۡلِمَةً۬ لَّكَ وَأَرِنَا مَنَاسِكَنَا وَتُبۡ عَلَيۡنَآ‌ۖ إِنَّكَ أَنتَ ٱلتَّوَّابُ ٱلرَّحِيم
""", duaNote:  """
You can recite it anytime\n
You can recite when you sit for last tashahud\n
Or After Every Fadr Salah\n
Or After Zikir\n
Do not recite Quran when you are in Ruku or Sijdah
""", reference: "Al Quran: 2:128", pronunciation: """
            Rabbana wa-j’alna Muslimayni laka ma min Dhurriyatina ‘Ummatan Muslimatan laka wa
            /‘Arina Manasikana wa tub alayna innaka antat-Tawwabu-Raheem
            """, translation: """
Our Lord! Make of us Muslims, bowing to Thy (Will), and of our progeny
a people Muslim, bowing to Thy (will); and show us our place for the celebration of (due)
rites; and turn unto us (in Mercy); for Thou art the Oft-Returning, Most Merciful
"""
, hadithOrBenefit: "Al Quran: 2:128")))

        duas_.append(Dua(title: "Al Quran: 2:201", detail: DuaDetail(duaArabic: """
رَبَّنَآ ءَاتِنَا فِى ٱلدُّنۡيَا حَسَنَةً۬ وَفِى ٱلۡأَخِرَةِ حَسَنَةً۬ وَقِنَا عَذَابَ ٱلنَّار
""", duaNote:  """
You can recite it anytime\n
You can recite when you sit for last tashahud\n
Or After Every Fadr Salah\n
Or After Zikir\n
Do not recite Quran when you are in Ruku or Sijdah
""", reference: "Al Quran: 2:201", pronunciation: "Rabbana atina fid-dunya hasanatan wa fil akhirati hasanatan waqina ‘adhaban-nar", translation: """
Our Lord! Grant us good in this world and
good in the hereafter, and save us from the chastisement of the fire
""", hadithOrBenefit: "Al Quran: 2:201")))

        duas_.append(Dua(title: "Al Quran: 2:250", detail: DuaDetail(duaArabic: """
رَبَّنَآ أَفۡرِغۡ عَلَيۡنَا صَبۡرً۬ا وَثَبِّتۡ أَقۡدَامَنَا وَٱنصُرۡنَا عَلَى ٱلۡقَوۡمِ ٱلۡڪَـٰفِرِين
""", duaNote:  """
You can recite it anytime\n
You can recite when you sit for last tashahud\n
Or After Every Fadr Salah\n
Or After Zikir\n
Do not recite Quran when you are in Ruku or Sijdah
""", reference: "Al Quran: 2:250", pronunciation: "Rabbana afrigh alayna sabran wa thabbit aqdamana wansurna alal-qawmil-kafirin", translation: """
Our Lord! Bestow on us endurance, make our foothold sure, and give us help against the disbelieving folk
""", hadithOrBenefit: "Al Quran: 2:250")))
        

        duas_.append(Dua(title: "Al Quran: 2:286", detail: DuaDetail(duaArabic: """
رَبَّنَا لَا تُؤَاخِذۡنَآ إِن نَّسِينَآ أَوۡ أَخۡطَأۡنَا‌ۚ رَبَّنَا وَلَا تَحۡمِلۡ عَلَيۡنَآ إِصۡرً۬ا كَمَا حَمَلۡتَهُ ۥ عَلَى ٱلَّذِينَ مِن قَبۡلِنَا‌ۚ رَبَّنَا وَلَا تُحَمِّلۡنَا مَا لَا طَاقَةَ لَنَا بِهِۦ‌ۖ وَٱعۡفُ عَنَّا وَٱغۡفِرۡ لَنَا وَٱرۡحَمۡنَآ‌ۚ أَنتَ مَوۡلَٮٰنَا فَٱنصُرۡنَا عَلَى ٱلۡقَوۡمِ ٱلۡڪَـٰفِرِينَ
""",duaNote:  """
You can recite it anytime\n
You can recite when you sit for last tashahud\n
Or After Every Fadr Salah\n
Or After Zikir\n
Do not recite Quran when you are in Ruku or Sijdah
""", reference: "Al Quran: 2:286", pronunciation: """
Rabbana la tu/’akhidhna in-nasina aw akhta/’na Rabbana wala tahmil alayna isran
kama hamaltahu alal-ladheena min qablin Rabbana wala tuhammilna ma la taqata lana bihi wa’fu
anna waghfir lana wairhamna anta mawlana fansurna ‘alal-qawmil kafireen
""", translation: """
Our Lord! Condemn us not if we forget or fall into error Our Lord!
            Lay not on us a burden Like that which Thou didst lay on those before us
Our Lord! Lay not on us a burden greater than we have strength to bear. Blot
            out our sins, and grant us forgiveness. Have mercy on us.
            Thou art our Protector; Help us against those who stand against faith
""", hadithOrBenefit: "Al Quran: 2:286")))

        duas_.append(Dua(title: "Al Quran: 3:8", detail: DuaDetail(duaArabic: """
رَبَّنَا لَا تُزِغۡ قُلُوبَنَا بَعۡدَ إِذۡ هَدَيۡتَنَا وَهَبۡ لَنَا مِن لَّدُنكَ رَحۡمَةً‌ۚ إِنَّكَ أَنتَ ٱلۡوَهَّاب
""",duaNote:  """
You can recite it anytime\n
You can recite when you sit for last tashahud\n
Or After Every Fadr Salah\n
Or After Zikir\n
Do not recite Quran when you are in Ruku or Sijdah
""", reference: "Al Quran: 3:8", pronunciation: "Rabbana la tuzigh quloobana ba’da idh hadaytana wa hab lana milladunka rahmah innaka antal Wahhab", translation: """
Our Lord! (they say), Let not our hearts deviate now after
Thou hast guided us, but grant us mercy from Thine own Presence;
for Thou art the Grantor of bounties without measure
""", hadithOrBenefit: "Al Quran: 3:8")))
        
        duas_.append(Dua(title: "Al Quran: 3:9", detail: DuaDetail(duaArabic: """
رَبَّنَآ إِنَّكَ جَامِعُ ٱلنَّاسِ لِيَوۡمٍ۬ لَّا رَيۡبَ فِيهِ‌ۚ إِنَّ ٱللَّهَ لَا يُخۡلِفُ ٱلۡمِيعَاد
""", duaNote:  """
You can recite it anytime\n
You can recite when you sit for last tashahud\n
Or After Every Fadr Salah\n
Or After Zikir\n
Do not recite Quran when you are in Ruku or Sijdah
""", reference: "Al Quran: 3:9", pronunciation: "Rabbana innaka jami’unnasi li-Yawmil la rayba ri innAllaha la yukhliful mi’aad", translation: """
Our Lord! Thou art He that will gather mankind Together
against a day about which there is no doubt; for Allah never fails in His promise
"""
, hadithOrBenefit: "Al Quran: 3:9")))
        

        duas_.append(Dua(title: "Al Quran: 3:16", detail: DuaDetail(duaArabic: """
رَبَّنَآ إِنَّنَآ ءَامَنَّا فَٱغۡفِرۡ لَنَا ذُنُوبَنَا وَقِنَا عَذَابَ ٱلنَّار
""", duaNote:  """
You can recite it anytime\n
You can recite when you sit for last tashahud\n
Or After Every Fadr Salah\n
Or After Zikir\n
Do not recite Quran when you are in Ruku or Sijdah
""", reference: "Al Quran: 3:16", pronunciation: "Rabbana innana amanna faghfir lana dhunuubana wa qinna ‘adhaban-Naar", translation: """
Our Lord! We have indeed
believed: forgive us, then, our sins, and save us from the agony of the Fire
""", hadithOrBenefit: "Al Quran: 3:16")))

        duas_.append(Dua(title: "Al Quran: 3:53", detail: DuaDetail(duaArabic: """
رَبَّنَآ ءَامَنَّا بِمَآ أَنزَلۡتَ وَٱتَّبَعۡنَا ٱلرَّسُولَ فَٱڪۡتُبۡنَا مَعَ ٱلشَّـٰهِدِين
""", duaNote:  """
You can recite it anytime\n
You can recite when you sit for last tashahud\n
Or After Every Fadr Salah\n
Or After Zikir\n
Do not recite Quran when you are in Ruku or Sijdah
""", reference: "Al Quran: 3:53", pronunciation: "Rabbana amanna bima anzalta wattaba ‘nar-Rusula fak-tubna ma’ash-Shahideen", translation: """
Our Lord! We believe in what Thou hast revealed,
and we follow the Messenger. Then write us down among those who bear witness
""", hadithOrBenefit: "")))

        duas_.append(Dua(title: "Al Quran: 3:147", detail: DuaDetail(duaArabic: """
رَبَّنَا ٱغۡفِرۡ لَنَا ذُنُوبَنَا وَإِسۡرَافَنَا فِىٓ أَمۡرِنَا وَثَبِّتۡ أَقۡدَامَنَا وَٱنصُرۡنَا عَلَى ٱلۡقَوۡمِ ٱلۡڪَـٰفِرِين
""",duaNote: """
You can recite it anytime\n
You can recite when you sit for last tashahud\n
Or After Every Fadr Salah\n
Or After Zikir\n
Do not recite Quran when you are in Ruku or Sijdah
""", reference: "Al Quran: 3:147", pronunciation: """
            Rabbana-ghfir lana dhunuubana wa israfana fi amrina
            wa thabbit aqdamana wansurna ‘alal qawmil kafireen
            """, translation: """
Our Lord! Forgive us our sins and anything We may have done that transgressed our duty:
Establish our feet firmly, and help us against those that resist Faith
""", hadithOrBenefit: "Al Quran: 3:53")))


        duas_.append(Dua(title: "Al Quran: 3:191", detail: DuaDetail(duaArabic: """
رَبَّنَا مَا خَلَقۡتَ هَـٰذَا بَـٰطِلاً۬ سُبۡحَـٰنَكَ فَقِنَا عَذَابَ ٱلنَّار
""",duaNote:  """
You can recite it anytime\n
You can recite when you sit for last tashahud\n
Or After Every Fadr Salah\n
Or After Zikir\n
Do not recite Quran when you are in Ruku or Sijdah
""", reference: "Al Quran: 3:191", pronunciation: "Rabbana ma khalaqta hadha batila Subhanaka faqina ‘adhaban-Naar", translation: "Our Lord! Not for naught Hast Thou created (all) this! Glory to Thee! Give us salvation from the penalty of the Fire", hadithOrBenefit:  "Al Quran: 3:191")))

        duas_.append(Dua(title: "Al Quran: 3:192", detail: DuaDetail(duaArabic: """
رَبَّنَآ إِنَّكَ مَن تُدۡخِلِ ٱلنَّارَ فَقَدۡ أَخۡزَيۡتَهُ ۥ‌ۖ وَمَا لِلظَّـٰلِمِينَ مِنۡ أَنصَار
""", duaNote:  """
You can recite it anytime\n
You can recite when you sit for last tashahud\n
Or After Every Fadr Salah\n
Or After Zikir\n
Do not recite Quran when you are in Ruku or Sijdah
""", reference: "Al Quran: 3:192", pronunciation: "Rabbana innaka man tudkhilin nara faqad akhzaytah wa ma liDh-dhalimeena min ansar", translation: """
Our Lord! Any whom Thou dost admit to the Fire, Truly
Thou coverest with shame, and never will wrong-doers Find any helpers
""", hadithOrBenefit: "Al Quran: 3:192")))

        duas_.append(Dua(title: "Al Quran: 3:193", detail: DuaDetail(duaArabic: """
رَّبَّنَآ إِنَّنَا سَمِعۡنَا مُنَادِيً۬ا يُنَادِى لِلۡإِيمَـٰنِ أَنۡ ءَامِنُواْ بِرَبِّكُمۡ فَـَٔامَنَّا
""", duaNote:  """
You can recite it anytime\n
You can recite when you sit for last tashahud\n
Or After Every Fadr Salah\n
Or After Zikir\n
Do not recite Quran when you are in Ruku or Sijdah
""", reference: "Al Quran: 3:193", pronunciation: "Rabbana innana sami’na munadiyany-yunadi lil-imani an aminu bi Rabbikum fa’aamanna", translation: """
            Our Lord! We have heard the call of one calling (Us) to Faith,
            Believe ye in the Lord, and we have believed
            """, hadithOrBenefit: "Al Quran: 3:193")))


        duas_.append(Dua(title: "Al Quran: 3:193", detail: DuaDetail(duaArabic: """
‌رَبَّنَا فَٱغۡفِرۡ لَنَا ذُنُوبَنَا وَڪَفِّرۡ عَنَّا سَيِّـَٔاتِنَا وَتَوَفَّنَا مَعَ ٱلۡأَبۡرَار
""",duaNote:  """
You can recite it anytime\n
You can recite when you sit for last tashahud\n
Or After Every Fadr Salah\n
Or After Zikir\n
Do not recite Quran when you are in Ruku or Sijdah
""", reference: "Al Quran: 3:193", pronunciation: "Rabbana faghfir lana dhunoobana wa kaffir ‘ana sayyi’aatina wa tawaffana ma’al Abrar", translation: """
Our Lord! Forgive us our sins, blot out from us our iniquities,
and take to Thyself our souls in the company of the righteous
""", hadithOrBenefit: "Al Quran: 3:193")))
        
        
        
        duas_.append(Dua(title: "Al Quran: 3:194", detail: DuaDetail(duaArabic: """
رَبَّنَا وَءَاتِنَا مَا وَعَدتَّنَا عَلَىٰ رُسُلِكَ وَلَا تُخۡزِنَا يَوۡمَ ٱلۡقِيَـٰمَةِ‌ۗ إِنَّكَ لَا تُخۡلِفُ ٱلۡمِيعَاد
""",duaNote:  """
You can recite it anytime\n
You can recite when you sit for last tashahud\n
Or After Every Fadr Salah\n
Or After Zikir\n
Do not recite Quran when you are in Ruku or Sijdah
""", reference: "Al Quran: 3:194", pronunciation: "Rabbana wa ‘atina ma wa’adtana ‘ala rusulika wa la tukhzina yawmal-Qiyamah innaka la tukhliful mi’aad", translation: """
            Our Lord! Grant us what Thou didst promise unto us through Thine apostles,
            and save us from shame on the Day of Judgment: For Thou never breakest Thy promise
            """
, hadithOrBenefit: "Al Quran: 3:194")))
        

        
        
        duas_.append(Dua(title: "Al Quran: 5:83", detail: DuaDetail(duaArabic: """
رَبَّنَآ ءَامَنَّا فَٱكۡتُبۡنَا مَعَ ٱلشَّـٰهِدِين
""", duaNote:  """
You can recite it anytime\n
You can recite when you sit for last tashahud\n
Or After Every Fadr Salah\n
Or After Zikir\n
Do not recite Quran when you are in Ruku or Sijdah
""", reference: "Al Quran: 5:83", pronunciation: "Rabbana aamana faktubna ma’ ash-shahideen", translation: "Our Lord! We believe; write us down among the witnesses", hadithOrBenefit: "Al Quran: 5:83")))
        


        duas_.append(Dua(title: "Al Quran: 7:23", detail: DuaDetail(duaArabic: """
رَبَّنَا ظَلَمۡنَآ أَنفُسَنَا وَإِن لَّمۡ تَغۡفِرۡ لَنَا وَتَرۡحَمۡنَا لَنَكُونَنَّ مِنَ ٱلۡخَـٰسِرِين
""", duaNote:  """
You can recite it anytime\n
You can recite when you sit for last tashahud\n
Or After Every Fadr Salah\n
Or After Zikir\n
Do not recite Quran when you are in Ruku or Sijdah
""", reference: "Al Quran: 7:23", pronunciation: "Rabbana zalamna anfusina wa il lam taghfir lana wa tarhamna lana kuna minal-khasireen", translation: """
Our Lord! We have wronged our own souls: If thou forgive us
not and bestow not upon us Thy Mercy, we shall certainly be lost
""", hadithOrBenefit: "Al Quran: 7:23")))
        
        
        
        return duas_
    }
    
    
}

struct Dua {
    let title : String
    
    let detail : DuaDetail
    
}

struct DuaDetail {
    let duaArabic : String
    let duaNote : String
    let reference : String
    let pronunciation : String
    let translation : String
    let hadithOrBenefit : String
}
