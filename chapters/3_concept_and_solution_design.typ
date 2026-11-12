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

Podstawowym założeniem projektu jest możliwość dostosowania wyglądu strony publicznej przez artystę. W związku z tym przedmiotem projektowania nie była jedna, konkretna szata graficzna, tylko system zasad, który przy dowolnych ustawieniach wybranych przez artystę pozwala uzyskać spójną stronę. W ramach tego systemu wyróżnione są dwie warstwy: stała, obejmująca strukturę stron, hierarchię treści oraz budowę komponentów, a także zmienna, obejmująca kroje pisma, kolorystykę i wybrane cechy wyglądu. Przedstawione w niniejszym podrozdziale makiety prezentują zatem jedną z możliwych konfiguracji.

Personalizacji nie podlega panel artysty. Otrzymał on stały wygląd, więc zmiany na stronie publicznej nie utrudniają artyście korzystania z samego panelu.

=== Warstwa stała

Niezmienna pozostaje struktura wszystkich podstron części publicznej, złożona z nagłówka, obszaru treści oraz stopki. Stałe położenie nawigacji i danych kontaktowych sprawia, że odwiedzający stronę zawsze wie, gdzie szukać najważniejszych informacji. Układ jest przy tym zgodny z konwencjami znanymi z innych witryn: menu znajduje się u góry strony, a dane kontaktowe w stopce.

Nagłówek i stopka pełnią różne funkcje: pierwszy służy do poruszania się po stronie, druga zachęca do nawiązania kontaktu z artystą. W nagłówku znajduje się logo, którym jest imię i nazwisko artysty zapisane zwykłym tekstem. Logo jest jednocześnie linkiem do strony głównej. Ponadto nagłówek zawiera menu nawigacyjne, umożliwiające przejście do poszczególnych części strony („O mnie”, „Portfolio”, „Kontakt”), a także przełącznik wersji językowej (PL/EN). Stopka zawiera dane kontaktowe artysty, w tym linki do jego profili w mediach społecznościowych oraz hasło zachęcające do kontaktu.

Ponieważ dane kontaktowe są dostępne w stopce każdej podstrony, w projekcie zrezygnowano z osobnej podstrony kontaktowej, a pozycja „Kontakt” w menu prowadzi do sekcji „Skontaktuj się ze mną.” na stronie „O mnie”. Dane te ograniczają się do adresu e-mail i linków do mediów społecznościowych, dlatego osobna podstrona zawierałaby niewiele treści. Umieszczenie ich na tej samej stronie co opis artysty sprawia natomiast, że odwiedzający, który zapoznał się z sylwetką artysty, od razu otrzymuje możliwość nawiązania z nim kontaktu.

Swoboda w doborze krojów pisma i kolorów niesie ze sobą ryzyko, że odwiedzający nie będzie w stanie odróżnić elementów najistotniejszych od tych mniej ważnych. Dlatego, o ile artysta ma wpływ na wygląd tekstu i kolorystykę strony, o tyle kolejność i ranga poszczególnych elementów treści pozostają niezmienne. Sekcje rozpoczynają się dużym nagłówkiem zakończonym kropką, np. „Wybrane prace.” na stronie głównej czy „Moje prace.” na stronie portfolio, który jednoznacznie wskazuje, czego dotyczy dana część strony. Stały porządek obowiązuje również na stronie pojedynczej pracy: kategoria i rok wykonania poprzedzają tytuł pracy, po którym następują tagi, a następnie opis podzielony na części „Technika i materiały” oraz „O projekcie”. Artysta może zmienić krój pisma tytułu, ale nie jego wielkość względem pozostałych elementów, dzięki czemu tytuł zawsze będzie wyróżniał się na tle pozostałej treści.

Opisane zasady obejmują również powtarzalne elementy strony, takie jak kafelki na stronie głównej, karty prac w portfolio czy etykiety tagów, które na każdej podstronie mają tę samą budowę. Ustawienie wprowadzone przez artystę w panelu zmienia zatem wygląd wszystkich wystąpień danego elementu jednocześnie, bez konieczności edytowania poszczególnych podstron. W efekcie, niezależnie od wybranej konfiguracji, strona zachowuje spójny układ, a artysta może skupić się na doborze stylistyki zamiast na projektowaniu każdej podstrony od podstaw.

=== Warstwa zmienna

