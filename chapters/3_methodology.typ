= Wymagania i specyfikacja systemu (Marta Kociszewska)  <chapter-methodology>

== Identyfikacja użytkowników <sec:user-identification>

Proces inżynierii wymagań rozpoczął się od przeanalizowania docelowej grupy użytkowników. Zrozumienie ich cech, potrzeb, problemów oraz kontekstu użycia stanowiło fundament do zaprojektowania interfejsu i zdefiniowania kluczowych funkcji aplikacji. Stworzono profile reprezentatywnych użytkowników (tzw. persony), którzy reprezentują dwóch głównych aktorów systemu: artystę (twórcę portfolio) oraz odbiorcę (użytkownika końcowego).

- *Artysta (Twórca)* - główny użytkownik systemu. Grupa ta charakteryzuje się wysoką wrażliwością estetyczną, lecz na ogół nie posiada specjalistycznych umiejętności technicznych i programistycznych. Głównym celem tego aktora jest szybkie stworzenie scentralizowanego, uporządkowanego portfolio. Artysta oczekuje wysoce intuicyjnego interfejsu. Aktor ten korzysta z panelu zarządzania głównie na komputerze stacjonarnym w celu wgrywania plików, jednak wymaga również możliwości zarządzania treścią z poziomu urządzeń mobilnych.

- *Odbiorca (Użytkownik końcowy)* - osoba odwiedzająca wygenerowane portfolio, reprezentująca potencjalnych klientów lub miłośników sztuki. Jej główną potrzebą jest płynne i wygodne przeglądanie galerii, ułatwione dzięki mechanizmom filtrowania prac oraz zoptymalizowanemu czasowi ładowania grafik. Ze względu na fakt, iż użytkownik ten konsumuje treści niemal wyłącznie za pomocą urządzeń mobilnych (smartfony, tablety), absolutnym priorytetem jest przejrzystość interfejsu oraz jego pełne dostosowanie do małych ekranów. Ponadto, Odbiorca oczekuje szybkiego i bezpośredniego sposobu na nawiązanie kontaktu z artystą (np. poprzez czytelne sekcje z informacjami o twórcy i linkami społecznościowymi).

=== Artysta <sec:artist-persona>

Podstawową charakterystykę persony artysty przedstawiono w tabeli profilowej (@tab:persona-artist), natomiast szczegółowy opis jego potrzeb, problemów i kontekstu użycia systemu w tabeli szczegółowego profilu (@tab:persona-artist-details).

#figure(
  caption: [Profil persony - Artysta],
  kind: table,
  table(
    columns: (auto, auto, 1fr),
    align: left,
    table.header([], [Cecha], [Opis]),
    table.cell(rowspan: 4)[*Profil*],
    [Imię],
    [Otylia],
    [Wiek],
    [22],
    [Rola],
    [Studentka, początkująca artystka],
    [Osobowość],
    [Osoba o wysokiej wrażliwości na estetykę, mało techniczna],
  ),
) <tab:persona-artist>

#figure(
  caption: [Szczegółowy opis profilu użytkownika: Artysta],
  kind: table,
  table(
    columns: (auto, 1fr),
    align: left,
    table.header([Cecha], [Opis]),
    table.cell(rowspan: 3)[*Potrzeby i cele*],
    [Chce rozpocząć swoją karierę, stworzyć wizytówkę dla swoich prac],
    [Dąży do posiadania uporządkowanego portfolio w jednym miejscu, zamiast rozproszonego w różnych mediach],
    [Potrzebuje narzędzia, które nie wymaga technicznych umiejętności],
    table.hline(stroke: 1pt),
    table.cell(rowspan: 2)[*Problemy*],
    [Nie posiada umiejętności potrzebnych do samodzielnego postawienia strony],
    [Koszty zatrudnienia web developera są zbyt wysokie],
    table.hline(stroke: 1pt),
    table.cell(rowspan: 3)[*Kontekst użycia systemu*],
    [Używa systemu głównie na komputerze stacjonarnym (desktop) do zarządzania plikami i wgrywania zdjęć, ale czasami również na urządzeniu mobilnym do przeglądania i edycji treści],
    [Oczekuje prostego interfejsu opartego na mechanizmie "przeciągnij i upuść" (ang. _drag-and-drop_)],
    [Wykonanie podstawowej czynności, jak dodanie pracy do galerii, nie może jej zająć więcej niż 3 minuty],
  ),
) <tab:persona-artist-details>

