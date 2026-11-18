= Wymagania i specyfikacja systemu (Marta Kociszewska)  <chapter-methodology>

== Identyfikacja użytkowników 

Proces inżynierii wymagań rozpoczął się od przeanalizowania docelowej grupy użytkowników. Zrozumienie ich cech, potrzeb, problemów oraz kontekstu użycia stanowiło fundament do zaprojektowania interfejsu i zdefiniowania kluczowych funkcji aplikacji. Stworzono profile reprezentatywnych użytkoników (tzw. persony), którzy reprezentują dwóch głównych aktorów systemu: artystę (twórcę portfolio) oraz odbiorcę (użytkownika końcowego).

- *Artysta (Twórca)* - główny użytkownik systemu. Grupa ta charakteryzuje się wysoką wrażliwością estetyczną, lecz na ogół nie posiada specjalistycznych umiejętności technicznych i programistycznych. Głównym celem tego aktora jest szybkie stworzenie scentralizowanego, uporządkowanego portfolio. Artysta oczekuje wysoce intuicyjnego interfejsu. Aktor ten korzysta z panelu zarządzania głównie na komputerze stacjonarnym w celu wgrywania plików, jednak wymaga również możliwości zarządzania treścią z poziomu urządzeń mobilnych.

- *Odbiorca (Użytkownik końcowy)* - osoba odwiedzająca wygenerowane portfolio, reprezentująca potencjalnych klientów lub miłośników sztuki. Jej główną potrzebą jest płynne i wygodne przeglądanie galerii, ułatwione dzięki mechanizmom filtrowania prac oraz zoptymalizowanemu czasowi ładowania grafik. Ze względu na fakt, iż użytkownik ten konsumuje treści niemal wyłącznie za pomocą urządzeń mobilnych (smartfony, tablety), absolutnym priorytetem jest przejrzystość interfejsu oraz jego pełne dostosowanie do małych ekranów. Ponadto, Odbiorca oczekuje szybkiego i bezpośredniego sposobu na nawiązanie kontaktu z artystą (np. poprzez czytelne sekcje z informacjami o twórcy i linkami społecznościowymi).

=== Artysta

#figure(
  caption: [Profil persony - Artysta],
  kind: table,
  table(
    columns: (auto, auto, 1fr),
    align: left,
    stroke: .5pt,
    inset: 6pt,
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
    stroke: .5pt,
    inset: 6pt,
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
    [Oczekuje prostego interfejsu opartego na mechanizmie „przeciągnij i upuść” (ang. _drag-and-drop_)],
    [Wykonanie podstawowej czynności, jak dodanie pracy do galerii, nie może jej zająć więcej niż 3 minuty],
  ),
) <tab:persona-artist-details>

=== Odbiorca

