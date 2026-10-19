= Koncepcja i projekt rozwiązania <chapter-concept-and-solution-design>

// TODO: Przedstaw koncepcję rozwiązania oraz jego projekt.

== Wymagania funkcjonalne i przypadki użycia

// TODO: Wypisz wymagania funkcjonalne i opisz przypadki użycia.

== Wymagania niefunkcjonalne

// TODO: Opisz wymagania niefunkcjonalne.

== Uzasadnienie wyboru stosu technologicznego

// TODO: Uzasadnij wybór technologii.

== Architektura systemu

// TODO: Opisz architekturę systemu.

== Projekt bazy danych

// TODO: Przedstaw projekt bazy danych.

== Projekt interfejsu i makiety

Podstawowym założeniem projektu jest możliwość dostosowania wyglądu strony publicznej przez artystę. W związku z tym przedmiotem projektowania nie była jedna, konkretna szata graficzna, tylko system zasad, który przy dowolnych ustawieniach wybranych przez artystę pozwala uzyskać spójną i czytelną stronę. W ramach tego systemu wyróżnione są dwie warstwy: stała, obejmująca strukturę stron, hierarchię treści oraz budowę komponentów, a także zmienna, obejmująca kroje pisma, kolorystykę i wybrane cechy wyglądu. Przedstawione w niniejszym podrozdziale makiety prezentują zatem jedną z możliwych konfiguracji, a nie docelowy wygląd każdej strony utworzonej w systemie.

Personalizacji nie podlega panel artysty. Otrzymał on stały wygląd, niezależny od ustawień strony publicznej, dzięki czemu zmiany wprowadzane przez artystę nie wpływają na czytelność i sposób obsługi narzędzia, za pomocą którego zostały wprowadzone.

=== Warstwa stała

Niezmienna pozostaje struktura wszystkich podstron części publicznej, złożona z nagłówka, obszaru treści oraz stopki. Stałe położenie nawigacji i danych kontaktowych sprawia, że odwiedzający stronę zawsze wie, gdzie szukać najważniejszych informacji. Zmiana wyglądu przez artystę nie wpływa na sposób obsługi strony, a jedynie na jej estetykę. Dzięki temu odwiedzający stronę nie musi uczyć się nowego sposobu obsługi interfejsu i może skupić się na treści, którą artysta chce przekazać.

Nagłówek i stopka pełnią różne funkcje: pierwszy służy do poruszania się po stronie, druga zachęca do nawiązania kontaktu z artystą. W nagłówku znajduje się logo, którym jest imię i nazwisko artysty zapisane zwykłym tekstem. Logo jest jednocześnie linkiem do strony głównej. Ponadto nagłówek zawiera menu nawigacyjne, umożliwiające przejście do poszczególnych części strony („O mnie”, „Portfolio”, „Kontakt”), a także przełącznik wersji językowej (PL/EN). Stopka zawiera dane kontaktowe artysty, w tym linki do jego profili w mediach społecznościowych oraz hasło zachęcające do kontaktu.

Ponieważ dane kontaktowe są dostępne w stopce każdej podstrony, w projekcie zrezygnowano z osobnej podstrony kontaktowej, a pozycja „Kontakt” w menu prowadzi do sekcji „Skontaktuj się ze mną” na stronie „O mnie”. Dane te ograniczają się do adresu e-mail i linków do mediów społecznościowych, dlatego osobna podstrona zawierałaby niewiele treści. Umieszczenie ich na tej samej stronie co biogram sprawia natomiast, że odwiedzający, który zapoznał się z sylwetką artysty, od razu otrzymuje możliwość nawiązania z nim kontaktu.

Swoboda w doborze krojów pisma i kolorów niesie ze sobą ryzyko, że odwiedzający nie będzie w stanie odróżnić elementów najistotniejszych od tych mniej ważnych. Dlatego, o ile artysta ma wpływ na wygląd tekstu i kolorystykę strony, o tyle kolejność i ranga poszczególnych elementów treści pozostają niezmienne. Każda sekcja rozpoczyna się dużym nagłówkiem zakończonym kropką, np. „Wybrane prace.” na stronie głównej czy „Moje prace.” na stronie portfolio, który jednoznacznie wskazuje, czego dotyczy dana część strony. Stały porządek obowiązuje również na stronie pojedynczej pracy: kategoria i data poprzedzają tytuł pracy, po którym następują tagi, a następnie opis podzielony na części „Technika i materiały” oraz „O projekcie”. Artysta może zatem zmienić krój pisma tytułu, ale nie jego wielkość względem pozostałych elementów, dzięki czemu tytuł zawsze będzie wyróżniał się na tle pozostałej treści.

Opisane zasady obejmują również powtarzalne elementy strony, takie jak kafelki na stronie głównej, karty prac w portfolio czy etykiety tagów, które na każdej podstronie mają tę samą budowę. Ustawienie wprowadzone przez artystę w panelu zmienia zatem wygląd wszystkich wystąpień danego elementu jednocześnie, bez konieczności edytowania poszczególnych podstron. W efekcie, niezależnie od wybranej konfiguracji, strona zachowuje spójny układ, a artysta może skupić się na doborze stylistyki zamiast na projektowaniu każdej podstrony od podstaw.

== Specyfikacja routingu

// TODO: Opisz specyfikację routingu.

== Koncepcja edytora układu Bento Box

// TODO: Przedstaw koncepcję edytora układu Bento Box.