=== Odbiorca <sec:viewer-persona>

Podstawową charakterystykę persony odbiorcy przedstawiono w tabeli profilowej (@tab:persona-viewer), natomiast szczegółowy opis jego potrzeb, problemów i kontekstu użycia systemu w tabeli szczegółowego profilu (@tab:persona-viewer-details).

#figure(
  caption: [Profil persony - Odbiorca],
  kind: table,
  table(
    columns: (auto, auto, 1fr),
    align: left,
    table.header([], [Cecha], [Opis]),
    table.cell(rowspan: 4)[*Profil*],
    [Imię],
    [Maria],
    [Wiek],
    [30],
    [Rola],
    [Odbiorca sztuki, potencjalny klient],
    [Osobowość],
    [Osoba o wysokiej wrażliwości na estetykę, szukająca konkretnych informacji],
  ),
) <tab:persona-viewer>

#figure(
  caption: [Szczegółowy opis profilu użytkownika: Odbiorca],
  kind: table,
  table(
    columns: (auto, 1fr),
    align: left,
    table.header([Cecha], [Opis]),
    table.cell(rowspan: 3)[*Potrzeby i cele*],
    [Chce płynnie i wygodnie przeglądać galerie prac na telefonie],
    [Szuka szybkiego sposobu na nawiązanie kontaktu z artystą],
    [Potrzebuje możliwości filtrowania prac, aby szybko znaleźć to, co ją interesuje],
    table.hline(stroke: 1pt),
    table.cell(rowspan: 2)[*Problemy*],
    [Nieczytelny interfejs niedostosowany do małych ekranów],
    [Trudność w odnalezieniu danych kontaktowych do twórcy na rozproszonych portalach],
    table.hline(stroke: 1pt),
    table.cell(rowspan: 2)[*Kontekst użycia systemu*],
    [Korzysta z systemu głównie na urządzeniach mobilnych (smartfon, tablet)],
    [Kluczowa jest dla niej czytelność i szybkość ładowania interfejsu],
  ),
) <tab:persona-viewer-details>

== Analiza wymagań <sec:requirements-analysis>

Fundamentem zaprojektowanej aplikacji była precyzyjna identyfikacja potrzeb jej użytkowników docelowych: twórców oraz ich odbiorców. Poniżej przedstawiono kompleksowy zbiór zdefiniowanych wymagań funkcjonalnych, jakościowych (niefunkcjonalnych) oraz opracowane scenariusze interakcji z systemem.

=== Wymagania funkcjonalne <sec:functional-requirements>
Wymagania funkcjonalne zdefiniowano z perspektywy dwóch kluczowych aktorów: artysty (twórcy portfolio) oraz odbiorcy. Szczegółową specyfikację funkcjonalną systemu ujęto w postaci modelu przypadków użycia (ang. _Use Case Model_), który pozwala określić interakcje użytkowników z systemem, warunki wstępne i końcowe oraz wyjątki i scenariusze alternatywne. Pełny wykaz zidentyfikowanych przypadków użycia (PU1-PU14, tabele: @tab:pu1 - @tab:pu14) wraz z diagramami UML (@fig:use-case-viewer oraz @fig:use-case-artist) przedstawiono w podrozdziale @sec:use-cases.

W ujęciu ogólnym, artysta posiada autoryzowany dostęp do systemu, co umożliwia mu kompleksowe zarządzanie treścią: dodawanie, edycję i usuwanie prac graficznych oraz kategorii, a także aktualizację profilu biograficznego. Jedną z najważniejszych funkcji z perspektywy twórcy jest możliwość wizualnej personalizacji portfolio za pomocą interaktywnego edytora opartego na modułowym układzie "Bento Box". Moduł ten pozwala na elastyczne skalowanie oraz pozycjonowanie kafelków z wykorzystaniem intuicyjnego mechanizmu _drag-and-drop_. 

Z kolei odbiorca zyskuje możliwość przeglądania galerii, zmiany preferowanego języka interfejsu, a także nawiązywania bezpośredniej komunikacji z artystą.

