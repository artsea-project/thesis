= Stos technologiczny (Benjamin Jurewicz) <chapter-tech-stack>

W poniższym rozdziale przedstawiono technologie wykorzystane do realizacji aplikacji, wraz z uzasadnieniami ich wyboru. Przy doborze narzędzi kierowano się wymaganiami projektu, prostotą wdrożenia, wykonania i utrzymania aplikacji. Istotna była również kompatybilność poszczególnych rozwiązań, możliwość współdzielenia kodu oraz znajomość technologii w zespole.

== Konteneryzacja - Docker

Docker jest narzędziem służącym do konteneryzacji, umożliwiającym dokładne zdefiniowane i zautomatyzowanie procesu uruchamiania aplikacji. Docker był najczęściej wskazywanym rozwiązaniem w kategorii "Cloud development" w badaniu Stack Overflow Developer Survey 2026. @stackoverflow-cloud-2026. Zdecydowano się na jego wybór, ponieważ:

- jest wspierany przez większość dostępnych dostawców usług VPS, dzięki czemu użytkownicy hostujący aplikację nie są ograniczeni w wyborze miejsca, w którym ją uruchomią.
- umożliwia łatwą i powtarzalną inicjalizację całej aplikacji oraz automatyzację większości procesów, co jest konieczne w przypadku użytkowników nietechnicznych.
- ułatwia konfigurację bazy danych dzięki gotowemu, oficjalnemu obrazowi.
- zapewnia łatwą izolację procesów, co pozwala pełniej wykorzystać wypożyczony serwer. Przykładowo grupa artystów może wypożyczyć wspólnie jeden serwer, a każdy z nich może mieć własną, oddzielną instancję aplikacji.

Dodatkowo użytkownik może wypróbować aplikację internetową utworzoną w tej pracy, uruchamiając projekt za pomocą Docker Desktop na własnym komputerze, i przetestować całą aplikację z widoku komputera oraz telefonu, zanim zdecyduje się na wykupienie VPS.

== Język programowania - TypeScript

Ponieważ w pracy tworzona jest aplikację internetowa, możliwości wyboru języka były silnie ograniczone. Po stronie przeglądarki (ang. frontend) najpowszechniej wspieranym językiem jest JavaScript, ponieważ to on jest natywnie uruchamiany przez przeglądarki. Wiele współczesnych języków można obecnie skompilować do WebAssembly @webassembly, jednak ich wsparcie i ekosystem pozostają wciąż mniejsze w porównaniu z JavaScriptem.

TypeScript rozszerza JavaScript o statyczne typowanie oraz dodaje funkcje ułatwiające pracę z typami @typescript-handbook. Pozwala to szybko zauważać błędy w projekcie, które w języku z dynamicznym typowaniem, takim jak JavaScript, mogłyby być trudne do wychwycenia.

TypeScript wykorzystano również do pisania części serwerowej (ang. backend), aby móc współdzielić kod i typy oraz ograniczyć koszt przełączania kontekstu (ang. context switching) podczas pracy nad projektem.

== Środowisko uruchomieniowe - Node.js

Jako środowisko uruchomieniowe części serwerowej wybrano Node.js. Jest to rozwiązanie z długą historią rozwoju, często wykorzystywane przy tworzeniu aplikacji internetowych @stackoverflow-web-2026. Za jego wyborem przemawiała zgodność z pozostałymi narzędziami wybranymi do projektu.

Aplikacja nie miała szczególnych wymagań wobec środowiska uruchomieniowego, które uzasadniałyby wybór mniej rozpowszechnionego rozwiązania. Zdecydowano się więc na Node.js jako narzędzie wystarczające do realizacji założonych funkcji.

== Menedżer pakietów - npm

Jako menadżer pakietów wybrano npm (node package manager) jako opcję podstawową, znaną już zespołowi. Rozwiązanie to spełniało wymagania projektu i umożliwiło zredukowanie liczby nowych technologii, które zespól musiał poznać podczas tworzenia aplikacji.

== Baza danych - PostgreSQL

Jako bazę danych wybrano PostgreSQL, ponieważ jest to technologia dojrzała i stabilna, a błędy w tej części rozwiązania miałyby największe znaczenie dla całej aplikacji. PostgreSQL jest również najczęściej wykorzystywaną bazą danych według badania Stack Overflow Developer Survey @stackoverflow-survey-2026.

PostgreSQL umożliwiło odwzorowanie typów aplikacji i pozwoliło na przechowywanie całego stanu aplikacji, łącznie ze zdjęciami, w jednym miejscu.

