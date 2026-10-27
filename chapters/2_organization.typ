= Organizacja projektu <chapter-project-organization>

Przy realizacji złożonego projektu informatycznego niezbędne jest usystematyzowanie pracy oraz określenie zasad współpracy. Wytwarzanie oprogramowania wymaga dobrej organizacji, z tego względu wykorzystano rynkowe wzorce zarządzania i inżynierii oprogramowania, elastycznie dopasowujące je do wielkości zespołu i charakteru tworzonej aplikacji. W poniższych podrozdziałach przedstawiono fundamenty organizacji pracy.

== Metodyka prowadzenia projektu

Wybór odpowiedniego modelu cyklu życia oprogramowania poprzedzono analizą porównawczą klasycznych oraz zwinnych podejść wytwórczych w kontekście specyfiki systemu ArtSea, wielkości zespołu oraz charakteru grupy docelowej:
- *Model kaskadowy (Waterfall)* @sommerville2015 - zakłada sekwencyjną realizację faz projektu oraz jednorazowe dostarczenie gotowego systemu, poprzedzone pełnym zaprojektowaniem architektury z góry. Zapewnia on wysoką przewidywalność harmonogramu oraz stabilność specyfikacji, jednak w czystej postaci okazał się zbyt rygorystyczny. W przypadku platformy skierowanej do twórców wrażliwych estetycznie, jednorazowe dostarczenie produktu bez iteracyjnej weryfikacji interfejsu zwiększałoby ryzyko wykrycia błędnych założeń dotyczących doświadczenia użytkownika (ang. _User Experience_, UX) dopiero w końcowej fazie prac. Ograniczyłoby również możliwość wprowadzania zmian w wymaganiach, które w przypadku systemu o wysokiej dynamice wizualnej i funkcjonalnej mogłyby pojawić się w trakcie realizacji projektu.
- *Czyste metodyki zwinne (Agile)* @sommerville2015 - podejścia iteracyjno-przyrostowe, takie jak Scrum czy Kanban @anderson2010, sprzyjają bezpośredniej komunikacji w małym zespole oraz pozwalają na dzielenie systemu na niezależne przyrosty funkcjonalne. Z kolei całkowita rezygnacja ze wstępnego projektowania niosłaby ryzyko podjęcia nietrafnych decyzji w obszarach trudnych do późniejszej modyfikacji. Również model ciągłego dostarczania (ang. _Continuous Delivery_, CD) uznano za przedwczesny na etapie tworzenia pierwszej funkcjonalnej wersji systemu (ang. _Minimum Viable Product_, MVP), zanim ustabilizowano architekturę oraz kryteria jakościowe.

Uwzględniając powyższe czynniki - niewielki rozmiar zespołu o przenikających się kompetencjach, umiarkowaną krytyczność systemu przy jednoczesnej potrzebie wczesnego zabezpieczenia architektury danych oraz wysoką dynamikę wymagań w warstwie wizualnej - wytwarzanie aplikacji oparto na podejściu hybrydowym, łączącym elementy metodyk zwinnych Agile z tradycyjnym modelem kaskadowym Waterfall w ramach przyrostowego modelu dostarczania produktu. Połączenie obydwu podejść pozwoliło na iteracyjne dostarczanie kolejnych modułów funkcjonalnych, przy jednoczesnym zachowaniu uporządkowanej struktury architektonicznej i harmonogramu projektu.

W początkowej fazie projektu zastosowano model kaskadowy, kładąc nacisk na kompleksową analizę wymagań, zaprojektowanie modelu danych oraz prototypowanie w środowisku Figma @figma-docs, co umożliwiło wczesne wykrycie potencjalnych problemów i lepsze zrozumienie oczekiwań użytkowników. Etap implementacji zorganizowano w sposób przyrostowy z wykorzystaniem praktyk zwinnych oraz tablicy Kanban @anderson2010. Ze względu na ograniczoną liczbę członków zespołu, przyjęto podejście, w którym zrezygnowano z nadmiarowej formalizacji ról, a prace były realizowane w sposób elastyczny, z naciskiem na efektywną komunikację i współpracę. Ostatni etap zaplanowano w oparciu o podejście zorientowane na użytkownika. Faza ta zakładała weryfikację systemu poprzez testy akceptacyjne (ang. _End-to-End_, E2E) oraz przeprowadzenie badań użyteczności z docelową grupą twórców przy użyciu standaryzowanych kwestionariuszy. Dopełnieniem tego etapu było również opracowanie dokumentacji wdrożeniowo-użytkowej w postaci dwóch dedykowanych przewodników: instrukcji obsługi systemu oraz instrukcji wdrożeniowej, opisującej proces instalacji i uruchomienia aplikacji.

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