=== Wymagania jakościowe <sec:quality-requirements>
// Wymagania jakościowe (niefunkcjonalne) precyzują kryteria brzegowe dotyczące wydajności, bezpieczeństwa oraz przenośności. Dane autoryzacyjne użytkowników muszą być zahashowane przy użyciu nowoczesnych algorytmów kryptograficznych przed ich trwałym zapisem w bazie danych. Dodatkowym wymogiem niezawodnościowym jest obsługa wielu formatów plików graficznych oraz zabezpieczenie danych formularzowych przed ich utratą w przypadku nagłego przerwania sesji. Ważnym ograniczeniem projektowym jest uniwersalność i przenośność rozwiązania. System musi zapewnić pełną kompatybilność oraz responsywność w najpopularniejszych przeglądarkach internetowych (m.in. Google Chrome, Safari, Mozilla Firefox), jak również na urządzeniach mobilnych z systemami operacyjnymi Android i iOS. Z perspektywy _User Experience_, zebrane wytyczne analityczne wskazują, że aplikacja powinna charakteryzować się profesjonalnym, przejrzystym i zorganizowanym interfejsem, unikając wrażenia nadmiernego skomplikowania, aby stanowić narzędzie przystępne i przyjazne w odbiorze dla osób nietechnicznych.

Wymagania jakościowe (niefunkcjonalne) precyzują mierzalne kryteria techniczne oraz ograniczenia projektowe dotyczące bezpieczeństwa, wydajności, niezawodności, przenośności oraz użyteczności systemu.

+ Bezpieczeństwo:
  + Kontrola dostępu i autoryzacja: Dostęp do wszystkich chronionych podstron panelu oraz powiązanych akcji (zarządzanie pracami, kategoriami, profilem, wyglądem) wymaga aktywnej sesji weryfikowanej po stronie serwera.
  + Bezpieczeństwo transmisji i sesji: Komunikacja musi być chroniona protokołem HTTPS.
  + Ochrona danych uwierzytelniających: Hasło administratora musi być kryptograficznie haszowane przed zapisem do bazy danych. Sesja logowania jest utrzymywana po stronie serwera z ograniczonym czasem ważności - 7 dni.
  + Walidacja danych wejściowych: Wszystkie dane wprowadzone przez użytkowników podlegają walidacji po stronie serwera przed zapisem. System akceptuje jedynie zdefiniowane formaty plików (PNG, JPG, GIF, MP4).
+ Wydajność:
  + Optymalizacja zasobów graficznych: Ciężkie komponenty (np. pełnoekranowy podgląd galerii) są ładowane dynamicznie, dopiero w momencie użycia.
  + Czas odpowiedzi interfejsu: Niezależne komponenty strony ładują się strumieniowo, bez blokowania całego widoku. Niezależne zapytania do bazy danych wykonywane są równolegle.
+ Niezawodność:
  + Obsługa plików graficznych: Przesyłane pliki podlgają ograniczeniom wielkości: do 2 MB na pojedynczy plik oraz do 20 MB w ramach jednej operacji zapisu. Zasoby multimedialne są przechowywane w bazie danych wraz z sumą kontrolną zawartości, powiązane kaskadowo z pracami. Gwarantuje to spójność danych i automatyczne usuwanie nieżywanych zasobów wraz z usunięciem pracy.
+ Użyteczność:
  + Wielojęzyczność: Aplikacja wspiera język polski i angielski w warstwie treści portfolio.
  + Ochrona przed utratą danych: Panel administracyjny ostrzega użytkownika przed opuszczeniem niezapisanego formularza.
+ Przenośność:
  + Niezależność od urządzenia: Interfejs jest w pełni responsywny, dostosowuje układ i nawigację do ekranów różnego rozmiaru.

=== Scenariusze interakcji z systemem <sec:use-cases>

W celu precyzyjnego określenia funkcjonalności systemu oraz sposobu, w jaki użytkownicy będą z niego korzystać, opracowano model przypadków użycia (ang. _Use Case Model_). Model ten stanowi fundament specyfikacji wymagań i pozwala na graficzne oraz opisowe przedstawienie interakcji pomiędzy aktorami a systemem. Poniższe diagramy prezentują ogólny zarys tych interakcji z perspektywy odbiorcy (@fig:use-case-viewer) oraz artysty (@fig:use-case-artist), uwzględniając również relacje zawierania (`<<include>>`) oraz rozszerzania (`<<extend>>`) dla bardziej złożonych operacji związanych z zarządzaniem pracami.

#figure(
  image("../img/use-case-viewer.png", width: 50%),
  caption: [Scenariusz interakcji z systemem z perspektywy odbiorcy.],
)<fig:use-case-viewer>