Zdjęcia w aplikacjach internetowych często są przechowywane oddzielnie jako zwykłe pliki na serwerze lub w specjalnych usługach chmurowych takich jak Amazon S3.
Przechowywanie zdjęć w usłudze chmurowej nie było brane pod uwagę ze względu na fakt, iż aplikacja musiała być w pełni niezależna od usługodawców. Zapisywanie zdjęć w woluminie dołączonym do kontenera aplikacji wymagałoby utrzymywania dodatkowego stanu poza bazą danych i zapewnienia zgodności plików z zapisanymi w niej metadanymi. Błędy w tej części aplikacji mogłyby prowadzić na przykład do pozostawienia pliku po usunięciu metadanych.
Dlatego zdecydowano się przechowywać zdjęcia w PostgreSQL razem z pozostałymi danymi aplikacji, ponieważ pozwala to zachować bezstanowość kontenera aplikacji oraz upraszcza wykonywanie kopii zapasowych. Umożliwia również objęcie operacji zapisu, modyfikacji i usuwania zdjęć oraz ich metadanych wspólną transakcją, ograniczając ryzyko niespójności. Rozwiązanie zwiększa rozmiar bazy danych i obciążenie związane z obsługą zdjęć, jednak ze względu na przewidywaną skalę portfolio jednego artysty uznano te koszty za akceptowalne.

== ORM - Drizzle ORM

Mapowanie obiektowo-relacyjne (ang. ORM - object-relational mapping) umożliwia odwzorowanie danych z bazy relacyjnej na obiekty i struktury danych języka programowania. Jako ORM wybrano Drizzle ORM, ponieważ pozwala zdefiniować typy bazy danych bezpośrednio w TypeScript. Dzięki temu struktura danych opisana jest wprost w języku, w którym pisana jest aplikacja, co daje jedno źródło prawdy dla aplikacji i bazy danych oraz redukuje ilość wiedzy potrzebnej do pracy nad projektem @drizzle-migrations.

Drizzle ORM umożliwia ponadto łatwe wykonywanie migracji bazy danych @drizzle-migrations, co będzie potrzebne w momencie, w którym projekt będzie już wdrożony i będzie wymagał aktualizacji schematu.

== Biblioteka interfejsu użytkownika - React

Obecnie istnieje bardzo dużo platform programistycznych (ang. framework), których zadaniem jest ułatwienie tworzenia aplikacji internetowych @days-since-last-framework, przeanalizowanie wszystkich dostępnych opcji odbiegało od celu tej pracy. Dlatego przy wyborze technologii interfejsu użytkownika rozważano głównie bibliotekę React oraz oparte na niej platformy programistyczne. React jest obecnie wiodącą technologią tworzenia aplikacji internetowych @stackoverflow-web-2026.

React to biblioteka języka JavaScript do budowy interfejsów użytkownika @react-quick-start. Aplikacje zbudowane z jej użyciem składają się z komponentów, czyli fragmentów interfejsu łączących strukturę interfejsu z logiką i stanem @react-quick-start. Komponenty funkcyjne, czyli te wykorzystane w projekcie, są funkcjami które zwracają opis interfejsu zwykle zapisany za pomocą JSX. Komponenty można łączyć i zagnieżdżać, projektując w ten sposób całe strony @react-quick-start.

Model ten pozwalał na intuicyjne rozumowanie o interfejsie użytkownika. Podział na komponenty umożliwił naturalne rozdzielenie pracy w zespole. W przypadku większych komponentów wydzielono określone komponenty podrzędne do zaimplementowania w późniejszym czasie, chwilowo korzystając z ich implementacji tymczasowej.

React jest jednak wyłącznie biblioteką warstwy użytkownika i nie stanowi pełnego rozwiązania. Do stworzenia kompletnej aplikacji internetowej wymaga dodatkowych technologii, które będą odpowiedzialne za część serwerową aplikacji.

== Kompleksowa platforma programistyczna (ang. full-stack framework) - Next.js

Ostatecznie zdecydowano się na Next.js. Wykorzystuje on React jako bazę, ale jest pełnym zestawem rozwiązań, które wystarczają również do wykonania aplikacji bardziej złożonych niż aplikacja tworzona w tej pracy. Między innymi wprowadza prosty sposób na definiowanie ścieżek URL w aplikacji. Next.js tłumaczy strukturę plików i katalogów w katalogu `app/` na ścieżki URL, dodając przy tym użyteczne pliki i katalogi specjalne takie jak na przykład plik `layout.tsx`, który pozwala na zdefiniowanie części interfejsu wspólnych dla zagnieżdżonych widoków. Dzięki temu powiązanie adresów URL z odpowiadającymi im zasobami (ang. routing) jasno wynika ze struktury plików, zamiast być definiowane w oddzielnym pliku. @nextjs-layouts-pages

Next.js umożliwia napisanie części przeglądarkowej i serwerowej projektu w języku TypeScript. Udostępnia również mechanizmy renderowania po stronie serwera (ang. SSR - server-side rendering) oraz renderowania statycznego, czyli renderowania stałych fragmentów aplikacji w trakcie budowania projektu @nextjs-production. Pomaga to w optymalizacji czasu ładowania strony bez znacznego zwiększania potrzebnego nakładu pracy.

== Stylowanie - Tailwind CSS