Zakres zmian dostępnych dla artysty został celowo ograniczony do kilku parametrów, które w największym stopniu wpływają na charakter strony, ale nie naruszają jej układu. Obejmują one typografię, kolorystykę, gotowe motywy oraz dodatkowe opcje dotyczące wyglądu elementów strony. Wszystkie te zmiany artysta wprowadza w jednym miejscu - na stronie „Układ i personalizacja” w panelu artysty, którego projekt został przedstawiony w dalszej części rozdziału. Zapisane ustawienia od razu pojawiają się na stronie publicznej, więc artysta może łatwo sprawdzić efekt wprowadzonych zmian. Na tym samym ekranie jest również układ kafelków strony głównej, jednak ze względu na jego złożoność został on omówiony osobno, w podrozdziale poświęconym edytorowi układu Bento Box.

Kroje pisma artysta wybiera z zamkniętej listy, a nie spośród wszystkich fontów dostępnych w internecie. Pozwala to wcześniej sprawdzić, czy każdy z nich poprawnie wyświetla polskie znaki diakrytyczne, a także przygotować pliki fontów po stronie serwera aplikacji. Pliki te ograniczone są do znaków alfabetu łacińskiego wraz z rozszerzeniem obejmującym polskie litery oraz do kilku wybranych grubości, dzięki czemu ich rozmiar pozostaje niewielki niezależnie od wyboru artysty. Wybór obejmuje trzy role: krój podstawowy, stosowany w nagłówkach i logo, krój pomocniczy, przeznaczony dla elementów nawigacji, tekstu pomocniczego i wyróżnień, oraz krój dodatkowy, używany w tekście głównym.

Artysta nie ustala koloru każdego elementu strony osobno - wybiera jedynie trzy kolory bazowe, z których pozostałe odcienie wyprowadzane są automatycznie. Kolor tekstu stosowany jest w treści głównej oraz w nagłówkach, kolor tła obowiązuje na wszystkich podstronach, a kolor akcentu używany jest do wyróżnienia drobnych elementów, takich jak krótkie podpisy nad tytułami prac czy odnośniki po najechaniu na nie kursorem. Pozostałe odcienie, m.in. kolor tekstu pomocniczego czy obramowań, powstają przez zmieszanie kolorów bazowych w ustalonych proporcjach, dzięki czemu zawsze pasują do wyborów artysty. Nagłówki nie mają osobnego koloru, ponieważ od tekstu głównego odróżnia je wielkość oraz krój pisma.

W panelu dostępne są również trzy gotowe motywy: „Domyślny”, „Ciemny” oraz „Jasny”. Każdy z nich to zestaw trzech kolorów bazowych oraz krojów pisma. Po wybraniu motywu pola kolorów i krojów w panelu wypełniają się automatycznie, a artysta może je następnie zmienić według własnego uznania. Motyw jest więc punktem wyjścia: artysta szybko uzyskuje spójny wygląd strony bez samodzielnego dobierania każdego parametru, a jeśli zechce, może na jego podstawie stworzyć własny zestaw ustawień. Motyw domyślny za to ma celowo stonowaną, neutralną kolorystykę, aby nie konkurowała ona z kolorami prezentowanych prac.

=== Makiety części publicznej

Część publiczna składa się z czterech rodzajów podstron: strony głównej, portfolio, strony pojedynczej pracy oraz strony „O mnie”. Ich makiety przygotowano w programie Figma dla szerokości ekranu 1440 px, czyli w wersji na komputery.

==== Strona główna

Strona główna jest wizytówką artysty i pierwszą stroną, którą widzi odwiedzający. Zaczyna się od razu od prac. Pod nagłówkiem strony nie umieszczono banera ani tekstu powitalnego, ponieważ w portfolio najważniejsza jest twórczość, a informacje o artyście znajdują się na stronie „O mnie”. Jedyną sekcją jest „Wybrane prace.”, w której prezentowane są prace wskazane przez artystę (@fig-home).

#figure(
  image("../img/home.png", width: 100%),
  caption: [Makieta strony głównej],
) <fig-home>

