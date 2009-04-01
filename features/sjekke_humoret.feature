Feature: Få større fokus på hvordan andre oppfater en
  For å kunne få større fokus
  Må ofte minnes på at andre oppfatter ens humør

  Scenario: Se humør
    Gitt at jeg er på startsiden
    Så skal jeg se 5 former for humør
    
  Scenario: Registere humør
    Gitt at jeg er på startsiden
    Og at jeg er den første idag
    Når jeg trykker på "glad"
    Så skal jeg se ett smilefjes av typen glad

  Scenario: Se gjennomsnitts humør
    Gitt at jeg er på startsiden
    Og andre har svart:
        | mood      |
        | glad      |
        | middels   |
    Når jeg trykker på "sur"
    Så skal jeg se ett smilefjes av typen middels

