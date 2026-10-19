= Organizacja projektu <chapter-project-organization>

Przy realizacji złożonego projektu informatycznego niezbędne jest usystematyzowanie pracy oraz określenie zasad współpracy. Wytwarzanie oprogramowania wymaga dobrej organizacji, z tego względu wykorzystano rynkowe wzorce zarządzania i inżynierii oprogramowania, elastycznie dopsowujące je do wielkości zespołu i charakteru tworoznej apliakcji. W poniższych podrozdziałach przestawiono fundamenty organizacji pracy.

== Metodyka prowadzenia projektu

Wytwarzanie aplikacji oparto na podejściu hybrydowym, łączącym elementy metodyk zwinnych _Agile_ i tradycyjnym modelu kaskadowym _Waterfall_. Wybór wynikał ze specyfiki projektu, który wymagał zarówno elastyczności w podejściu do wymagań, jak i ścisłego planowania i kontroli postępów. Połączenie obydwu metodyk pozwoliło na iteracyjne dostarczanie funkcjonalności, przy jednoczesnym zachowaniu struktury i harmonogramu projektu.

W początkowej fazie projektu zastosowano model kaskadowy, kładąc nacisk na kompleksową analizę wymagań oraz prototypowanie w środowisku _Figma_, co umożliwiło wczesne wykrycie potencjalnych problemów i lepsze zrozumienie oczekiwań użytkowników. Etap implementacji zorganizowano zgodnie z zasadami metodyki _Kanban_. Ze względu na ograniczoną liczbę członków zespołu, przyjęto podejście, w którym zrezygnowano z formalnych ról i sztywnych ram czasowych, a prace były realizowane w sposób elastyczny, z naciskiem na efektywną komunikację i współpracę. Ostatni erap zaplanowano w oparciu o podejście zorientowane na użytkownika. Faza ta zakładała weryfikację systemu poprzez testy akceptacyjne _E22_ oraz przeprowadzenie badań użyteczności z docelową grupą twórców przy użyciu standaryzowanych kwestionariuszy. Dopełnieniem tego etapu było również opracowanie dokumentacji wdrożeniowo-użytkowej w postaci dwóch dedykowanych przewodników: instrukcji obsługi systemu oraz instrukcji wdrożeniowej, opisującej proces instalacji i uruchomienia aplikacji.

== Fazy projektu i harmonogram

+ Faza I: Analiza wymagań i prototypowanie

  Identyfikacja grupy docelowej, zdefiniowanie wymagań funkcjonalnych i niefunkcjonalnych, opracowanie scenariuszy przypadków użycia i  stworzenie prototypu interfejsu użytkownika w środowisku _Figma_.

+ Faza II: Implementacja

  Przyrostowa implementacja funkcjonalności systemu, w tym integracja z zewnętrznymi usługami i bazą danych, testy jednostkowe i integracyjne. 

+ Faza III: Wdrożenie i ewaluacja

  Implementacja i przeprowadzenie testów integracyjnych, testów akceptacyjnych, opracowanie dokumentacji wdrożeniowo-użytkowej oraz przeprowadzenie badań użyteczności z udziałem docelowych użytkowników.

#figure(
  image("../img/phases.png", width: 90%),
  caption: [Fazy projektu ArtSea.],
) <fig-phases> 

== System kontroli wersji

== Zapewnienie jakości i ciągła integracja