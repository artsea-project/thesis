= Materiały uzupełniające <appendix-materials>

== Scenariusz i instrukcja badania użyteczności systemu <appendix:a>


==== Zasady badania

Przedmiotem badania jest użyteczność aplikacji ArtSea. Podczas wykonywania zadań prosimy o głośne wypowiadanie swoich myśli i uwag. Mów na bieżąco, czego szukasz, co wydaje Ci się intuicyjne, a czego nie rozumiesz. Moderator nie będzie podpowiadał, ale w każdej chwili możesz korzystać z dostarczonej instrukcji obsługi systemu.

==== Przygotowane materiały

Razem z instrukcją otrzymałeś/aś plik `materialy-testowe.zip` z przykładowymi zdjęciami prac i zdjęciem profilowym. Użyj ich do stworzenia portfolio. Możesz również użyć własnych materiałów.

==== Scenariusz

Jesteś młodym artystą, który za tydzień zgłasza się na wystawę i potrzebuje szybko przygotować spójne portfolio online. Właśnie otrzymałeś/aś dostęp do aplikacji ArtSea oraz instrukcję obsługi. Twoim celem jest stworzenie gotowej wizytówki swoich prac, którą będziesz mógł wysłać kuratorowi:

1. Zarejestruj się w systemie.
2. Uzupełnij swój profil artysty: zdjęcie, biografia, linki do mediów społecznościowych i dane kontaktowe.
3. Dodaj co najmniej trzy swoje prace wraz z plikami, opisem, kategorią i tagami.
4. Dostosuj wygląd portfolio (układ prac oraz kolorystykę i czcionki) tak, aby pasował do Twojego stylu.
5. Zapisz zmiany i sprawdź na stronie publicznej, czy portfolio wygląda dokładnie tak, jak chciałbyś je pokazać odbiorcy.

==== Zakończenie

Gdy uznasz, że Twoje portfolio jest gotowe do wysłania kuratorowi, poinformuj moderatora o zakończeniu zadania.

== Instrukcja obsługi systemu <appendix:b>

#for page-number in range(1, 51) {
  image(
    "ArtSea_Portfolio_Instrukcja_Obslugi.pdf",
    page: page-number,
    width: 100%,
    height: 30%,
    fit: "contain",
  )

  if calc.rem(page-number, 3) == 0 {
    pagebreak()
  }
}