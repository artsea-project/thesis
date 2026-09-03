= Metodologia <chapter-methodology>

// TODO: Opisz przyjęte metody, narzędzia i założenia projektowe.

Proces tworzenia autorskiego systemu CMS wymagał przyjęcia ustrukturyzowanego podejścia projektowego. Niniejszy rozdział szczegółowo opisuje wybraną metodykę zwinnego zarządzania projektem, uzasadnia dobór stosu technologicznego oraz prezentuje architekturę rozwiązania przy użyciu standardowych pomocy wizualnych, takich jak diagramy UML czy schematy bazy danych.


== Analiza wymagań

// TODO: Przedstaw wymagania i ograniczenia rozwiązania.

Fundamentem zaprojektowanej aplikacji była precyzyjna identyfikacja potrzeb jej użytkowników docelowych: twórców oraz ich odbiorców. Poniżej przedstawiono kompleksowy zbiór zdefiniowanych wymagań funkcjonalnych, jakościowych (niefunkcjonalnych) oraz opracowane scenariusze interakcji z systemem.

=== Wymagania funcjonalne
Wymagania funkcjonalne zdefiniowano z perspektywy dwóch kluczowych aktorów: artysty (twórcy portfolio) oraz odbiorcy. 

Artysta posiada autoryzowany dostęp do systemu, co umożliwia mu kompleksowe zarządzanie treścią: dodawanie, edycję i usuwanie prac graficznych oraz kategorii, a także aktualizację profilu biograficznego. Jedną z najważniejszych funkcji z perspektywy twórcy jest możliwość wizualnej personalizacji portfolio za pomocą interaktywnego edytora opartego na modułowym układzie "Bento Box". Moduł ten pozwala na elastyczne skalowanie oraz pozycjonowanie kafelków z wykorzystaniem intuicyjnego mechanizmu "drag-and-drop". 

Z kolei odbiorca zyskuje możliwość przeglądania galerii, zmiany preferowanego języka interfejsu, a także nawiązywania bezpośredniej komunikacji z artystą za pośrednictwem zintegrowanego formularza.

=== Wymagania jakościowe
Wymagania jakościowe (niefunkcjonalne) precyzują kryteria brzegowe dotyczące wydajności, bezpieczeństwa oraz przenośności. 

W obszarze bezpieczeństwa bezwzględnie wymagane jest szyfrowanie ruchu sieciowego za pomocą certyfikatu SSL (wymuszenie protokołu HTTPS). 

Ponadto, dane autoryzacyjne użytkowników muszą być zahasowane przy użyciu nowoczesnych algorytmów kryptograficznych przed ich trwałym zapisem w bazie danych. 

Dodatkowym wymogiem niezawodnościowym jest obsługa wielu formatów plików graficznych oraz zabezpieczenie danych formularzowych przed ich utratą w przypadku nagłego przerwania sesji.

Ważnym ograniczeniem projektowym jest uniwersalność i przenośność rozwiązania. System musi zapewnić pełną kompatybilność oraz responsywność (RWD) w najpopularniejszych przeglądarkach internetowych (m.in. Google Chrome, Safari, Mozilla Firefox), jak również na urządzeniach mobilnych z systemami operacyjnymi Android i iOS. 

Z perspektywy User Experience (UX), zebrane wytyczne analityczne wskazują, że aplikacja powinna charakteryzować się profesjonalnym, przejrzystym i zorganizowanym interfejsem, unikając wrażenia nadmiernego skomplikowania, aby stanowić narzędzie przystępne i przyjazne w odbiorze dla osób nietechnicznych.

=== Scenariusze interakcji z systemem

W celu precyzyjnego określenia funkcjonalności systemu "ArtSea" oraz sposobu, w jaki użytkownicy będą z niego korzystać, opracowano model przypadków użycia (ang. *Use Case Model*). Model ten stanowi fundament specyfikacji wymagań i pozwala na graficzne oraz opisowe przedstawienie interakcji pomiędzy aktorami a systemem. W projektowanym rozwiązaniu zidentyfikowano dwóch głównych aktorów: Odbiorcę (użytkownika przeglądającego portfolio) oraz Artystę (administratora zarządzającego treścią). Poniższe diagramy prezentują ogólny zarys tych interakcji, uwzględniając również relacje zawierania (`<<include>>`) oraz rozszerzania (`<<extend>>`) dla bardziej złożonych operacji związanych z zarządzaniem pracami.

