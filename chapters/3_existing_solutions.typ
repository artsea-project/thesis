= Analiza istniejących rozwiązań (Benjamin Jurewicz) <chapter-existing-solutions>

== Dostępne rozwiązania

=== Canva Websites

Canva Websites umożliwia publikowanie projektów przygotowanych w Canvie jako witryn internetowych, z wykorzystaniem bezpłatnej domeny, domeny kupionej lub już posiadanej przez użytkownika.
Narzędzie oferuje wizualne tworzenie stron statycznych metodą przeciągania i upuszczania elementów, bez wymagania znajomości programowania.
W ramach konta Canva Free użytkownik może utrzymywać do pięciu opublikowanych witryn na bezpłatnej domenie.
Witryna opublikowana na tym koncie zawiera stopkę "Designed with Canva", której nie można usunąć w planie bezpłatnym.
Canva oferuje limitowane możliwości dodania funkcjonalności do elementów.
Wspiera limitowane animacje oraz hiperłącza do podstron.
W efekcie, strony przypominają portfolio papierowe lub prezentacje powerpoint, z limitowanym dostosowaniem do wielu rozmiarów ekranu.
@canva-website-builder

=== Squarespace

Squarespace udostępnia zaawansowany edytor pozwalający dodawać treści metodą przeciągania i upuszczania, bez bezpośredniego edytowania kodu.
Personalizacja obejmuje między innymi ustawienia właściwe dla wybranego układu początkowego, dostosowanie kolorów i czcionek, możliwość przemieszczania bloków treści i dodawanie nowych sekcji strony.
Subskrypcja Squarespace obejmuje utrzymywanie witryny na infrastrukturze dostawcy (ang. hosting).
Usługa oferuje możliwość wykupienia własnej domeny lub użycia domeny już posiadanej przez użytkownika.
Możliwe jest stworzenie własnej strony w planie darmowym, jednak by móc ją opublikować, konieczne jest wykupienie planu płatnego. @squarespace-portfolio-guide

=== Behance

Platforma Behance reprezentuje inne podejście do tworzenia portfolio.
Pozwala prezentować twórczość w postaci profilu zawierającego projekty, przy czym projekt jest zbiorem obrazów, filmów i innych treści cyfrowych powiązanych tematem lub procesem twórczym.
Każdy projekt ma własny adres internetowy oraz liczniki wyświetleń i wyrazów uznania, a użytkownicy mogą wzajemnie obserwować swoje profile.
Możliwe jest też współautorstwo projektu przez osoby posiadające konto na serwisie Behance.
Podstawowe uczestnictwo w Behance jest bezpłatne i nie ogranicza liczby projektów utworzonych przez użytkownika. @behance-intro
W efekcie, Behance funkcjonuje podobnie do typowej platformy społecznościowej, gdzie profilem użytkownika jest portfolio artysty. Platforma oferuje również funkcjonalność kierowaną do osób poszukujących profesjonalnych artystów, umożliwiając publikacje ofert pracy w branżach kreatywnych.

=== WordPress

WordPress umożliwia tworzenie różnych rodzajów witryn, w tym profesjonalnego portfolio, oraz dostosowywanie ich za pomocą motywów określających wygląd i wtyczek rozszerzających funkcjonalność.
Dostępne są tysiące wtyczek rozszerzających możliwości systemu, dzięki czemu zakres funkcjonalności zależy głównie od dobranej konfiguracji.
Oprogramowanie można pobrać i zainstalować samodzielnie, korzystając z własnego hostingu i domeny.
WordPress jest dystrybuowany na licencji GPL, która pozwala instalować, użytkować, modyfikować i rozpowszechniać oprogramowanie, a także wykorzystywać jego kod w projektach komercyjnych, bez opłat licencyjnych. @wordpress-features

== Porównanie rozwiązań

Pojedyncze cechy nie przesądzają o przydatności rozwiązania, więc w tabeli @comparison-platforms zestawiono je w postaci kryteriów istotnych dla artysty, czyli kierowanie rozwiązania do artystów, łatwe zarządzania pracami i ich przeglądanie, możliwości bezpłatnego wypróbowania oraz warunków publikowania i utrzymania witryny.
Dzięki temu widać, które rozwiązanie spełnia które warunki, a które z nich pozostaje nieosiągnięte.
Na tle opisanych rozwiązań w ostatniej, wyróżnionej kolumnie tabeli przedstawiono także ArtSea.