#figure(
  caption: [Profil persony - Odbiorca],
  kind: table,
  table(
    columns: (auto, auto, 1fr),
    align: left,
    stroke: .5pt,
    inset: 6pt,
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
    stroke: .5pt,
    inset: 6pt,
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

== Analiza wymagań

Fundamentem zaprojektowanej aplikacji była precyzyjna identyfikacja potrzeb jej użytkowników docelowych: twórców oraz ich odbiorców. Poniżej przedstawiono kompleksowy zbiór zdefiniowanych wymagań funkcjonalnych, jakościowych (niefunkcjonalnych) oraz opracowane scenariusze interakcji z systemem.

=== Wymagania funcjonalne
Wymagania funkcjonalne zdefiniowano z perspektywy dwóch kluczowych aktorów: artysty (twórcy portfolio) oraz odbiorcy. 

Artysta posiada autoryzowany dostęp do systemu, co umożliwia mu kompleksowe zarządzanie treścią: dodawanie, edycję i usuwanie prac graficznych oraz kategorii, a także aktualizację profilu biograficznego. Jedną z najważniejszych funkcji z perspektywy twórcy jest możliwość wizualnej personalizacji portfolio za pomocą interaktywnego edytora opartego na modułowym układzie "Bento Box". Moduł ten pozwala na elastyczne skalowanie oraz pozycjonowanie kafelków z wykorzystaniem intuicyjnego mechanizmu _drag-and-drop_. 

Z kolei odbiorca zyskuje możliwość przeglądania galerii, zmiany preferowanego języka interfejsu, a także nawiązywania bezpośredniej komunikacji z artystą za pośrednictwem zintegrowanego formularza.

=== Wymagania jakościowe
Wymagania jakościowe (niefunkcjonalne) precyzują kryteria brzegowe dotyczące wydajności, bezpieczeństwa oraz przenośności. Dane autoryzacyjne użytkowników muszą być zahasowane przy użyciu nowoczesnych algorytmów kryptograficznych przed ich trwałym zapisem w bazie danych. Dodatkowym wymogiem niezawodnościowym jest obsługa wielu formatów plików graficznych oraz zabezpieczenie danych formularzowych przed ich utratą w przypadku nagłego przerwania sesji. Ważnym ograniczeniem projektowym jest uniwersalność i przenośność rozwiązania. System musi zapewnić pełną kompatybilność oraz responsywność w najpopularniejszych przeglądarkach internetowych (m.in. Google Chrome, Safari, Mozilla Firefox), jak również na urządzeniach mobilnych z systemami operacyjnymi Android i iOS. Z perspektywy _User Experience_, zebrane wytyczne analityczne wskazują, że aplikacja powinna charakteryzować się profesjonalnym, przejrzystym i zorganizowanym interfejsem, unikając wrażenia nadmiernego skomplikowania, aby stanowić narzędzie przystępne i przyjazne w odbiorze dla osób nietechnicznych.

=== Scenariusze interakcji z systemem

W celu precyzyjnego określenia funkcjonalności systemu oraz sposobu, w jaki użytkownicy będą z niego korzystać, opracowano model przypadków użycia (ang. _Use Case Model_). Model ten stanowi fundament specyfikacji wymagań i pozwala na graficzne oraz opisowe przedstawienie interakcji pomiędzy aktorami a systemem. Poniższe diagramy prezentują ogólny zarys tych interakcji, uwzględniając również relacje zawierania (`<<include>>`) oraz rozszerzania (`<<extend>>`) dla bardziej złożonych operacji związanych z zarządzaniem pracami.

#figure(
  image("../img/use-case-viewer.png", width: 80%),
  caption: [Scenariusz interakcji z systemem z perspektywy odbiorcy.],
)
#figure(
  image("../img/use-case-artist.png", width: 80%),
  caption: [Scenariusz interakcji z systemem z perspektywy artysty (twórcy portfolio).],
)


==== Przypadki użycia z perspektywy odbiorcy

Odbiorca reprezentuje użytkownika końcowego, który odwiedza stworzone portfolio. Z perspektywy systemu, Odbiorca jest użytkownikiem niezalogowanym (gościem), co ogranicza jego uprawnienia wyłącznie do odczytu danych oraz korzystania z publicznych modułów komunikacyjnych.

==== PU1 - Przeglądanie galerii zdjęć