#figure(
  image("../img/use-case-artist.png", width: 80%),
  caption: [Scenariusz interakcji z systemem z perspektywy artysty (twórcy portfolio).],
)

#figure(
  image("../img/use-case-viewer.png", width: 80%),
  caption: [Scenariusz interakcji z systemem z perspektywy odbiorcy.],
)

==== Przypadki użycia z perspektywy odbiorcy

Odbiorca reprezentuje użytkownika końcowego, zazwyczaj potencjalnego klienta lub miłośnika sztuki, który odwiedza stworzone portfolio. Z perspektywy systemu, Odbiorca jest użytkownikiem niezalogowanym (gościem), co ogranicza jego uprawnienia wyłącznie do odczytu danych oraz korzystania z publicznych modułów komunikacyjnych.

==== PU1 - Przeglądanie galerii zdjęć

#table(
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
  *Brak prac:* Jeśli portfolio jest puste, system wyświetla komunikat: „Artysta nie dodał jeszcze żadnych prac. Zajrzyj tu wkrótce!”.],
  [*Warunki końcowe*], [Odbiorca pomyślnie obejrzał wybrane prace w portfolio.],
  [*Komentarze*], [---],
)

==== PU2 - Kontakt z artystą / formularz

#table(
  columns: (1fr, 3fr),
  stroke: .5pt,
  inset: 6pt,
  table.header([*Nazwa*], [Kontakt z artystą / formularz]),
  [*Warunki wstępne*], [Odbiorca znajduje się w portfolio artysty, a artysta włączył formularz kontaktowy.],
  [*Podstawowy scenariusz interakcji*], [1. Odbiorca przechodzi do sekcji kontaktowej. \
  2. System wyświetla pola: imię i nazwisko, adres e-mail, temat oraz treść wiadomości. \
  3. Odbiorca wypełnia wymagane pola i klika „Wyślij wiadomość”. \
  4. System waliduje dane i przekazuje wiadomość do zewnętrznego serwera e-mail. \
  5. System wyświetla komunikat o sukcesie i czyści formularz.],
  [*Wyjątki i scenariusze alternatywne*], [*Utrata połączenia:* System zachowuje wpisaną treść w pamięci lokalnej przeglądarki. \
  *Błąd walidacji:* System podświetla błędne pola i wyświetla komunikat „Popraw błędy w formularzu przed wysłaniem”. \
  *Błąd serwera:* System wyświetla komunikat o problemie technicznym, a tekst nie jest usuwany.],
  [*Warunki końcowe*], [Wiadomość odbiorcy zostaje pomyślnie przekazana do wysyłki na adres e-mail artysty.],
  [*Komentarze*], [---],
)

==== PU3 - Wybór języka

#table(
  columns: (1fr, 3fr),
  stroke: .5pt,
  inset: 6pt,
  table.header([*Nazwa*], [Wybór języka]),
  [*Warunki wstępne*], [Odbiorca znajduje się w portfolio. System obsługuje język polski i angielski, a domyślnie używa języka przeglądarki.],
  [*Podstawowy scenariusz interakcji*], [1. Odbiorca lokalizuje i klika przycisk wyboru języka. \
  2. System wyświetla listę dostępnych języków. \
  3. Odbiorca wybiera język. \
  4. System przeładowuje stronę w wybranym języku.],
  [*Wyjątki i scenariusze alternatywne*], [Jeśli treści autorskie nie mają tłumaczenia, interfejs zmienia się na wybrany język, ale opisy zdjęć i biogram pozostają w języku oryginalnym.],
  [*Warunki końcowe*], [Interfejs prezentowany jest w wybranym języku.],
  [*Komentarze*], [---],
)

==== Przypadki użycia z perspektywy artysty

Artysta pełni w systemie rolę zalogowanego administratora własnego portfolio. Ze względu na założenie, że docelowy twórca nie musi posiadać wiedzy technicznej, przypadki użycia w tej grupie zostały zaprojektowane tak, aby maksymalnie uprościć proces zarządzania treścią (CMS). Aktor ten posiada pełne uprawnienia do modyfikacji struktury swojej strony, w tym zarządzania pracami, kategoriami, informacjami biograficznymi oraz wizualną konfiguracją układu.

==== PU4 - Rejestracja konta