#figure(
  image("../img/use-case-artist.png", width: 60%),
  caption: [Scenariusz interakcji z systemem z perspektywy artysty (twórcy portfolio).],
)<fig:use-case-artist>


==== Przypadki użycia z perspektywy odbiorcy

Odbiorca reprezentuje użytkownika końcowego, który odwiedza stworzone portfolio. Z perspektywy systemu, Odbiorca jest użytkownikiem niezalogowanym (gościem), co ogranicza jego uprawnienia wyłącznie do odczytu danych oraz korzystania z publicznych modułów komunikacyjnych. Szczegółowe przypadki użycia obejmujące przeglądanie galerii zdjęć, kontakt z artystą oraz zmianę preferowanego języka interfejsu zestawiono w tabelach: @tab:pu1, @tab:pu2 oraz @tab:pu3.

==== PU1 - Przeglądanie galerii zdjęć

#figure(
  caption: [Przypadek użycia PU1 - Przeglądanie galerii zdjęć],
  kind: table,
  table(
    columns: (1fr, 3fr),
    table.header([*Nazwa*], [Przeglądanie galerii zdjęć]),
    [*Warunki wstępne*], [Artysta udostępnił publicznie swoje portfolio w systemie ArtSea.],
    [*Podstawowy scenariusz interakcji*], [1. Odbiorca wchodzi na podstronę galerii artysty. \
    2. System ładuje układ strony i wyświetla miniatury prac. \
    3. Odbiorca wybiera interesującą go miniaturę. \
    4. System wyświetla powiększone zdjęcie w wysokiej rozdzielczości wraz z tytułem, opisem i użytymi technikami. \
    5. Odbiorca zamyka podgląd powiększonego zdjęcia. \
    6. System powraca do widoku galerii, zachowując pozycję przewijania.],
    [*Wyjątki i scenariusze alternatywne*], [*2a. Filtrowanie po kategorii:* Odbiorca wybiera kategorię prac, a system odświeża siatkę, pokazując wyłącznie miniatury z wybranej kategorii. \
    *2b. Brak prac:* Jeśli portfolio jest puste, system wyświetla odpowiedni komunikat.],
    [*Warunki końcowe*], [Odbiorca pomyślnie obejrzał wybrane prace w portfolio.],
    [*Komentarze*], [---],
  ),
) <tab:pu1>

==== PU2 - Kontakt z artystą

 #figure(
      caption: [Przypadek użycia PU2 - Kontakt z artystą],
      kind: table,
      table(
        columns: (1fr, 3fr),
        table.header([*Nazwa*], [Kontakt z artystą]),
        [*Warunki wstępne*], [Odbiorca znajduje się w portfolio artysty, a
        artysta uzupełnił w profilu adres e-mail do kontaktu lub linki
        społecznościowe.],
        [*Podstawowy scenariusz interakcji*], [
        1. Odbiorca wybiera w nawigacji opcję "KONTAKT". \
        2. System wyświetla treść zachęcającą do kontaktu, adres e-mail w formie odnośnika `mailto:` oraz listę zewnętrznych linków społecznościowych artysty. \
        3. Odbiorca klika adres e-mail lub wybrany odnośnik społecznościowy. \
        4. Przeglądarka otwiera domyślnego klienta poczty e-mail z wypełnionym adresem odbiorcy (dla linku `mailto:`) albo otwiera profil artysty w nowej karcie przeglądarki.],
        [*Wyjątki i scenariusze alternatywne*], [*2a. Brak adresu e-mail w
        profilu:* Jeśli artysta pozostawił pole e-mail puste, system ukrywa odnośnik `mailto:` i prezentuje wyłącznie pozostałe treści oraz ewentualne linki społecznościowe. \
        *2b. Brak linków społecznościowych:* Sekcja z odnośnikami społecznościowymi nie jest wyświetlana. \
        *3a. Brak skonfigurowanego klienta poczty:* Jeśli urządzenie odbiorcy nie ma przypisanej aplikacji do obsługi `mailto:`, odbiorca może skopiować widoczny adres e-mail bezpośrednio ze strony.],
        [*Warunki końcowe*], [Odbiorca rozpoczyna przygotowanie wiadomości e-mail w swoim kliencie pocztowym lub przechodzi na wybrany kanał społecznościowy artysty.],
        [*Komentarze*], [Zrezygnowano z wbudowanego formularza kontaktowego
        na rzecz bezpośredniego odnośnika `mailto:` oraz linków do
        zewnętrznych profili.],
      ),
    ) <tab:pu2>