#figure(
  caption: [Przypadek użycia PU1 - Przeglądanie galerii zdjęć],
  kind: table,
  table(
    columns: (1fr, 3fr),
    stroke: .5pt,
    inset: 6pt,
    table.header([*Nazwa*], [Przeglądanie galerii zdjęć]),
    [*Warunki wstępne*], [Artysta udostępnił publicznie swoje portfolio w systemie ArtSea.],
    [*Podstawowy scenariusz interakcji*], [1. Odbiorca wchodzi na podstronę galerii artysty. \
    2. System ładuje układ strony i wyświetla miniatury prac. \
    3. Odbiorca wybiera interesującą go miniaturę. \
    4. System wyświetla powiększone zdjęcie w wysokiej rozdzielczości wraz z tytułem, opisem i użytymi technikami. \
    5. Odbiorca zamyka podgląd powiększonego zdjęcia. \
    6. System powraca do widoku galerii, zachowując pozycję przewijania.],
    [*Wyjątki i scenariusze alternatywne*], [*Filtrowanie po kategorii:* Odbiorca wybiera kategorię prac, a system odświeża siatkę, pokazując wyłącznie miniatury z wybranej kategorii. \
    *Brak prac:* Jeśli portfolio jest puste, system wyświetla odpowiedni komunikat.],
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
        stroke: .5pt,
        inset: 6pt,
        table.header([*Nazwa*], [Kontakt z artystą]),
        [*Warunki wstępne*], [Odbiorca znajduje się w portfolio artysty, a
        artysta uzupełnił w profilu adres e-mail do kontaktu lub linki
        społecznościowe.],
        [*Podstawowy scenariusz interakcji*], [
        1. Odbiorca wybiera w nawigacji opcję „KONTAKT”. \
        2. System wyświetla treść zachęcającą do kontaktu, adres e-mail wformie odnośnika `mailto:` oraz listę zewnętrznych linków społecznościowych artysty. \
        3. Odbiorca klika adres e-mail lub wybrany odnośnik społecznościowy. \
        4. Przeglądarka otwiera domyślnego klienta poczty e-mail z wypełnionym adresem odbiorcy (dla linku `mailto:`) albo otwiera profil artysty w nowej karcie przeglądarki.],
        [*Wyjątki i scenariusze alternatywne*], [*Brak adresu e-mail w
        profilu:* Jeśli artysta pozostawił pole e-mail puste, system ukrywa odnośnik `mailto:` i prezentuje wyłącznie pozostałe treści oraz ewentualne linki społecznościowe. \
        *Brak linków społecznościowych:* Sekcja z odnośnikami społecznościowymi nie jest wyświetlana. \
        *Brak skonfigurowanego klienta poczty:* Jeśli urządzenie odbiorcy nie ma przypisanej aplikacji do obsługi `mailto:`, odbiorca może skopiować widoczny adres e-mail bezpośrednio ze strony.],
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
    stroke: .5pt,
    inset: 6pt,
    table.header([*Nazwa*], [Wybór języka]),
    [*Warunki wstępne*], [Odbiorca znajduje się w portfolio. System obsługuje język polski i angielski, a domyślnie używa języka przeglądarki.],
    [*Podstawowy scenariusz interakcji*], [1. Odbiorca lokalizuje i klika przycisk wyboru języka. \
    2. System wyświetla listę dostępnych języków. \
    3. Odbiorca wybiera język. \
    4. System przeładowuje stronę w wybranym języku.],
    [*Wyjątki i scenariusze alternatywne*], [Jeśli treści autorskie nie mają tłumaczenia, interfejs zmienia się na wybrany język, zamiast opisu zdjęć i biogramu, wyświetlony zostaje komunikat o braku tłumaczenia.],
    [*Warunki końcowe*], [Interfejs prezentowany jest w wybranym języku.],
    [*Komentarze*], [---],
  ),
) <tab:pu3>

==== Przypadki użycia z perspektywy artysty

Artysta pełni w systemie rolę administratora własnego portfolio. Ze względu na założenie, że docelowy twórca nie musi posiadać wiedzy technicznej, przypadki użycia w tej grupie zostały zaprojektowane tak, aby maksymalnie uprościć process zarządzania treścią. Aktor ten posiada pełne uprawnienia do modyfikacji struktury swojej strony, w tym zarządzania pracami, kategoriami, informacjami biograficznymi oraz wizualną konfiguracją układu.

==== PU4 - Rejestracja konta

#figure(
  caption: [Przypadek użycia PU4 - Rejestracja konta],
  kind: table,
  table(
    columns: (1fr, 3fr), stroke: .5pt, inset: 6pt,
    table.header([*Nazwa*], [Rejestracja konta]),
    [*Warunki wstępne*], [],
    [*Podstawowy scenariusz interakcji*], [],
    [*Wyjątki i scenariusze alternatywne*], [],
    [*Warunki końcowe*], [],
    [*Komentarze*], [],
  ),
) <tab:pu4>