#table(
  columns: (1fr, 3fr), stroke: .5pt, inset: 6pt,
  table.header([*Nazwa*], [Rejestracja konta]),
  [*Warunki wstępne*], [Artysta nie posiada jeszcze konta w systemie ArtSea.],
  [*Podstawowy scenariusz interakcji*], [1. Artysta klika „Rejestracja”.  \
  2. System wyświetla formularz z adresem e-mail, hasłem i potwierdzeniem hasła.  \
  3. Artysta wypełnia formularz i klika „Utwórz konto”.  \
  4. System waliduje dane i wysyła wiadomość potwierdzającą.  \
  5. Artysta klika link potwierdzający, a system aktywuje konto i kieruje go do panelu edycji portfolio.],
  [*Wyjątki i scenariusze alternatywne*], [*Błąd walidacji:* System informuje o zajętym adresie e-mail, zbyt słabym haśle lub nieprawidłowych danych.  \
  *Brak potwierdzenia:* Link wygasa po 60 minutach, po czym można wysłać nowy link.],
  [*Warunki końcowe*], [Konto artysty zostaje utworzone i aktywowane.],
  [*Komentarze*], [Hasło: minimum 8 znaków, co najmniej jedna wielka litera, cyfra i znak specjalny.],
)

==== PU5 - Dodawanie pracy

#table(
  columns: (1fr, 3fr), stroke: .5pt, inset: 6pt,
  table.header([*Nazwa*], [Dodawanie pracy]),
  [*Warunki wstępne*], [Artysta jest zalogowany w panelu edycji portfolio.],
  [*Podstawowy scenariusz interakcji*], [1. Artysta przechodzi do sekcji „Moje prace”.  \
  2. System wyświetla listę prac z przyciskiem „Dodaj pracę”.  \
  3. Artysta klika przycisk.  \
  4. System otwiera formularz wypełniania detali pracy (PU7).],
  [*Wyjątki i scenariusze alternatywne*], [---],
  [*Warunki końcowe*], [Artysta przechodzi do formularza PU7.],
  [*Komentarze*], [---],
)

==== PU6 - Edytowanie pracy

#table(
  columns: (1fr, 3fr), stroke: .5pt, inset: 6pt,
  table.header([*Nazwa*], [Edytowanie pracy]),
  [*Warunki wstępne*], [Artysta jest zalogowany i posiada co najmniej jedną pracę w portfolio.],
  [*Podstawowy scenariusz interakcji*], [1. Artysta przechodzi do sekcji „Moje prace”.  \
  2. System wyświetla listę prac.  \
  3. Artysta wybiera pracę i klika „Edytuj”.  \
  4. System otwiera formularz edycji detali pracy (PU7).],
  [*Wyjątki i scenariusze alternatywne*], [---],
  [*Warunki końcowe*], [Artysta przechodzi do formularza PU7.],
  [*Komentarze*], [---],
)

==== PU7 - Wypełnianie detali pracy

#table(
  columns: (1fr, 3fr), stroke: .5pt, inset: 6pt,
  table.header([*Nazwa*], [Wypełnianie detali pracy]),
  [*Warunki wstępne*], [Artysta przechodzi z PU5 lub PU6. System wyświetla formularz dodawania albo edycji pracy.],
  [*Podstawowy scenariusz interakcji*], [1. System wyświetla wymagane pola: zdjęcie, tytuł i kategorię, oraz opcjonalne: opis, wymiary, rok wykonania i widoczność.  \
  2. Artysta wypełnia pola i klika „Zapisz”.  \
  3. System waliduje dane, przesyła obraz, zapisuje dane w bazie i wyświetla komunikat o sukcesie.],
  [*Wyjątki i scenariusze alternatywne*], [*Nowa kategoria:* Artysta przechodzi do PU9, po czym wraca do formularza.  \
  *Brak połączenia:* System przechowuje dane lokalnie i synchronizuje je po odzyskaniu połączenia.  \
  *Anulowanie:* System wraca do listy prac i ostrzega o utracie niezapisanych zmian.  \
  *Błąd walidacji:* System informuje o zbyt dużym lub nieobsługiwanym pliku albo pustym polu.],
  [*Warunki końcowe*], [Nowa praca zostaje dodana albo zmieniona i jest widoczna dla odbiorców.],
  [*Komentarze*], [Formularz jest używany zarówno do dodawania, jak i edytowania pracy.],
)

==== PU8 - Usuwanie pracy