Prace ułożone są w siatce typu Bento, złożonej z kafelków o różnych rozmiarach. W odróżnieniu od siatki równych kafelków pozwala ona wyeksponować najważniejsze prace oraz dopasować kształt do proporcji dzieła, np. umieścić pionowy obraz w wysokim kafelku. Każdy kafelek wypełniony jest zdjęciem pracy, na którym znajdują się jej tytuł, rok wykonania i tagi, a kliknięcie dowolnego miejsca kafelka prowadzi do strony pracy. Aby praca była dobrze widoczna, wyświetlane są na kafelku najwyżej trzy tagi. Tekst na zdjęciu jest zawsze biały i umieszczony na ciemnym gradiencie u dołu kafelka, więc pozostaje czytelny niezależnie od zdjęcia i od kolorów wybranych przez artystę. Układ kafelków artysta ustala osobno dla komputerów i telefonów, a sposób jego tworzenia opisano w podrozdziale poświęconym edytorowi układu Bento Box.

==== Portfolio

Strona portfolio zawiera pełną listę prac artysty. Nie pojawiają się na niej prace, które artysta oznaczył w panelu jako ukryte. Pod nagłówkiem „Moje prace.” znajdują się filtry kategorii i tagów, a poniżej karty prac oraz przycisk „Załaduj więcej” (@fig-portfolio).

#figure(
  image("../img/portfolio.png", width: 100%),
  caption: [Makieta strony portfolio],
) <fig-portfolio>

Prace można filtrować według jednej kategorii oraz dowolnej liczby tagów. Wybranie więcej niż jednego tagu powoduje, że wyświetlane są prace oznaczone wszystkimi wybranymi tagami. Lista tagów zależy od wybranej kategorii i obejmuje tylko te, które występują w należących do niej pracach. Wybrane filtry zapisywane są w adresie strony, więc odwiedzający może przesłać komuś link do przefiltrowanej listy, a po odświeżeniu strony wybór nie zostaje utracony.

Każda praca prezentowana jest w formie karty zawierającej okładkę, tytuł, rok wykonania oraz tagi. Okładką zostaje pierwsze zdjęcie ustawione przez artystę podczas dodawania pracy. Prace uporządkowane są od najnowszych według roku wykonania. Na początku widocznych jest dwanaście prac, a każde kliknięcie przycisku „Załaduj więcej” dodaje kolejne dwanaście. Odwiedzający nie musi więc przechodzić między numerowanymi stronami, tylko może wczytywać kolejne prace w tym samym widoku. Kategorie, które nie zawierają żadnej pracy, nie są wyświetlane w filtrach, a jeśli w danej kategorii nie ma żadnej pracy spełniającej wybrane filtry tagów, wyświetlany jest komunikat „Brak prac spełniających kryteria wyszukiwania”.

Karty prac ułożone są w kolumnach, w układzie typu _masonry_, znanym m.in. z serwisu Pinterest. Zdjęcia nie są przycinane do jednego formatu. Każde z nich zostaje zmniejszone tak, aby jego szerokość odpowiadała szerokości kolumny, a wysokość wynika z proporcji zdjęcia. Karty mają więc różną wysokość i w obrębie kolumny układają się bezpośrednio jedna pod drugą. W siatce Bento na stronie głównej zdjęcie dopasowywane jest do kształtu kafelka, więc jego brzegi mogą zostać obcięte. Na stronie portfolio odwiedzający widzi całą pracę, co ma znaczenie szczególnie przy pracach o nietypowych proporcjach, np. wąskich pionowych obrazach czy panoramicznych fotografiach. W odróżnieniu od strony głównej artysta nie musi niczego tu ustawiać, a nowo dodane prace same pojawiają się w kolumnach.

==== Strona pracy

Każda praca ma własną podstronę, na którą odwiedzający trafia po kliknięciu kafelka na stronie głównej lub karty w portfolio. Strona podzielona jest na dwie kolumny: szersza lewa przeznaczona jest na zdjęcia pracy, a prawa zawiera jej opis (@fig-praca).

#figure(
  image("../img/praca.png", width: 100%),
  caption: [Makieta strony pojedynczej pracy],
) <fig-praca>

Zdjęcia pracy prezentowane są w formie galerii. Na górze znajduje się duże zdjęcie główne, a poniżej miniatury maksymalnie trzech kolejnych zdjęć. Jeżeli zdjęć jest więcej, na ostatniej miniaturze wyświetlany jest tekst informujący o ich liczbie. Po kliknięciu zdjęcie wyświetla się w powiększeniu na całym ekranie. W tym trybie odwiedzający może przechodzić między wszystkimi zdjęciami pracy. Podgląd zamyka się kliknięciem poza obszarem zdjęcia.

