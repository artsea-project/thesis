= Metodologia <chapter-methodology>

// TODO: Opisz przyjęte metody, narzędzia i założenia projektowe.

Proces tworzenia autorskiego systemu CMS wymagał przyjęcia ustrukturyzowanego podejścia projektowego. Niniejszy rozdział szczegółowo opisuje wybraną metodykę zwinnego zarządzania projektem, uzasadnia dobór stosu technologicznego oraz prezentuje architekturę rozwiązania przy użyciu standardowych pomocy wizualnych, takich jak diagramy UML czy schematy bazy danych.


== Analiza wymagań

// TODO: Przedstaw wymagania i ograniczenia rozwiązania.

Fundamentem zaprojektowanej aplikacji była precyzyjna identyfikacja potrzeb jej użytkowników docelowych: twórców oraz ich odbiorców. Poniżej przedstawiono kompleksowy zbiór zdefiniowanych wymagań funkcjonalnych, jakościowych (niefunkcjonalnych) oraz opracowane scenariusze interakcji z systemem.

=== Wymagania funcjonalne
Wymagania funkcjonalne zdefiniowano z perspektywy dwóch kluczowych aktorów: artysty (twórcy portfolio) oraz odbiorcy. Artysta posiada autoryzowany dostęp do systemu, co umożliwia mu kompleksowe zarządzanie treścią: dodawanie, edycję i usuwanie prac graficznych oraz kategorii, a także aktualizację profilu biograficznego. Jedną z najważniejszych funkcji z perspektywy twórcy jest możliwość wizualnej personalizacji portfolio za pomocą interaktywnego edytora opartego na modułowym układzie "Bento Box". Moduł ten pozwala na elastyczne skalowanie oraz pozycjonowanie kafelków z wykorzystaniem intuicyjnego mechanizmu "drag-and-drop". Z kolei odbiorca zyskuje możliwość przeglądania galerii, zmiany preferowanego języka interfejsu, a także nawiązywania bezpośredniej komunikacji z artystą za pośrednictwem zintegrowanego formularza.

=== Wymagania jakościowe
Wymagania jakościowe (niefunkcjonalne) precyzują kryteria brzegowe dotyczące wydajności, bezpieczeństwa oraz przenośności. W obszarze bezpieczeństwa bezwzględnie wymagane jest szyfrowanie ruchu sieciowego za pomocą certyfikatu SSL (wymuszenie protokołu HTTPS). Ponadto, dane autoryzacyjne użytkowników muszą być zahasowane przy użyciu nowoczesnych algorytmów kryptograficznych przed ich trwałym zapisem w bazie danych. Dodatkowym wymogiem niezawodnościowym jest obsługa wielu formatów plików graficznych oraz zabezpieczenie danych formularzowych przed ich utratą w przypadku nagłego przerwania sesji.

Ważnym ograniczeniem projektowym jest uniwersalność i przenośność rozwiązania. System musi zapewnić pełną kompatybilność oraz responsywność (RWD) w najpopularniejszych przeglądarkach internetowych (m.in. Google Chrome, Safari, Mozilla Firefox), jak również na urządzeniach mobilnych z systemami operacyjnymi Android i iOS. Z perspektywy User Experience (UX), zebrane wytyczne analityczne wskazują, że aplikacja powinna charakteryzować się profesjonalnym, przejrzystym i zorganizowanym interfejsem, unikając wrażenia nadmiernego skomplikowania, aby stanowić narzędzie przystępne i przyjazne w odbiorze dla osób nietechnicznych.

=== Scenariusze interakcji z systemem

#figure(
  image("../img/use-case-artist.png", width: 80%),
  caption: [Scenariusz interakcji z systemem z perspektywy artysty (twórcy portfolio).],
)

#figure(
  image("../img/use-case-viewer.png", width: 80%),
  caption: [Scenariusz interakcji z systemem z perspektywy odbiorcy.],
)

== Projekt rozwiązania

// TODO: Opisz architekturę oraz najważniejsze decyzje projektowe.

== Implementacja

// TODO: Opisz przebieg implementacji i zastosowane technologie.