==== PU5 - Dodawanie pracy

#figure(
  caption: [Przypadek użycia PU5 - Dodawanie pracy],
  kind: table,
  table(
    columns: (1fr, 3fr), stroke: .5pt, inset: 6pt,
    table.header([*Nazwa*], [Dodawanie pracy]),
    [*Warunki wstępne*], [Artysta jest zalogowany w panelu edycji portfolio.],
    [*Podstawowy scenariusz interakcji*], [1. Artysta przechodzi do sekcji „Prace”.  \
    2. System wyświetla listę prac z przyciskiem „Dodaj pracę”.  \
    3. Artysta klika przycisk.  \
    4. System otwiera formularz wypełniania detali pracy (PU7).],
    [*Wyjątki i scenariusze alternatywne*], [---],
    [*Warunki końcowe*], [Artysta przechodzi do formularza PU7.],
    [*Komentarze*], [---],
  ),
) <tab:pu5>

==== PU6 - Edytowanie pracy

#figure(
  caption: [Przypadek użycia PU6 - Edytowanie pracy],
  kind: table,
  table(
    columns: (1fr, 3fr), stroke: .5pt, inset: 6pt,
    table.header([*Nazwa*], [Edytowanie pracy]),
    [*Warunki wstępne*], [Artysta jest zalogowany i posiada co najmniej jedną pracę w portfolio.],
    [*Podstawowy scenariusz interakcji*], [1. Artysta przechodzi do sekcji „Prace”.  \
    2. System wyświetla listę prac.  \
    3. Artysta wybiera pracę i klika „Edytuj”.  \
    4. System otwiera formularz edycji detali pracy (PU7).],
    [*Wyjątki i scenariusze alternatywne*], [---],
    [*Warunki końcowe*], [Artysta przechodzi do formularza PU7.],
    [*Komentarze*], [---],
  ),
) <tab:pu6>

==== PU7 - Wypełnianie detali pracy

#figure(
  caption: [Przypadek użycia PU7 - Wypełnianie detali pracy],
  kind: table,
  table(
    columns: (1fr, 3fr), stroke: .5pt, inset: 6pt,
    table.header([*Nazwa*], [Wypełnianie detali pracy]),
    [*Warunki wstępne*], [Artysta przechodzi z PU5 lub PU6. System wyświetla formularz dodawania albo edycji pracy.],
    [*Podstawowy scenariusz interakcji*], [1. System wyświetla wymagane pola: tytuł i kategorię, oraz opcjonalne: media, opis, wymiary, rok wykonania, technika.  \
    2. Artysta wypełnia pola i klika „Zapisz”.  \
    3. System waliduje dane, przesyła obraz, zapisuje dane w bazie i wraca do listy prac.],
    [*Wyjątki i scenariusze alternatywne*], [
    *Anulowanie:* System wraca do listy prac i ostrzega o utracie niezapisanych zmian.  \
    *Błąd walidacji:* System informuje o zbyt dużym lub nieobsługiwanym pliku albo pustym polu. \
    *Opuszczenie formularza:* System ostrzega o utracie niezapisanych zmian.],
    [*Warunki końcowe*], [Praca zostaje dodana lub zaktualizowana.],
    [*Komentarze*], [Formularz jest używany zarówno do dodawania, jak i edytowania pracy.],
  ),
) <tab:pu7>

==== PU8 - Usuwanie pracy

#figure(
  caption: [Przypadek użycia PU8 - Usuwanie pracy],
  kind: table,
  table(
    columns: (1fr, 3fr), stroke: .5pt, inset: 6pt,
    table.header([*Nazwa*], [Usuwanie pracy]),
    [*Warunki wstępne*], [Artysta jest zalogowany, a praca istnieje w galerii.],
    [*Podstawowy scenariusz interakcji*], [1. Artysta przechodzi do sekcji „Prace” i wybiera pracę.  \
    2. Artysta klika „Usuń” i potwierdza decyzję.  \
    3. System usuwa pracę, zdjęcia i metadane z bazy danych.  \
    4. System wyświetla komunikat i wraca do listy prac.],
    [*Wyjątki i scenariusze alternatywne*], [Artysta anuluje usunięcie lub zamyka okno. Praca pozostaje bez zmian.],
    [*Warunki końcowe*], [Praca jest trwale usunięta, a zajmowane miejsce na serwerze zostaje zwolnione.],
    [*Komentarze*], [---],
  ),
) <tab:pu8>