==== PU3 - Wybór języka

#figure(
  caption: [Przypadek użycia PU3 - Wybór języka],
  kind: table,
  table(
    columns: (1fr, 3fr),
    table.header([*Nazwa*], [Wybór języka]),
    [*Warunki wstępne*], [Odbiorca znajduje się w portfolio. System obsługuje język polski i angielski, a domyślnie używa języka przeglądarki.],
    [*Podstawowy scenariusz interakcji*], [1. Odbiorca lokalizuje i klika przycisk wyboru języka. \
    2. System wyświetla listę dostępnych języków. \
    3. Odbiorca wybiera język. \
    4. System przeładowuje stronę w wybranym języku.],
    [*Wyjątki i scenariusze alternatywne*], [*4a. Brak tłumaczenia treści autorskich:* Interfejs zmienia się na wybrany język, ale zamiast opisu zdjęć i biogramu zostaje wyświetlony komunikat o braku tłumaczenia.],
    [*Warunki końcowe*], [Interfejs prezentowany jest w wybranym języku.],
    [*Komentarze*], [---],
  ),
) <tab:pu3>

==== Przypadki użycia z perspektywy artysty

Artysta pełni w systemie rolę administratora własnego portfolio. Ze względu na założenie, że docelowy twórca nie musi posiadać wiedzy technicznej, przypadki użycia w tej grupie zostały zaprojektowane tak, aby maksymalnie uprościć proces zarządzania treścią. Aktor ten posiada pełne uprawnienia do modyfikacji struktury swojej strony, w tym zarządzania pracami, kategoriami, informacjami biograficznymi oraz wizualną konfiguracją układu. Szczegółowe przypadki użycia obejmujące rejestrację konta, dodawanie, edytowanie i usuwanie prac, a także zarządzanie kategoriami i tagami zestawiono w tabelach: @tab:pu4 - @tab:pu14.

==== PU4 - Rejestracja konta

#figure(
  caption: [Przypadek użycia PU4 - Rejestracja konta],
  kind: table,
  table(
    columns: (1fr, 3fr),
    table.header([*Nazwa*], [Rejestracja konta]),
    [*Warunki wstępne*],
    [Konto artysty nie istnieje w systemie. W trakcie konfiguracji został wygenerowany jednorazowy link rejestracyjny.],
    [*Podstawowy scenariusz interakcji*],
    [
      1. Artysta otwiera otrzymany link rejestracyjny. \
      2. System sprawdza poprawność linku rejestracyjnego. \
      3. System wyświetla formularz z polami: imię i nazwisko lub pseudonim, hasło oraz potwierdzenie hasła. \
      4. Artysta wypełnia pola i klika "Utwórz konto". \
      5. System waliduje dane. \
      6. System tworzy konto użytkownika. \
      7. System loguje artystę i przekierowuje do panelu administracyjnego.
    ],
    [*Wyjątki i scenariusze alternatywne*], [*2a. Nieprawidłowy link:* System wyświetla komunikat o nieznalezieniu strony. \
     *2b. Wykorzystany link:* System przekierowuje użytkownika do panelu administracyjnego, jeżeli jest on zalogowany. W przeciwnym razie przekierowuje użytkownika do ekranu logowania. \
    *5a. Błąd walidacji:* System wyświetla odpowiedni komunikat.],
    [*Warunki końcowe*], [Konto artysty zostało utworzone, ponowna rejestracja jest niemożliwa. Artysta jest zalogowany w panelu administracyjnym.],
    [*Komentarze*], [Zapomniane hasło można zresetować osobnym skryptem.],
  ),
) <tab:pu4>

==== PU5 - Dodawanie pracy

#figure(
  caption: [Przypadek użycia PU5 - Dodawanie pracy],
  kind: table,
  table(
    columns: (1fr, 3fr),
    table.header([*Nazwa*], [Dodawanie pracy]),
    [*Warunki wstępne*], [Artysta jest zalogowany w panelu edycji portfolio.],
    [*Podstawowy scenariusz interakcji*], [1. Artysta przechodzi do sekcji "Prace".  \
    2. System wyświetla listę prac z przyciskiem "Dodaj pracę".  \
    3. Artysta klika przycisk.  \
    4. System otwiera formularz wypełniania detali pracy (PU7, @tab:pu7).],
    [*Wyjątki i scenariusze alternatywne*], [---],
    [*Warunki końcowe*], [Artysta przechodzi do formularza PU7 (@tab:pu7).],
    [*Komentarze*], [---],
  ),
) <tab:pu5>