Kolejność informacji w prawej kolumnie wynika z opisanej wcześniej hierarchii treści. Nad tytułem znajdują się kategoria i rok wykonania pracy, a pod nim tagi. Niżej, między liniami oddzielającymi, podane są wymiary. Opis pracy podzielony jest na dwie części. W części „Technika i materiały” artysta podaje krótkie informacje techniczne, a w części „O projekcie” może szerzej opisać kontekst powstania pracy i swoje założenia. Odwiedzający, którego interesuje jedynie technika wykonania, nie musi więc szukać jej w dłuższym tekście. Elementy, których artysta nie uzupełnił, np. wymiary czy opis techniki, nie są wyświetlane, więc na stronie nie pojawiają się puste nagłówki.

Pod zdjęciami i opisem znajduje się odnośnik „Zobacz kolejny” z tytułem następnej pracy. Pozwala on przejść do kolejnej pracy bez powrotu do portfolio. Po ostatniej pracy odnośnik prowadzi z powrotem do pierwszej, a jeśli artysta ma tylko jedną widoczną pracę, nie jest on wyświetlany.

==== O mnie

Strona „O mnie” jest miejscem, w którym artysta przedstawia samego siebie. Na jej górze znajduje się duży nagłówek złożony z imienia i nazwiska artysty oraz napisu „O mnie” (@fig-o-mnie). Poniżej znajduje się krótkie wprowadzenie, w którym artysta opisuje, czym się zajmuje. Obok niego umieszczono zdjęcie artysty. Portret nie jest wymagany i jeżeli artysta go nie doda, strona wyświetli się bez niego.

#figure(
  image("../img/o_mnie.png", width: 100%),
  caption: [Makieta strony „O mnie”],
) <fig-o-mnie>

Opis artysty składa się z kilku akapitów, a ich miejsce na stronie wynika z kolejności. Sposób wprowadzania opisu omówiono przy makiecie profilu w panelu artysty. Krótkim wprowadzeniem jest pierwszy akapit opisu, a pozostałe tworzą dłuższy opis umieszczony niżej. Jeśli opis składa się z jednego akapitu, dłuższa sekcja nie jest wyświetlana.

Stronę zamyka sekcja „Skontaktuj się ze mną.”, do której prowadzi pozycja „Kontakt” w menu. Zawiera ona krótki tekst zachęcający do kontaktu, adres e-mail artysty oraz odnośniki do jego profili w mediach społecznościowych. Kliknięcie adresu e-mail otwiera program pocztowy, a profile otwierają się w nowej karcie przeglądarki, więc strona artysty pozostaje otwarta i odwiedzający może łatwo do niej wrócić. Jeśli artysta nie dodał żadnych linków do mediów społecznościowych, ta część sekcji nie jest wyświetlana.

=== Makiety panelu artysty

Panel jest częścią aplikacji dostępną po zalogowaniu, w której artysta zarządza treścią swojej strony: pracami, kategoriami, tagami, profilem i ustawieniami wyglądu. W odróżnieniu od części publicznej, która służy prezentacji prac odwiedzającym, panel jest narzędziem pracy. Artysta korzysta z niego za każdym razem, gdy chce dodać nową pracę, poprawić jej opis lub zmienić wygląd strony, dlatego najważniejsze było to, żeby bez szukania trafiał do potrzebnej funkcji. Z tego powodu ekrany zbudowano według podobnego schematu, np. na górze ekranów prac i kategorii znajduje się tytuł z krótkim objaśnieniem, a obok niego przycisk dodawania nowego elementu. Po wprowadzeniu zmian artysta może od razu sprawdzić ich efekt, otwierając stronę publiczną za pomocą odnośnika „Podgląd portfolio” w menu.

Podział panelu na sekcje odpowiada temu, co artysta robi najczęściej. W sekcji „Prace” dodaje nowe prace, edytuje je i decyduje, które z nich mają być widoczne w portfolio. Kategorie i tagi znajdują się na wspólnym ekranie „Kategorie”, ponieważ oba służą do porządkowania prac, a na stronie publicznej pojawiają się obok siebie w filtrach portfolio. Wygląd strony artysta ustawia w sekcji „Układ i personalizacja”, a opis, zdjęcie i linki do mediów społecznościowych uzupełnia w „Profilu”. Pierwszą pozycją menu jest „Przegląd”, na którym artysta widzi liczbę dodanych prac, kategorii i tagów, miniaturę strony głównej oraz swoje profile w mediach społecznościowych.