#figure(
  table(
    columns: (2.0fr, 1fr, 1fr, 1.05fr, 1fr, 1fr),
    inset: (x: 6pt, y: 8pt),
    fill: (x, y) => if x == 5 { luma(235) },
    align: (left + top, center + top, center + top, center + top, center + top, center + top),
    table.header([Kryterium], [Canva Websites], [Squarespace], [Behance], [WordPress], [ArtSea]),

    [Kierowany do artystów], [Nie], [Nie], [Tak], [Nie], [#strong[Tak]],

    [System CMS do zarządzania pracami], [Nie], [Nie], [Tak], [Wymaga konfiguracji], [#strong[Tak]],

    [Filtracja prac artysty po kategoriach i tagach], [Nie], [Nie], [Nie], [Wymaga konfiguracji], [#strong[Tak]],

    [Darmowa możliwość wypróbowania], [Tak], [Tak], [Tak], [Nie], [#strong[Tak]],

    [Bezpłatne publikowanie gotowej witryny], [Tak], [Nie], [Nie dotyczy], [Nie], [Nie],

    [Hosting wybrany przez użytkownika], [Nie], [Nie], [Nie], [Tak], [#strong[Tak]],

    [Własna domena], [Tak], [Tak], [Nie], [Tak], [#strong[Tak]],

    [Otwarty kod źródłowy], [Nie], [Nie], [Nie], [Tak], [#strong[Tak]],

    [Publikowanie bez konfiguracji technicznej], [Tak], [Tak], [Tak], [Nie], [Nie],
  ),
  caption: [Porównanie opisanych rozwiązań i ArtSea według ustalonych kryteriów],
) <comparison-platforms>

Zestawienie pokazuje, gdzie ArtSea wyróżnia się na tle innych dostępnych rozwiązań.

W ArtSea, podobnie jak w WordPressie, jedyne koszta to hosting oraz domena, które użytkowników może dobrać tak, by minimalizować koszta.
Squarespace wymaga opłacania subskrypcji by opublikować stronę oraz wymusza korzystanie z własnego hostingu.
Canva natomiast udostępnia bezpłatne publikowanie gotowej witryny jako subdomena `my.canva.site`, ale również wymusza korzystanie z własnego hostingu. Behance pozwala bezpłatnie tworzyć wpisy w swoim serwisie.

Odrębnym kryterium jest przetestowanie rozwiązania, przed zapłaceniem. Canva, Squarespace i Behance udostępniają darmowe warianty lub okresy próbne, natomiast wypróbowanie WordPressa wymaga wcześniejszej instalacji na wykupionym hostingu. ArtSea wyróżnia się w tej kategorii, umożliwiając lokalne wypróbowanie rozwiązania, używając aplikacji Docker Desktop.

Kolejnym rozróżnieniem jest prostota zarządzanie pracami artysty.
Canva i Squarespace wymuszały ręczne ustawianie pracy w galerii, dodając zdjęcia i upewniając się że podstrona z detalami pracy pasuje do podstron z detalami innych prac.
Behance wymusza ręczne konfigurowanie wyglądu każdej dodanej pracy. Pozwala to artyście dostosować wygląd strony prezentującej prace do samej pracy artysty, ale utrudnia to zachowanie podobnego stylu między głównym profilem artysty i innymi jego pracami.
ArtSea, oferuje możliwość łatwego zarządzania, dodawania i usuwania prac artysty. Sprawia to że artysta może skupić się na informacjach jakie chce przekazać, a ArtSea zaprezentuje je w sposób dopasowany stylem do reszty strony. Taką samą funkcjonalność może posiadać WordPress po wcześniejszej konfiguracji.

Dodatkowo, większość serwisów (Canva, Squarespace, Behance) nie oferuje możliwość łatwego filtrowania prac, osobie która przegląda portfolio artysty. Utrudnia to znalezienie prac, które pomogły by ocenić czy artysta będzie dobrym wyborem do wykonania pracy która chciałby zamówić klient. WordPress wymaga konfiguracji by oferować podobna funkcjonalność.

== Luka w analizowanych rozwiązaniach

Na podstawie porównania lukę określono jako brak połączenia w opisanych wariantach trzech cech: gotowej obsługi portfolio pojedynczego artysty, obejmującej system zarządzania pracami z filtrowaniem po kategoriach i tagach, personalizacji ograniczonej do tego zastosowania oraz bezpłatnego oprogramowania o otwartym kodzie źródłowym, możliwego do uruchomienia na wybranej infrastrukturze.

Zdefiniowany zestaw cech każde z rozwiązań pokrywa tylko częściowo. Canva, Squarespace i Behance wiążą publikację z infrastrukturą własnej platformy i nie posiadają gotowej filtracji prac po kategoriach i tagach, a WordPress zapewnia niezależność infrastruktury i otwarty kod, lecz dopiero konfiguracja pozwala osiągnąć w nim podobną obsługę portfolio.
Zidentyfikowana luka dotyczy artysty bez doświadczenia w programowaniu, który chce samodzielnie zarządzać swoimi pracami i nadać stronie indywidualny charakter, nie potrzebując przy tym uniwersalnego środowiska do projektowania witryn. Zależy mu również na rozwiązaniu, które pozwala ograniczać koszty w długim okresie, między innymi dzięki łatwemu przeniesieniu portfolio do innego dostawcy hostingu.

== ArtSea jako odpowiedź na zidentyfikowaną lukę

ArtSea łączy zarządzanie portfolio pojedynczego artysty z ograniczoną personalizacją i możliwością uruchomienia aplikacji niezależnie od dostawcy hostingu.
Aplikacja jest rozpowszechniana wraz z otwartym kodem źródłowym, dzięki czemu korzystanie z niej jest bezpłatne, a jedyne koszty, jakie ponosi artysta, to hosting i domena.

=== Obsługa i personalizacja portfolio

Osoba przeglądająca portfolio widzi gotową stronę, na której może filtrować prace po kategoriach i tagach.
Pracami zarządza artysta, który w graficznym panelu administracyjnym dodaje materiały, opisy, wymiary, rok wykonania, kategorie i tagi oraz określa widoczność prac.
Panel obejmuje także informacje o artyście i dane kontaktowe, a treści portfolio można przygotować w języku polskim i angielskim.
Codzienna obsługa portfolio nie wymaga edytowania kodu ani korzystania z terminala.
Dane te tworzą spójną strukturę portfolio, zamiast pozostawać wyłącznie niezależnymi elementami ułożonymi w edytorze strony.
W efekcie ArtSea pełni rolę systemu zarządzania treścią (ang. CMS), o zakresie ograniczonym do potrzeb pojedynczego artysty.

Personalizacja obejmuje kolory, kroje pisma, rozmieszczenie oraz rozmiary prac w bentoboxie, a także treści wpisywane w przygotowanych polach.
Kolory wybiera się samodzielnie lub przez gotowy motyw.
ArtSea nie udostępnia pełnego środowiska komponowania stron z dowolnych komponentów, lecz zestaw ustawień związanych z prezentacją twórczości artysty.
Użytkownik dostosowuje więc wygląd portfolio, zamiast konfigurować dowolny rodzaj witryny.
Zawężony zakres zmniejsza jednak liczbę decyzji, gdyż artysta, który chce szybko opublikować portfolio, wybiera gotowy motyw i od razu przechodzi do treści.

=== Niezależność infrastruktury i koszty

ArtSea można uruchomić u dowolnego dostawcy, który pozwala na uruchomienie kontenerów Dockera, na przykład na serwerze VPS, bez konieczności korzystania z centralnej usługi prowadzonej przez twórców projektu.
Dzięki temu użytkownik porównuje oferty infrastruktury i wybiera najtańszą, zamiast przyjmować cennik narzucony przez operatora platformy.
Przykładowymi dostawcami, których oferty można rozważyć, są Hetzner i Mikrus, przy czym wybór konkretnego pakietu pozostaje odrębny od wyboru aplikacji @hetzner-prices @mikrus-offer.

Dla zobrazowania samego kosztu infrastruktury cennik Hetznera podaje dla serwera CX23 w Niemczech lub Finlandii miesięczną cenę 5,99 euro bez podatku VAT @hetzner-prices.
W kosztorysie konkretnego wdrożenia należy osobno uwzględnić domenę oraz ewentualne kopie zapasowe.

Alternatywą jest uruchomienie ArtSea na własnym serwerze lub posiadanym komputerze, bez opłacania zewnętrznej usługi hostingowej.
Taki wariant nie oznacza jednak całkowitego braku kosztów, jeśli komputera jeszcze nie ma, konieczny jest jego jednorazowy zakup. Niezależnie od tego dochodzą też bieżące opłaty za energię elektryczną zużywaną przez serwer i za publiczny adres IP lub usługę tunelowania, która udostępnia witrynę w internecie.
Jeszcze przed poniesieniem kosztów hostingu ArtSea można bezpłatnie wypróbować lokalnie, uruchamiając aplikację na własnym komputerze.
Artysta może wykonać pierwsze kroki wdrożenia samodzielnie lub skorzystać z pomocy osoby technicznej, a następnie zarządzać treścią i wyglądem portfolio przez panel graficzny.
Niezależność hostingu nie usuwa obowiązków związanych z utrzymaniem serwera, dlatego w ArtSea oddzielono uruchomienie infrastruktury od codziennej obsługi portfolio.

=== Podsumowanie

ArtSea wypełnia zidentyfikowaną lukę poprzez połączenie gotowej obsługi portfolio, w tym zarządzania pracami z ich filtrowaniem po kategoriach i tagach, personalizacji ograniczonej do potrzeb artysty, bezpłatnego otwartego oprogramowania i swobody wyboru miejsca wdrożenia.
Nie zastępuje wszystkich zastosowań analizowanych platform, lecz zapewnia odrębne rozwiązanie dla artysty potrzebującego własnego portfolio bez uniwersalnego kreatora i bez obowiązkowego abonamentu za aplikację.