==== PU6 - Edytowanie pracy

#figure(
  caption: [Przypadek użycia PU6 - Edytowanie pracy],
  kind: table,
  table(
    columns: (1fr, 3fr),
    table.header([*Nazwa*], [Edytowanie pracy]),
    [*Warunki wstępne*], [Artysta jest zalogowany i posiada co najmniej jedną pracę w portfolio.],
    [*Podstawowy scenariusz interakcji*], [1. Artysta przechodzi do sekcji "Prace".  \
    2. System wyświetla listę prac.  \
    3. Artysta wybiera pracę i klika "Edytuj".  \
    4. System otwiera formularz edycji detali pracy (PU7, @tab:pu7).],
    [*Wyjątki i scenariusze alternatywne*], [---],
    [*Warunki końcowe*], [Artysta przechodzi do formularza PU7 (@tab:pu7).],
    [*Komentarze*], [---],
  ),
) <tab:pu6>

==== PU7 - Wypełnianie detali pracy

#figure(
  caption: [Przypadek użycia PU7 - Wypełnianie detali pracy],
  kind: table,
  table(
    columns: (1fr, 3fr),
    table.header([*Nazwa*], [Wypełnianie detali pracy]),
    [*Warunki wstępne*], [Artysta przechodzi z PU5 (@tab:pu5) lub PU6 (@tab:pu6). System wyświetla formularz dodawania albo edycji pracy.],
    [*Podstawowy scenariusz interakcji*], [1. System wyświetla wymagane pola: tytuł i kategorię, oraz opcjonalne: media, opis, wymiary, rok wykonania, technika.  \
    2. Artysta wypełnia pola i klika "Zapisz".  \
    3. System waliduje dane, przesyła obraz, zapisuje dane w bazie i wraca do listy prac.],
    [*Wyjątki i scenariusze alternatywne*], [
    *2a. Anulowanie:* System wraca do listy prac i ostrzega o utracie niezapisanych zmian.  \
    *2b. Opuszczenie formularza:* System ostrzega o utracie niezapisanych zmian. \
    *3a. Błąd walidacji:* System informuje o zbyt dużym lub nieobsługiwanym pliku albo pustym polu.
    ],
    [*Warunki końcowe*], [Praca zostaje dodana lub zaktualizowana.],
    [*Komentarze*], [Formularz jest używany zarówno do dodawania, jak i edytowania pracy.],
  ),
) <tab:pu7>

==== PU8 - Usuwanie pracy

#figure(
  caption: [Przypadek użycia PU8 - Usuwanie pracy],
  kind: table,
  table(
    columns: (1fr, 3fr),
    table.header([*Nazwa*], [Usuwanie pracy]),
    [*Warunki wstępne*], [Artysta jest zalogowany, a praca istnieje w galerii.],
    [*Podstawowy scenariusz interakcji*], [1. Artysta przechodzi do sekcji "Prace" i wybiera pracę.  \
    2. Artysta klika "Usuń" i potwierdza decyzję.  \
    3. System usuwa pracę, zdjęcia i metadane z bazy danych.  \
    4. System wyświetla komunikat i wraca do listy prac.],
    [*Wyjątki i scenariusze alternatywne*], [*2a. Anulowanie usunięcia:* Artysta anuluje usunięcie lub zamyka okno. Praca pozostaje bez zmian.],
    [*Warunki końcowe*], [Praca jest trwale usunięta, a zajmowane miejsce na serwerze zostaje zwolnione.],
    [*Komentarze*], [---],
  ),
) <tab:pu8>

==== PU9 - Dodawanie kategorii prac