==== PU9 - Dodawanie kategorii prac

#figure(
  caption: [Przypadek użycia PU9 - Dodawanie kategorii prac],
  kind: table,
  table(
    columns: (1fr, 3fr), stroke: .5pt, inset: 6pt,
    table.header([*Nazwa*], [Dodawanie kategorii prac]),
    [*Warunki wstępne*], [Artysta jest zalogowany w panelu edycji portfolio.],
    [*Podstawowy scenariusz interakcji*], [1. Artysta przechodzi do sekcji „Kategorie”.  \
    1. Wypełnia formularz „Dodaj nową kategorię” podając nazwy w obydwóch językach.  \
    2. System waliduje unikalność nazwy, dodaje kategorię i wyświetla ją na liście.],
    [*Wyjątki i scenariusze alternatywne*], [*Duplikat:* System wyświetla błąd i umożliwia zmianę nazwy.],
    [*Warunki końcowe*], [Nowa kategoria jest dostępna przy dodawaniu i edytowaniu prac oraz widoczna dla odbiorców.],
    [*Komentarze*], [Każda kategoria powinna mieć unikalną nazwę.],
  ),
) <tab:pu9>

==== PU10 - Edytowanie kategorii prac

#figure(
  caption: [Przypadek użycia PU10 - Edytowanie kategorii prac],
  kind: table,
  table(
    columns: (1fr, 3fr), stroke: .5pt, inset: 6pt,
    table.header([*Nazwa*], [Edytowanie kategorii prac]),
    [*Warunki wstępne*], [Artysta jest zalogowany i istnieje co najmniej jedna kategoria.],
    [*Podstawowy scenariusz interakcji*], [1. Artysta przechodzi do sekcji „Kategorie” i wybiera kategorię.  \
    1. Artysta klika „Edytuj”, zmienia dane i wybiera „Zapisz kategorię".  \
    2. System waliduje dane, aktualizuje kategorię i wraca do listy.],
    [*Wyjątki i scenariusze alternatywne*], [*Duplikat:* System wyświetla błąd i umożliwia zmianę nazwy.  \
    *Usuwanie kategorii:* Jeśli kategoria zawiera prace, system wyświetla komunikat o błędzie.],
    [*Warunki końcowe*], [Zmiany kategorii są zapisane, a prace mają zaktualizowane informacje.],
    [*Komentarze*], [Nie można usunąć kategorii zawierającej prace bez ich uprzedniego przeniesienia.],
  ),
) <tab:pu10>

==== PU11 - Dodawanie tagów

#figure(
  caption: [Przypadek użycia PU11 - Dodawanie tagów],
  kind: table,
  table(
    columns: (1fr, 3fr), stroke: .5pt, inset: 6pt,
    table.header([*Nazwa*], [Dodawanie tagów]),
    [*Warunki wstępne*], [Artysta jest zalogowany w panelu edycji portfolio.],
    [*Podstawowy scenariusz interakcji*], [1. Artysta przechodzi do sekcji "Kategorie".  \
    1. Wypełnia formularz „Dodaj nowy tag” podając nazwy w obydwóch językach.  \
    2. System waliduje unikalność nazwy, dodaje tag i wyświetla ją na liście.],
    [*Wyjątki i scenariusze alternatywne*], [*Duplikat:* System wyświetla błąd i umożliwia zmianę nazwy.],
    [*Warunki końcowe*], [Nowy tag jest dostępny przy dodawaniu i edytowaniu prac oraz widoczny dla odbiorców.],
    [*Komentarze*], [Każdy tag powinien mieć unikalną nazwę.],
  ),
) <tab:pu11>

