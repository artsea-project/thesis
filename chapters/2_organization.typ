= Organizacja projektu <chapter-project-organization>

Przy realizacji złożonego projektu informatycznego niezbędne jest usystematyzowanie pracy oraz określenie zasad współpracy. Wytwarzanie oprogramowania wymaga dobrej organizacji, z tego względu wykorzystano rynkowe wzorce zarządzania i inżynierii oprogramowania, elastycznie dopasowujące je do wielkości zespołu i charakteru tworzonej aplikacji. W poniższych podrozdziałach przedstawiono fundamenty organizacji pracy.

== Metodyka prowadzenia projektu

Wytwarzanie aplikacji oparto na podejściu hybrydowym, łączącym elementy metodyk zwinnych Agile z tradycyjnym modelem kaskadowym Waterfall. Wybór wynikał ze specyfiki projektu, który wymagał zarówno elastyczności w podejściu do wymagań, jak i ścisłego planowania i kontroli postępów. Połączenie obydwu metodyk pozwoliło na iteracyjne dostarczanie funkcjonalności, przy jednoczesnym zachowaniu struktury i harmonogramu projektu.

W początkowej fazie projektu zastosowano model kaskadowy, kładąc nacisk na kompleksową analizę wymagań oraz prototypowanie w środowisku Figma, co umożliwiło wczesne wykrycie potencjalnych problemów i lepsze zrozumienie oczekiwań użytkowników. Etap implementacji zorganizowano zgodnie z zasadami metodyki Kanban. Ze względu na ograniczoną liczbę członków zespołu, przyjęto podejście, w którym zrezygnowano z formalnych ról i sztywnych ram czasowych, a prace były realizowane w sposób elastyczny, z naciskiem na efektywną komunikację i współpracę. Ostatni etap zaplanowano w oparciu o podejście zorientowane na użytkownika. Faza ta zakładała weryfikację systemu poprzez testy akceptacyjne (ang. _End-to-End_, E2E) oraz przeprowadzenie badań użyteczności z docelową grupą twórców przy użyciu standaryzowanych kwestionariuszy. Dopełnieniem tego etapu było również opracowanie dokumentacji wdrożeniowo-użytkowej w postaci dwóch dedykowanych przewodników: instrukcji obsługi systemu oraz instrukcji wdrożeniowej, opisującej proces instalacji i uruchomienia aplikacji.

== Fazy projektu i harmonogram

+ Faza I: Analiza wymagań i prototypowanie

  Identyfikacja grupy docelowej, zdefiniowanie wymagań funkcjonalnych i niefunkcjonalnych, opracowanie scenariuszy przypadków użycia i stworzenie prototypu interfejsu użytkownika w środowisku Figma.

+ Faza II: Implementacja

  Przyrostowa implementacja funkcjonalności systemu, w tym integracja z zewnętrznymi usługami i bazą danych, testy jednostkowe i integracyjne. 

+ Faza III: Wdrożenie i ewaluacja

  Implementacja i przeprowadzenie testów integracyjnych, testów akceptacyjnych, opracowanie dokumentacji wdrożeniowo-użytkowej oraz przeprowadzenie badań użyteczności z udziałem docelowych użytkowników.

#figure(
  image("../img/phases.png", width: 90%),
  caption: [Fazy projektu ArtSea.],
) <fig-phases> 

== System kontroli wersji i ciągła integracja

Do zarządzania kodem źródłowym, dokumentacją oraz plikami pracy dyplomowej wykorzystano system kontroli wersji Git. Centralnym punktem wymiany zasobów stała się organizacja w serwisie GitHub, umożliwiająca współpracę w zespole, śledzenie zmian oraz zarządzanie historią projektu. Aby zapewnić czytelny podział odpowiedzialności i nie obciążać repozytorium aplikacyjnego plikami pomocniczymi, środowisko projektowe podzielono na trzy odrębne repozytoria:
- `artsea-webapp` - kod źródłowy aplikacji,
- `notes` - dokumentacja projektu, notatki ze spotkań, materiały pomocnicze,
- `thesis` - pliki pracy dyplomowej.