#figure(
  caption: [Przypadek użycia PU9 - Dodawanie kategorii prac],
  kind: table,
  table(
    columns: (1fr, 3fr),
    table.header([*Nazwa*], [Dodawanie kategorii prac]),
    [*Warunki wstępne*], [Artysta jest zalogowany w panelu edycji portfolio.],
    [*Podstawowy scenariusz interakcji*], [1. Artysta przechodzi do sekcji "Kategorie".  \
    2. Artysta wypełnia formularz "Dodaj nową kategorię" podając nazwy w obu językach.  \
    3. System waliduje unikalność nazwy, dodaje kategorię i wyświetla ją na liście.],
    [*Wyjątki i scenariusze alternatywne*], [*3a. Duplikat:* System wyświetla błąd i umożliwia zmianę nazwy.],
    [*Warunki końcowe*], [Nowa kategoria jest dostępna przy dodawaniu i edytowaniu prac oraz widoczna dla odbiorców.],
    [*Komentarze*], [Każda kategoria powinna mieć unikalną nazwę.],
  ),
) <tab:pu9>

==== PU10 - Edytowanie kategorii prac

#figure(
  caption: [Przypadek użycia PU10 - Edytowanie kategorii prac],
  kind: table,
  table(
    columns: (1fr, 3fr),
    table.header([*Nazwa*], [Edytowanie kategorii prac]),
    [*Warunki wstępne*], [Artysta jest zalogowany i istnieje co najmniej jedna kategoria.],
    [*Podstawowy scenariusz interakcji*], [1. Artysta przechodzi do sekcji "Kategorie" i wybiera kategorię.  \
    2. Artysta klika "Edytuj", zmienia dane i wybiera "Zapisz kategorię".  \
    3. System waliduje dane, aktualizuje kategorię i wraca do listy.],
    [*Wyjątki i scenariusze alternatywne*], [
    *2a. Usuwanie kategorii:* Jeśli kategoria zawiera prace, system wyświetla komunikat o błędzie. \ *3a. Duplikat:* System wyświetla błąd i umożliwia zmianę nazwy.],
    [*Warunki końcowe*], [Zmiany kategorii są zapisane, a prace mają zaktualizowane informacje.],
    [*Komentarze*], [Nie można usunąć kategorii zawierającej prace bez ich uprzedniego przeniesienia.],
  ),
) <tab:pu10>

==== PU11 - Dodawanie tagów

#figure(
  caption: [Przypadek użycia PU11 - Dodawanie tagów],
  kind: table,
  table(
    columns: (1fr, 3fr),
    table.header([*Nazwa*], [Dodawanie tagów]),
    [*Warunki wstępne*], [Artysta jest zalogowany w panelu edycji portfolio.],
    [*Podstawowy scenariusz interakcji*], [1. Artysta przechodzi do sekcji "Kategorie".  \
    2. Artysta wypełnia formularz "Dodaj nowy tag" podając nazwy w obu językach.  \
    3. System waliduje unikalność nazwy, dodaje tag i wyświetla ją na liście.],
    [*Wyjątki i scenariusze alternatywne*], [*3a. Duplikat:* System wyświetla błąd i umożliwia zmianę nazwy.],
    [*Warunki końcowe*], [Nowy tag jest dostępny przy dodawaniu i edytowaniu prac oraz widoczny dla odbiorców.],
    [*Komentarze*], [Każdy tag powinien mieć unikalną nazwę.],
  ),
) <tab:pu11>

==== PU12 - Edytowanie tagów

#figure(
  caption: [Przypadek użycia PU12 - Edytowanie tagów],
  kind: table,
  table(
    columns: (1fr, 3fr),
    table.header([*Nazwa*], [Edytowanie tagów]),
    [*Warunki wstępne*], [Artysta jest zalogowany i istnieje co najmniej jeden tag.],
    [*Podstawowy scenariusz interakcji*], [1. Artysta przechodzi do sekcji "Kategorie" i wybiera tag.  \
    2. Artysta klika "Edytuj", zmienia dane i wybiera "Zapisz Tag".  \
    3. System waliduje dane, aktualizuje tag i wraca do listy.],
    [*Wyjątki i scenariusze alternatywne*], [*3a. Duplikat:* System wyświetla błąd i umożliwia zmianę nazwy.],
    [*Warunki końcowe*], [Zmiany tagu są zapisane, a prace mają zaktualizowane informacje.],
    [*Komentarze*], [---],
  ),
) <tab:pu12>

==== PU13 - Dodawanie i edytowanie informacji o sobie