Panel utrzymano w bieli i odcieniach szarości. Jedynym wyrazistym kolorem jest niebieski, którym oznaczono aktywną pozycję menu oraz zaznaczone elementy, np. pole formularza, w którym artysta właśnie wpisuje tekst. Cały panel korzysta z jednego bezszeryfowego kroju pisma, a ikony pochodzą z tego samego zestawu, przez co wszystkie ekrany zachowują spójny wygląd. Przy tak oszczędnej kolorystyce najbardziej rzucają się w oczy zdjęcia prac, czyli to, czym artysta w panelu zarządza. Panel wygląda tak samo niezależnie od ustawień strony publicznej, więc nawet jeśli artysta wybierze dla niej ciemny motyw, panel pozostaje jasny i czytelny.

==== Przegląd

Przegląd jest pierwszym ekranem, który artysta widzi po wejściu do panelu. Nie służy do wprowadzania zmian, tylko pełni rolę podsumowania stanu strony. Pod tytułem „Przegląd zawartości” znajdują się trzy karty z wartościami liczników, a niżej dwie kolumny: podgląd prac wyróżnionych na stronie głównej oraz lista profili artysty w mediach społecznościowych (@fig-przeglad).

#figure(
  image("../img/przeglad.png", width: 100%),
  caption: [Makieta ekranu „Przegląd” w panelu artysty],
) <fig-przeglad>

Karty pokazują, ile artysta dodał prac i tagów oraz ile ma aktywnych kategorii. Za aktywną uznawana jest kategoria, do której należy co najmniej jedna praca. Puste kategorie nie pojawiają się w filtrach na stronie portfolio, więc liczba na karcie odpowiada temu, co zobaczy odwiedzający. W przypadku prac liczone są natomiast wszystkie, łącznie z ukrytymi, dlatego liczba na karcie może być większa niż liczba prac widocznych w portfolio. Każda karta jest jednocześnie odnośnikiem. Karta prac otwiera listę prac, a kliknięcie karty kategorii lub tagów prowadzi do ekranu „Kategorie”, na którym artysta zarządza jednymi i drugimi.

W lewej kolumnie, pod nagłówkiem „Prace wyróżnione na stronie głównej.”, wyświetlana jest pomniejszona siatka Bento ze strony głównej w wersji na komputery. Artysta nie musi więc otwierać strony publicznej, żeby przypomnieć sobie, które prace są na niej wyeksponowane i jak zostały ułożone. Na miniaturze nie ma tytułów ani tagów, bo przy tej wielkości kafelków i tak byłyby nieczytelne. Kliknięcie podglądu przenosi artystę do ekranu „Układ i personalizacja”, na którym może zmienić układ kafelków. Sam edytor opisano w podrozdziale poświęconym edytorowi układu Bento Box. Jeśli artysta nie wybrał jeszcze żadnych prac na stronę główną, zamiast siatki pojawia się komunikat „Nie wybrano jeszcze prac na stronę główną.”

Prawa kolumna, „Linki społecznościowe.”, pokazuje, ile linków artysta dodał w profilu, a pod tą liczbą same linki. Każdy z nich zajmuje dwie linie: wyżej znajduje się nazwa nadana przez artystę, np. „Instagram”, a niżej skrócony adres, np. `instagram.com/elara.voss`. Nazwa jest tym samym tekstem, który odwiedzający zobaczy na stronie „O mnie”, więc artysta od razu wie, jak link zostanie podpisany. Adres bez przedrostka `https://` pozwala z kolei szybko sprawdzić, czy link prowadzi do właściwego profilu. Linki dodaje się i edytuje w sekcji „Profil”, a jeśli artysta nie dodał jeszcze żadnego, w karcie widoczny jest komunikat „Nie dodano jeszcze linków.”

==== Lista prac

Ekran „Prace” zawiera wszystkie prace dodane przez artystę, również te, które ukrył przed odwiedzającymi. Na górze znajduje się tytuł „Zarządzaj pracami” z krótkim objaśnieniem oraz przycisk „Dodaj pracę”, który prowadzi do formularza opisanego w kolejnej sekcji. Niżej umieszczono wyszukiwarkę, a pod nią karty prac ułożone w trzech kolumnach (@fig-lista-prac).

#figure(
  image("../img/lista_prac.png", width: 100%),
  caption: [Makieta ekranu listy prac w panelu artysty],
) <fig-lista-prac>