Do zarządzania kodem źródłowym, dokumentacją oraz plikami pracy dyplomowej wykorzystano system kontroli wersji Git @chacon2014. Centralnym punktem wymiany zasobów stała się organizacja w serwisie GitHub @artsea-github, umożliwiająca współpracę w zespole, śledzenie zmian oraz zarządzanie historią projektu. Aby zapewnić czytelny podział odpowiedzialności i nie obciążać repozytorium aplikacyjnego plikami pomocniczymi, środowisko projektowe podzielono na trzy odrębne repozytoria:
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

Integracja zmian w gałęzi `main` odbywała się wyłącznie poprzez mechanizm _Pull Request_ (PR) @chacon2014. Procedura ta stanowiła fundamentalny element kontroli jakości kodu oraz dzielenia się wiedzą w zespole:
- *Asynchroniczna dyskusja i analiza rozwiązań* - każdy PR był poddawany przeglądowi przez pozostałych członków zespołu, którzy mogli zgłaszać uwagi, sugestie i poprawki. Stanowił on przestrzeń do dyskusji nad proponowanym podejściem, umożliwiając wymianę doświadczeń i wiedzy.
- *Wymóg recenzji* - warunkiem zatwierdzenia PR było uzyskanie pozytywnej recenzji od innego członka zespołu. W przypadku zgłoszenia uwag, autor PR był zobowiązany do ich uwzględnienia i wprowadzenia stosownych poprawek. Eliminowało to ryzyko wprowadzenia błędów do głównej gałęzi kodu oraz zapewniało spójność i jakość implementowanych rozwiązań.

=== Zapewnienie jakości i ciągła integracja

Równolegle z kontrolą wersji wdrożono rygorystyczny potok ciągłej integracji (ang. _Continuous Integration_, CI) @fowler2006, oparty na mechanizmie GitHub Actions. Każde stworzenie lub aktualizacja PR uruchamiała zestaw zautomatyzowanych weryfikacji, których pozytywny wynik był warunkiem dopuszczenia zmian do gałęzi `main`. Proces CI obejmował:
- *Weryfikację jakości i formatowania kodu* - automatyczna kontrola zgodności ze standardem formatowania Prettier @prettier-docs oraz analizę statyczną kodu przy użyciu narzędzi ESLint @eslint-docs, umożliwiającą wykrycie potencjalnych błędów, nieefektywnych konstrukcji oraz niezgodności ze standardami projektowymi. W konfiguracji lintera przyjęto rygorystyczny parametr `--max-warnings=0`, co uniemożliwiło wprowadzenie do repozytorium jakichkolwiek ostrzeżeń czy niezalecanych konstrukcji,
- *Weryfikacja spójności _commitów_ i tytułów PR* - skrypt weryfikujący zgodność tytułów _commitów_ i PR z przyjętym schematem nazewnictwa, zapewniającym jednoznaczne określenie rodzaju wprowadzanych zmian oraz ich kontekstu,
- *Kontrola statycznego typowania* - kompilacja sprawdzająca TypeScript @typescript-docs, gwarantująca bezbłędność typów w całym projekcie jeszcze przed uruchomieniem kodu,
- *Automatyczne testy integracyjne* - potok testowy uruchamiający kontener bazodanowy PostgreSQL @postgresql-docs, wykonujący migracje schematu, seedowanie danych testowych oraz uruchamiający zestaw testów integracyjnych, weryfikujących poprawność działania kluczowych funkcjonalności systemu z użyciem _frameworka_ Playwright @playwright-docs.