#figure(
  caption: [Przypadek użycia PU13 - Dodawanie i edytowanie informacji o sobie],
  kind: table,
  table(
    columns: (1fr, 3fr),
    table.header([*Nazwa*], [Dodawanie i edytowanie informacji o sobie]),
    [*Warunki wstępne*], [Artysta jest zalogowany w panelu edycji portfolio.],
    [*Podstawowy scenariusz interakcji*], [1. Artysta przechodzi do sekcji "Profil".  \
    2. System wyświetla pola: zdjęcie profilowe, imię i nazwisko, biografia, e-mail, linki do mediów społecznościowych oraz tekst sekcji kontaktowej.  \
    3. Artysta aktualizuje dane i klika "Zapisz zmiany".  \
    4. System waliduje dane, aktualizuje profil i wyświetla komunikat potwierdzający.],
    [*Wyjątki i scenariusze alternatywne*], [*3a. Anulowanie:* System ostrzega o utracie niezapisanych zmian. \ *4a. Błąd zdjęcia:* System informuje o zbyt dużym lub niedozwolonym pliku.
    ],
    [*Warunki końcowe*], [Informacje artysty są zaktualizowane i widoczne dla odbiorców.],
    [*Komentarze*], [---],
  ),
) <tab:pu13>

==== PU14 - Personalizacja strony

#figure(
  caption: [Przypadek użycia PU14 - Personalizacja strony],
  kind: table,
  table(
    columns: (1fr, 3fr),
    table.header([*Nazwa*], [Personalizacja strony]),
    [*Warunki wstępne*], [Artysta jest zalogowany w panelu edycji portfolio.],
    [*Podstawowy scenariusz interakcji*], [1. Artysta przechodzi do sekcji "Układ i Personalizacja".  \
    2. System wyświetla dwie sekcje edycji: "Kafelki Bento Box - strona główna" oraz "Czcionki i kolorystyka", wczytując aktualne ustawienia.  \
    3. Artysta w sekcji układu Bento Box wybiera widok ("Desktop" lub "Mobile") oraz modyfikuje siatkę: \
      - dodaje nowe kafelki w jednym z dostępnych rozmiarów (`1:1`, `2:1`, `1:2`, `2:2`), wybierając widoczną pracę oraz jej zdjęcie, \
      - zmienia położenie kafelków metodą przeciągnij i upuść (na wolne pole lub zamieniając je miejscami z innymi kafelkami), \
      - zmienia rozmiar kafelka, przypisaną pracę/zdjęcie lub usuwa kafelek z listy. \
    4. Artysta zatwierdza zmiany w układzie przyciskiem zapisu. \
    5. W sekcji "Czcionki i kolorystyka" artysta wybiera gotowy zestaw domyślny (preset) albo ręcznie ustawia czcionki (podstawową, pomocniczą i tekstu) oraz kolory (tekstu, tła i akcentu), obserwując podgląd na żywo. \
    6. Artysta zatwierdza zmiany motywu przyciskiem zapisu. \
    7. System waliduje przesłane dane, zapisuje konfigurację i odświeża widok publiczny portfolio.
    ],
    [*Wyjątki i scenariusze alternatywne*], [
    *3a. Brak widocznych prac ze zdjęciami:* system informuje w oknie wyboru, że brak dostępnych prac, i nie pozwala dodać kafelka. \
    *3b. Brak miejsca w siatce lub niepoprawny układ:* system uniemożliwia dodanie kafelka przekraczającego limit siatki bądź zwraca komunikat błędu walidacji przy próbie zapisu. \
    *4a / 6a. Cofnięcie zmian:* artysta wybiera opcję cofnięcia w danej sekcji, a system przywraca ostatnio zapisany stan. \
    *5a. Niepoprawne dane motywu:* przy błędnym formacie koloru (HEX) lub nieobsługiwanej czcionce system wyświetla błąd walidacji przy odpowiednim polu i nie zapisuje zmian. \
    *7a. Próba opuszczenia strony z niezapisanymi zmianami:* system wyświetla okno potwierdzenia z ostrzeżeniem o utracie niezapisanych modyfikacji.
    ],
    [*Warunki końcowe*], [
    Nowy układ kafelków Bento Box oraz wybrany motyw (czcionki i kolorystyka) zostają zapisane i są natychmiast widoczne na stronie publicznej portfolio.
    ],
    [*Komentarze*], [
    Sekcje "Kafelki Bento Box - strona główna" oraz "Czcionki i kolorystyka" są zapisywane i cofane niezależnie. Widoki `Desktop` i `Mobile` współdzielą ten sam zestaw kafelków, różniąc się jedynie ich rozmieszczeniem i proporcjami.
    ],
  ),
) <tab:pu14>