==== PU12 - Edytowanie tagów

#figure(
  caption: [Przypadek użycia PU12 - Edytowanie tagów],
  kind: table,
  table(
    columns: (1fr, 3fr), stroke: .5pt, inset: 6pt,
    table.header([*Nazwa*], [Edytowanie tagów]),
    [*Warunki wstępne*], [Artysta jest zalogowany i istnieje co najmniej jeden tag.],
    [*Podstawowy scenariusz interakcji*], [1. Artysta przechodzi do sekcji „Kategorie” i wybiera tag.  \
    1. Artysta klika „Edytuj”, zmienia dane i wybiera „Zapisz Tag ".  \
    2. System waliduje dane, aktualizuje tag i wraca do listy.],
    [*Wyjątki i scenariusze alternatywne*], [*Duplikat:* System wyświetla błąd i umożliwia zmianę nazwy.],
    [*Warunki końcowe*], [Zmiany tagu są zapisane, a prace mają zaktualizowane informacje.],
    [*Komentarze*], [---],
  ),
) <tab:pu12>

==== PU13 - Dodawanie i edytowanie informacji o sobie

#figure(
  caption: [Przypadek użycia PU13 - Dodawanie i edytowanie informacji o sobie],
  kind: table,
  table(
    columns: (1fr, 3fr), stroke: .5pt, inset: 6pt,
    table.header([*Nazwa*], [Dodawanie i edytowanie informacji o sobie]),
    [*Warunki wstępne*], [Artysta jest zalogowany w panelu edycji portfolio.],
    [*Podstawowy scenariusz interakcji*], [1. Artysta przechodzi do sekcji „Profil”.  \
    1. System wyświetla pola: zdjęcie profilowe, imię i nazwisko, biografia, e-mail, linki do mediów społecznościowych oraz tekst sekcji kontaktowej.  \
    2. Artysta aktualizuje dane i klika „Zapisz zmiany”.  \
    3. System waliduje dane, aktualizuje profil i wyświetla komunikat potwierdzający.],
    [*Wyjątki i scenariusze alternatywne*], [*Błąd zdjęcia:* System informuje o zbyt dużym lub niedozwolonym pliku.  \
    *Anulowanie:* System ostrzega o utracie niezapisanych zmian.],
    [*Warunki końcowe*], [Informacje artysty są zaktualizowane i widoczne dla odbiorców.],
    [*Komentarze*], [---],
  ),
) <tab:pu13>

==== PU14 - Personalizacja strony

#figure(
  caption: [Przypadek użycia PU14 - Personalizacja strony],
  kind: table,
  table(
    columns: (1fr, 3fr), stroke: .5pt, inset: 6pt,
    table.header([*Nazwa*], [Personalizacja strony]),
    [*Warunki wstępne*], [Artysta jest zalogowany w panelu edycji portfolio.],
    [*Podstawowy scenariusz interakcji*], [1. Artysta przechodzi do sekcji „Personalizacja”.  \
    2. System wyświetla edytor strony głównej Bento Box.  \
    3. Artysta zmienia rozmiar i pozycję kafelków metodami resize i drag-and-drop.  \
    4. System dopasowuje pozostałe kafelki.  \
    5. Artysta wybiera kolorystykę i typ czcionki, obserwuje podgląd na żywo i klika „Zapisz układ”.  \
    6. System zapisuje układ i wyświetla komunikat potwierdzający.],
    [*Wyjątki i scenariusze alternatywne*], [*Anulowanie:* System pyta o potwierdzenie i przywraca poprzedni układ.  \
    *Przywrócenie domyślnego układu:* Artysta może wybrać „Resetuj do domyślnego”.],
    [*Warunki końcowe*], [Nowe ustawienia są zapisane i widoczne dla odbiorców po odświeżeniu strony.],
    [*Komentarze*], [Układ powinien być responsywny.],
  ),
) <tab:pu14>