Karta pracy w panelu różni się od karty w portfolio. Zawiera okładkę, czyli pierwsze zdjęcie pracy, a także tytuł, kategorię i datę dodania. Nie ma na niej tagów ani roku wykonania, ponieważ na tym ekranie artysta przede wszystkim szuka pracy, którą chce zmienić, a do jej rozpoznania wystarczą zdjęcie i tytuł. W dolnej części karty znajdują się przełącznik widoczności oraz ikony edycji i usuwania. Ikona ołówka otwiera formularz edycji pracy, a ikona kosza okno z prośbą o potwierdzenie. Komunikat w tym oknie uprzedza, że praca zostanie trwale usunięta razem ze wszystkimi zdjęciami.

Przełącznik widoczności pozwala ukryć pracę bez jej usuwania, np. gdy artysta chce na jakiś czas zdjąć ją ze strony. Ukryta praca znika ze strony głównej i z portfolio, a jej podstrona przestaje być dostępna, ale w panelu nadal jest na liście i w każdej chwili można ją ponownie pokazać. Zmiana zapisuje się od razu po kliknięciu i nie trzeba jej dodatkowo zatwierdzać. Pod tytułem ekranu pojawia się wtedy krótki komunikat, np. „Praca została ukryta.” Przełącznik ukrytej pracy jest szary, a napis „Ukryta” jaśniejszy, więc na liście od razu widać, których prac odwiedzający nie zobaczą.

Wyszukiwanie obejmuje tytuły prac oraz nazwy kategorii w wersji polskiej i angielskiej. Jeśli żadna praca nie pasuje do wpisanej frazy, zamiast kart pojawia się komunikat „Nie znaleziono prac pasujących do wyszukiwanej frazy.” Podobny komunikat wyświetlany jest wtedy, gdy artysta nie dodał jeszcze żadnej pracy. Prace ułożone są od ostatnio dodanej, więc nowa praca od razu trafia na początek listy. Na jednej stronie mieści się sześć kart, a pod nimi znajdują się numery stron i strzałki. W portfolio odwiedzający przegląda prace po kolei i doczytuje kolejne przyciskiem „Załaduj więcej”, natomiast w panelu artysta zwykle szuka jednej konkretnej pracy, dlatego łatwiej mu od razu przejść na wybraną stronę. Wpisana fraza i numer strony zapisywane są w adresie, więc po odświeżeniu wynik wyszukiwania nie znika.

==== Dodawanie i edycja pracy

Dodawanie nowej pracy i edycja istniejącej odbywają się w tym samym formularzu. Różnią się jedynie tytułem ekranu, „Dodaj pracę” lub „Edytuj pracę”, oraz tym, że przy edycji pola są już wypełnione zapisanymi danymi. Pola ułożone są od najważniejszych: najpierw tytuł, rok wykonania i wymiary, potem opis, kategoria i tagi, a na końcu zdjęcia (@fig-dodawanie-pracy).

#figure(
  image("../img/dodawanie_pracy.png", width: 100%),
  caption: [Makieta formularza dodawania i edycji pracy],
) <fig-dodawanie-pracy>

Tytuł, technikę oraz opis „O projekcie” artysta wpisuje w dwóch wersjach językowych, ponieważ strona publiczna jest dostępna po polsku i po angielsku. Zamiast dwóch osobnych pól nad każdym z nich znajdują się zakładki „Polski” i „English”, które przełączają wersję tekstu w tym samym polu. Formularz jest dzięki temu krótszy i artysta może najpierw uzupełnić wszystko po polsku, a tłumaczenie dodać później. Wymagane są jedynie tytuł w przynajmniej jednym języku oraz kategoria. Pozostałe pola można zostawić puste, a odpowiadające im elementy nie pojawią się wtedy na stronie pracy. Wymiary artysta podaje w dowolnym formacie, ponieważ inaczej opisuje się obraz, a inaczej rzeźbę czy instalację.

Kategorię i tagi artysta wybiera z dwóch list umieszczonych obok siebie. Do pracy można przypisać tylko jedną kategorię, ale dowolną liczbę tagów. Każda z list ma własną wyszukiwarkę, co przydaje się, gdy tagów jest dużo. Jeśli potrzebnej kategorii lub tagu jeszcze nie ma, artysta nie musi opuszczać formularza i przechodzić do sekcji „Kategorie”. Nad każdą listą znajduje się przycisk dodawania, który otwiera niewielkie okno, a nowo utworzona pozycja jest od razu zaznaczona w formularzu.

