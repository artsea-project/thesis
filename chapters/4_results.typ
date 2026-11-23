= Ewaluacja (Marta Kociszewska) <chapter-results>

== Metodyka oceny

W celu weryfikacji zaimplementowanego systemu pod kątem spełnienia wymagań niefunkcjonalnych oraz funkcjonalnych, przeprowadzono badanie z udziałem przedstawicieli grupy docelowej. Zdecydowano się na wykorzystanie metody testowania opartego na scenariuszach (ang. _scenario-based testing_) @scenario-testing, połączonej z metodą głośnego myślenia (ang. _Think-Aloud Protocol_). Połączenie obu technik pozwoliło na weryfikację poprawności relizacji założeń projektowych oraz ocenę rozwiązania z perspektywy osób odpowiadających profilowi zdefiniowanym w sekcji @sec:user-identification.

W ramach badania uczestnicy zostali poproszeni o samodzielne wykonanie zestawu zadań, przy jednoczesnym werbalizowaniu swoich spostrzeżeń, oczekiwań oraz napotkanych trudności. Moderator badania nie ingerował w przebieg zadania, ograniczając się do rejestrownia czasu realizacji, liczby błedów, zawahań oraz komentarzy badanych.

Przed przystąpieniem do testu, każdy użytkownik otrzymał dostęp do środowiska testowego aplikacji oraz przygotowaną instrukcję obsługi systemu. Miał to na celu odwzorować rzeczywisty proces wdrożenia nowego twórcy oraz weryfikację, czy dostarczona instrukcją spełnia swoją funkcję i wspiera samodzielną konfigurację.

Scenariusz testowy zaprojektowano aby w pełni pokrywał pełen cykl tworzenia portfolio. Zestawienie zadań wraz z powiązaniem do przypadków użycia zdefiniwoanych w rozdziale @sec:use-cases przedstawiono w poniższej tabeli.

#figure(
  caption: [Przypadek użycia PU1 - Przeglądanie galerii zdjęć],
  kind: table,
  table(
    columns: (1fr, 2fr, 1fr, 2fr),
    stroke: .5pt, inset: 6pt,
    table.header([*Krok*], [*Treść zadania*], [*Powiązany przypadek użycia*], [*Kryterium sukcesu*]),
    [1], [Zarejestruj się do systemu], [PU4 @tab:pu4], [Poprawna rejestracja konta i udane logowanie],
    [2], [Uzupełnij profil artysty (zdjęcia, dane podstawowe, biografia, linki społecznościowe)], [PU13 @tab:pu13], [Poprawne wgranie zdjęcia, uzupełnienie conajmniej dwóch sekcji biografii oraz dodanie min. jednego linku społecznościowego],
    [3], [Dodaj conajmniej trzy prace, załączając do nich pliki multimedialne oraz opisy], [PU5 @tab:pu5, PU7 @tab:pu7, PU9 @tab:pu9, PU11 @tab:pu11], [Utworzenie i zapisanie min. 3 prac z tytułem, przypisaną kategorią i tagami oraz plikami, poprawne wybranie okładki. Weryfikacja założenia z profilu persony (Kontekst użycia systemu, @tab:persona-artist-details) - czas dodania pojedynczej pracy poniżej 3 minut],
    [4], [Zmodyfikuj wygląd portfolio, używając dostępnych opcji personalizacji], [PU14 @tab:pu14], [Modyfikacja układu siatki Bento Box oraz zmiana kolorystyki i czcionek (ręcznie lub poprzez gotowy motyw)],
    [5], [Zapisz zmiany i sprawdź wygląd portfolio], [PU1 @tab:pu1, PU2 @tab:pu2, PU3 @tab:pu3], [Zapisanie konfiguracji, przejście do podglądu strony publicznej oraz weryfikacja poprawności]

  ),
) <tab:test-scenario>