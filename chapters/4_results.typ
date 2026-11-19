= Ewaluacja (Marta Kociszewska) <chapter-results>

== Metodyka oceny

W celu weryfikacji zaimplementowanego systemu pod kątem spełnienia wymagań niefunkcjonalnych oraz funkcjonalnych, przeprowadzono testy z udziałem przedstawicieli grupy docelowej. Zdecydowano się na wykorzystanie metody testowania opartego na scenariuszach (ang. _scenario-based testing_), połączonej z kwestionariuszem ewaluacyjnym.

Narzędzie badawcze zaprojektowano w fromie dwuczłonowej ankiety, łączącej metodę ustandaryzowaną z pytaniami dedykowanymi domenie aplikacji:
- *Kwestionariusz UEQ (ang. _User Experience Questionnaire_)* – zastosowany do ogólnej oceny doświadczenia użytkownika. Jeszcze przed rozpoczęciem implementacji zespół projektowy zdefiniował, docelowy profil UX, który określał pożądane cechy przyszłego systemu. Wykorzystano do tego pary przeciwstawnych cech zaczerpnięte z kwestionariuszy _AttrakDiff_ oraz _UEQ_. Zastosowanie pełnego kwestinariusza _UEQ_ w badaniu końcowym umożliwiło zarówno ocenę aplikacji względem oficjalnego benchmarku, jak i porównanie z wcześniej zdefiniowanymi założeniami projektowymi.
- *Autorski kwestionariusz w skali Liktera* - zastosowany do weryfikacji kluczowych funkcjonalności, ich zrozumienia i stopnia złożoności. Ocenianymi funkcjonalnościami były między innymi proces dodawania prac, zakres personalizacji portfolio.Zastosowanie skali Likerta umożliwiło wyznaczenie średnich ocen dla poszczególnych modułów aplikacji i ich późniejszą reprezentację.

Zastosowanie takiego podejścia pozwoliło uzyskać mierzalne, ilościowe metryki, co umozliwiło na obiektywną identyfikację mocnych stron systemu i obszarów wymagających dalszego rozowoju. Kwestionariusz uzupełniono o pytania otwarte, dostarczające jakościowych informacji zwrotnych na temat brakującyh funkcji i ogólnych wrażeń z korzystania z aplikacji

== Przebieg badania

Badanie zostało przeprowadzone na próbie [n] użytkowników. Aby odzwierciedlić rzeczywiste warunki eksploatacji aplikacji, każdy z uczestników został poproszony o wykonanie autorskiego zadania testowego. Scenariusz obejmował następujące kroki: 

+ Uzupełnienie profilu artysty. 
+ Dodanie do portfolio co najmniej trzech prac, wraz z uzupełnieniem ich opisów i metadanych. 
+ Modyfikacja wyglądu wizualnego portfolio z wykorzystaniem dostępnych szablonów i opcji personalizacji (zmiana kolorystyki, typografii). 
+ Opublikowanie i podgląd gotowego portfolio. 

Podczas wykonywania scenariusza, użytkownicy mogli posługiwać się dostarzoną instrukcją obsługi aplikacji. Po wykonaniu powyższego zadania użytkownicy wypełniali przygotowaną ankietę elektroniczną [CZY DAC ZAŁĄCZNIK? JAK?]. Kwestionariusz składał się z czterech sekcji: metryczki badającej profil i kompetencje techniczne uczestnika, sekcji _UEQ_, bloku ewaluacji użyteczności (czytelność, nawigacja, responsywność) oraz bloku oceniającego zakres elastyczności szablonów. 

== Analiza i interpretacja wyników

Przed przystąpieniem do analizy wyników badania, dokonano normalizacji założeń projektowych, w celu umożliwienia porównania z wynikami uzyskanymi w badaniu końcowym. Ponieważ wewnętrzny profil docelowy oceniono w skali pięcistopniowej, wartości te zostały przeliczone na skalę od -3 do +3, aby umożliwić porównanie z wynikami kwestionariusza _UEQ_. W przypadku par o odwróconej polaryzacji, wartości zostały odwrócone, aby zachować spójność interpretacyjną.

#figure(
  table(
    columns: (2.2fr, 1fr, 1.1fr),
    table.header(
      [Cecha], 
      [Ocena zespołu projektowego], 
      [Ocena znormalizowana]
    ),
    [techniczny - ludzki], [3.8], [+1.2],
    [skomplikowany - ławty], [3.0], [0],
    [chaotyczny - pod kontrolą], [3.0], [0],
    [uciążliwy - prosty w obsłudze], [3.8], [+1.2],
    [nieprzewidywalny - przewidywalny], [3.3], [+0.45],
    [izolujący - integrujący], [3.3], [+0.45],
    [nieprofesjonalny - profesjonalny], [3.3], [+0.45],
    [bez smaku - stylowy], [3.3], [+0.45],
    [nieoryginalny - oryginalny], [4.3], [+1.95],
    [ostrożny - odważny], [3.7], [+1.05],
    [konserwatywny - innowacyjny], [3.7], [+1.05],
    [nudny - ekscytujący], [4.3], [+1.95],
    [niewymagający - wymagający], [2.0], [-1.5],
    [zwyczajny - nowatorski], [4.0], [+1.5],
    [nieatrakcyjny - atrakcyjny], [4.7], [+2.55],
    [odrzucający - zachęcający], [5.0], [+3.0],
    [niezrozumiały - zrozumiały], [4.7], [+2.55],
    [łatwy do nauki - trudny do nauki], [1.3], [+2.55],
    [szybki - wolny], [2.3], [+1.05],
    [zwykły - skrajny], [3.3], [+0.45],
    [bezpieczny - niebezpieczny], [1.0], [+3.0],
    [motywujący - demotywujący], [1.3], [+2.55],
    [przejrzysty - zagmatwany], [1.3], [+2.55],
    [zorganizowany - zagracony], [2.0], [+1.5],
    [przyjazny - nieprzyjazny], [1.0], [+3.0],
  ),
  caption: [Zestawienie znormalizowanych założeń projektowych zespołu (docelowy profil UX)],
) <tab-profil-ux>