Do stylowania zdecydowano się na Tailwind CSS. Jest to biblioteka udostępniająca klasy użytkowe, które przyspieszają stylowanie. Wykorzystanie jej również redukuje problem nazywania własnych klas CSS (ang. naming fatigue) @tailwind-utilities.

Tailwind przenosi stylowanie z plików CSS do kodu HTML. W połączeniu z Reactem, który łączy logikę komponentu z jego strukturą, sprawia to, że cała definicja komponentu znajduje się w jednym pliku. Ułatwia to rozumowanie o komponencie oraz jego późniejsze zmiany.

Główną wadą TailwindCSS jest fakt, że nie dostarcza on sposobu na upewnienie się, że podobne komponenty posiadają dokładnie ten sam styl, ani mechanizmu wykorzystania tego samego stylowania w wielu komponentach, tak jak robi to CSS. Problem ten jest jednak rozwiązywany przez bibliotekę React, która umożliwia programistyczne generowanie HTML (pętle czy wyrażenia warunkowe w JSX) oraz wprowadza abstrakcję komponentu. Eliminuje to powtarzanie się kodu HTML, a tym samym powtarzanie się elementów z podobnymi stylami. Jeżeli w aplikacji React zauważymy elementy z powtarzającymi się stylami Tailwind, sygnalizuje to, że prawdopodobnie powinny one być one generowane programatycznie lub być wydzielone do oddzielnego komponentu.

== Biblioteka komponentów - shadcn/ui

Biblioteka komponentów udostępnia często potrzebne komponenty, takie jak menu, kalendarz czy przycisk, w postaci działającej i/lub wystylizowanej. Zaletą stosowania takich bibliotek jest szybka praca nad aplikacją i łatwe prototypowanie widoków, ponieważ biblioteka dostarcza podstawowe bloki, za pomocą których można budować bardziej specyficzne komponenty.

W porównaniu do daisyUI, która zapewnia tylko styl komponentów, ale nie ich funkcje, oraz Base UI, która zapewnia tylko zachowanie komponentów, shadcn/ui dostarcza zarówno styl, jak i zachowanie, dzięki czemu komponenty są gotowe do wykorzystania w aplikacji @shadcn-introduction.

Dużą wadą bibliotek z wystylizowanymi komponentami jest fakt, iż aplikacje zbudowane z ich wykorzystaniem często wyglądają podobnie. Biblioteki tego typu wiążą się z trudniejszą personalizacją stylu w porównaniu z pisaniem komponentów samodzielnie. Powtarzalność wyglądu jest nieakceptowalna w publicznym widoku portfolio artysty, ponieważ jedną z funkcji portfolio jest wyróżnienie artysty na tle innych.

shadcn/ui, w porównaniu do innych bibliotek komponentów, udostępnia swoje komponenty jako edytowalne pliki w tworzonym projekcie, które w późniejszej fazie pracy możemy dowolnie dostosowywać @shadcn-introduction. Wykorzystanie shadcn/ui w widoku publicznym pozwoliło szybko dojść do momentu, w którym praca mogła być rozdzielona na wielu członków zespołu. Wszyscy członkowie mogli korzystać z tych samych podstawowych komponentów, które były dostosowane wizualnie do aplikacji w późniejszym czasie. Pozwoliło to wykorzystać zalety biblioteki komponentów, zachowując jednocześnie unikalny wygląd strony publicznej.

W widoku administracyjnym zdecydowano się na wykorzystanie bardziej podstawowego stylu biblioteki z uwagi na to, że widok ten ma charakter czysto funkcjonalny, ponieważ jest widziany tylko przez artystę. Brak spersonalizowanego stylu w tym widoku redukuje nakład pracy, co pozwoliło spędzić więcej czasu nad wyglądem części publicznej.

== Testy - Playwright

Do testowania aplikacji wybrano Playwright. Jest to biblioteka testów, której główną zaletą jest możliwość wykonywania testów kompleksowych (ang. end-to-end, e2e), czyli testów, które sprawdzają działanie aplikacji poprzez interakcje z nią z poziomu przeglądarki @playwright-introduction. W projekcie wykorzytano Playwright również do wykonywania testów jednostkowych, integracyjnych, oraz w parze z Drizzle ORM do do wykonywania testów operacji bazodanowych.

Wykorzystanie Playwright zredukowało liczbę technologii potrzebnych do testowania aplikacji w potrzebnym zakresie.

== Narzędzia dodatkowe - ESLint, Prettier, GitHub Actions

Dodatkowo, do utrzymania wysokiego standardu kodu zdecydowano się wykorzystać ESLint, narzędzie statycznej analizy kodu @eslint, oraz Prettier, narzędzie do ujednolicenia formatu kodu @prettier.

Za pomocą GitHub Actions zautomatyzowano uruchamianie testów oraz narzędzi ESLint i Prettier.
Pomyślne zakończenie wszystkich kontroli było wymagane przed scaleniem proponowanych zmian z gałęzią główną.