#table(
  columns: (1fr, 3fr), stroke: .5pt, inset: 6pt,
  table.header([*Nazwa*], [Usuwanie pracy]),
  [*Warunki wstępne*], [Artysta jest zalogowany, a praca istnieje w galerii.],
  [*Podstawowy scenariusz interakcji*], [1. Artysta przechodzi do sekcji „Moje prace” i wybiera pracę.  \
  2. Artysta klika „Usuń” i potwierdza decyzję.  \
  3. System usuwa pracę, zdjęcia i metadane z bazy danych oraz serwera.  \
  4. System wyświetla komunikat i wraca do listy prac.],
  [*Wyjątki i scenariusze alternatywne*], [Artysta anuluje usunięcie lub zamyka okno. Praca pozostaje bez zmian.],
  [*Warunki końcowe*], [Praca jest trwale usunięta, a zajmowane miejsce na serwerze zostaje zwolnione.],
  [*Komentarze*], [---],
)

==== PU9 - Dodawanie kategorii prac

#table(
  columns: (1fr, 3fr), stroke: .5pt, inset: 6pt,
  table.header([*Nazwa*], [Dodawanie kategorii prac]),
  [*Warunki wstępne*], [Artysta jest zalogowany w panelu edycji portfolio.],
  [*Podstawowy scenariusz interakcji*], [1. Artysta przechodzi do sekcji „Kategorie”.  \
  2. Otwiera formularz „Dodaj kategorię” i podaje nazwę oraz opcjonalny opis.  \
  3. System waliduje unikalność nazwy, dodaje kategorię i wyświetla ją na liście.],
  [*Wyjątki i scenariusze alternatywne*], [Jeśli kategoria o tej nazwie już istnieje, system wyświetla komunikat i sugeruje edycję istniejącej kategorii.],
  [*Warunki końcowe*], [Nowa kategoria jest dostępna przy dodawaniu i edytowaniu prac oraz widoczna dla odbiorców.],
  [*Komentarze*], [Każda kategoria powinna mieć unikalną nazwę.],
)

==== PU10 - Edytowanie kategorii prac

#table(
  columns: (1fr, 3fr), stroke: .5pt, inset: 6pt,
  table.header([*Nazwa*], [Edytowanie kategorii prac]),
  [*Warunki wstępne*], [Artysta jest zalogowany i istnieje co najmniej jedna kategoria.],
  [*Podstawowy scenariusz interakcji*], [1. Artysta przechodzi do sekcji „Kategorie” i wybiera kategorię.  \
  2. Artysta klika „Edytuj”, zmienia dane i wybiera „Zapisz zmiany”.  \
  3. System waliduje dane, aktualizuje kategorię i wraca do listy.],
  [*Wyjątki i scenariusze alternatywne*], [*Duplikat nazwy:* System wyświetla błąd i umożliwia zmianę nazwy.  \
  *Usuwanie kategorii:* Jeśli kategoria zawiera prace, artysta przenosi je do innej kategorii przed usunięciem.],
  [*Warunki końcowe*], [Zmiany kategorii są zapisane, a prace mają zaktualizowane informacje.],
  [*Komentarze*], [Nie można usunąć kategorii zawierającej prace bez ich uprzedniego przeniesienia.],
)

==== PU11 - Dodawanie i edytowanie informacji o sobie

#table(
  columns: (1fr, 3fr), stroke: .5pt, inset: 6pt,
  table.header([*Nazwa*], [Dodawanie i edytowanie informacji o sobie]),
  [*Warunki wstępne*], [Artysta jest zalogowany, a jego profil istnieje w systemie.],
  [*Podstawowy scenariusz interakcji*], [1. Artysta przechodzi do sekcji „Mój profil”.  \
  2. System wyświetla pola: zdjęcie profilowe, imię i nazwisko, biografia oraz linki do mediów społecznościowych.  \
  3. Artysta aktualizuje dane i klika „Zapisz profil”.  \
  4. System waliduje dane, aktualizuje profil i wyświetla komunikat potwierdzający.],
  [*Wyjątki i scenariusze alternatywne*], [*Błąd zdjęcia:* System informuje o zbyt dużym lub niedozwolonym pliku.  \
  *Brak połączenia:* System zachowuje dane lokalnie i synchronizuje je po odzyskaniu połączenia.  \
  *Anulowanie:* System ostrzega o utracie niezapisanych zmian i wraca do strony głównej.],
  [*Warunki końcowe*], [Informacje artysty są zaktualizowane i widoczne dla odbiorców.],
  [*Komentarze*], [---],
)

==== PU12 - Personalizacja strony

#table(
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
)

== Projekt rozwiązania

// TODO: Opisz architekturę oraz najważniejsze decyzje projektowe.

== Implementacja

// TODO: Opisz przebieg implementacji i zastosowane technologie.