=== Strategia rozgałęzień i przepływ pracy

Prace programistyczne oparto na strategii rozgałęzień funkcjonalnych. Główna gałąź `main` zawierała stabilną wersję aplikacji, natomiast dla każdej nowej funkcjonalności tworzono osobną gałąź. Wprowadzono bezwzględny zakaz bezpośrednich zmian w gałęzi `main` - wszystkie zmiany były implementowane w gałęziach roboczych, których nazewnictwo ściśle odzwierciedlało wprowadzane funkcjonalności, m.in.:
- `feat/` - rozwój nowych funkcjonalności,
- `fix/` - korekta błędów,
- `refactor/` - refaktoryzacja kodu,
- `ci/` - konfiguracja i aktualizacja procesów ciągłej integracji,
- `build/` - aktualizacja zależności i konfiguracji środowiska,
- `chore/` - czynności porządkowe i administracyjne.

=== Mechanizm _Pull Request_ i przegląd kodu

Integracja zmian w gałęzi `main` odbywała się wyłącznie poprzez mechanizm _Pull Request_ (PR). Procedura ta stanowiła fundamentalny element kontroli jakości kodu oraz dzielenia się wiedzą w zespole:
- *Asynchroniczna dyskusja i analiza rozwiązań* - każdy PR był poddawany przeglądowi przez pozostałych członków zespołu, którzy mogli zgłaszać uwagi, sugestie i poprawki. Stanowił on przestrzeń do dyskusji nad proponowanym podejściem, umożliwiając wymianę doświadczeń i wiedzy.
- *Wymóg recenzji* - warunkiem zatwierdzenia PR było uzyskanie pozytywnej recenzji od innego członka zespołu. W przypadku zgłoszenia uwag, autor PR był zobowiązany do ich uwzględnienia i wprowadzenia stosownych poprawek. Eliminowało to ryzyko wprowadzenia błędów do głównej gałęzi kodu oraz zapewniało spójność i jakość implementowanych rozwiązań.

=== Zapewnienie jakości i ciągła integracja

Równolegle z kontrolą wersji wdrożono rygorystyczny potok ciągłej integracji (ang. _Continuous Integration_, CI), oparty na mechanizmie GitHub Actions. Każde stworzenie lub aktualizacja PR uruchamiała zestaw zautomatyzowanych weryfikacji, których pozytywny wynik był warunkiem dopuszczenia zmian do gałęzi `main`. Proces CI obejmował:
- *Weryfikację jakości i formatowania kodu* - automatyczna kontrola zgodności ze standardem formatowania Prettier oraz analizę statyczną kodu przy użyciu narzędzi ESLint, umożliwiającą wykrycie potencjalnych błędów, nieefektywnych konstrukcji oraz niezgodności ze standardami projektowymi. W konfiguracji lintera przyjęto rygorystyczny parametr `--max-warnings=0`, co uniemożliwiło wprowadzenie do repozytorium jakichkolwiek ostrzeżeń czy niezalecanych konstrukcji,
- *Weryfikacja spójności _commitów_ i tytułów PR* - skrypt weryfikujący zgodność tytułów _commitów_ i PR z przyjętym schematem nazewnictwa, zapewniającym jednoznaczne określenie rodzaju wprowadzanych zmian oraz ich kontekstu,
- *Kontrola statycznego typowania* - kompilacja sprawdzająca TypeScript, gwarantująca bezbłędność typów w całym projekcie jeszcze przed uruchomieniem kodu,
- *Automatyczne testy integracyjne* - potok testowy uruchamiający kontener bazodanowy PostgreSQL, wykonujący migracje schematu, seedowanie danych testowych oraz uruchamiający zestaw testów integracyjnych, weryfikujących poprawność działania kluczowych funkcjonalności systemu z użyciem _frameworka_ Playwright.