Zdjęcia dodaje się, przeciągając pliki na wyznaczone pole albo wybierając je z dysku. Obsługiwane są formaty PNG, JPG i GIF oraz krótkie filmy MP4, a każdy plik może mieć najwyżej 2 MB. Pliki dodawane przy jednym zapisie mogą mieć łącznie najwyżej 20 MB. Pod polem wyświetla się lista dodanych plików, której kolejność odpowiada kolejności zdjęć w galerii na stronie pracy. Artysta zmienia ją, przeciągając plik za uchwyt lub używając strzałek. Pierwszy plik na liście staje się okładką pracy i jest oznaczony etykietą „Okładka”. Okładką nie może być film, dlatego formularz nie pozwala przesunąć pliku MP4 na początek listy i wyświetla wtedy komunikat. Jeśli natomiast film znalazłby się na pierwszym miejscu po dodaniu nowych plików lub usunięciu okładki, jego miejsce automatycznie zajmuje pierwsze zdjęcie z listy.

==== Kategorie i tagi

Na ekranie „Kategorie” artysta zarządza zarówno kategoriami, jak i tagami, ponieważ jedne i drugie służą do porządkowania prac, a na stronie publicznej pojawiają się razem w filtrach portfolio. Ekran składa się z dwóch części, najpierw kategorii, a pod nimi tagów, zbudowanych według tego samego schematu: po lewej stronie znajduje się formularz, a po prawej lista istniejących pozycji (@fig-kategorie-tagi).

#figure(
  image("../img/kategorie_tagi.png", width: 100%),
  caption: [Makieta ekranu kategorii i tagów w panelu artysty],
) <fig-kategorie-tagi>

Ten sam formularz służy do dodawania i do edycji. Zawiera dwa pola, na nazwę polską i angielską, i oba są wymagane, ponieważ nazwy kategorii i tagów wyświetlane są w filtrach obu wersji językowych strony. Po kliknięciu ikony ołówka przy kategorii albo samego tagu nazwy wybranej pozycji trafiają do formularza, którego tytuł zmienia się na „Edytuj kategorię” lub „Edytuj tag”, a edytowana pozycja zostaje obramowana na liście. Artysta widzi więc, co zmienia, i nie musi otwierać osobnego okna. Nie można też dodać dwóch kategorii ani dwóch tagów o tej samej nazwie.

Kategorie wyświetlane są w tabeli w kolejności alfabetycznej. Przy każdej z nich widać nazwę polską, a pod nią mniejszą czcionką angielską, oraz liczbę przypisanych prac, np. „1 praca”, „4 prace” czy „12 prac”. Ta liczba podpowiada, czy kategorię można usunąć. Kategorii, do której należy choć jedna praca, nie da się skasować, ponieważ każda praca musi mieć kategorię. Artysta musi więc najpierw przypisać te prace do innej kategorii, a próba usunięcia kończy się komunikatem z wyjaśnieniem.

Tagi przedstawione są jako etykiety zaczynające się od znaku `#`. Jeśli angielska nazwa różni się od polskiej, wyświetlana jest pod nią mniejszą czcionką. Znak `#` dodawany jest automatycznie, o czym przypomina krótka wskazówka pod formularzem, więc artysta wpisuje samą nazwę. Lista tagów ma własną wyszukiwarkę, a w jej nagłówku widać łączną liczbę tagów. W przeciwieństwie do kategorii tag można usunąć zawsze, ale okno potwierdzenia uprzedza, że zostanie on odpięty od wszystkich prac, do których był przypisany.

==== Układ i personalizacja

// TODO: Opisz ekran „Układ i personalizacja” (odwołanie z podrozdziału „Warstwa zmienna”): wybór krojów pisma, kolorów, gotowych motywów i opcji wyglądu, zapisywanie ustawień.

==== Profil

// TODO: Opisz ekran profilu (odwołanie z sekcji „O mnie”): jedno pole opisu w wersji polskiej i angielskiej, akapity oddzielane pustą linią bez formatowania, zdjęcie, linki do mediów społecznościowych.

== Specyfikacja routingu

// TODO: Opisz specyfikację routingu.

== Koncepcja edytora układu Bento Box

// TODO: Przedstaw koncepcję edytora układu Bento Box (odwołania z podrozdziału „Warstwa zmienna” i sekcji „Strona główna”): tworzenie układu kafelków, osobne układy dla komputerów i telefonów.
