unit uConstants;

interface

uses                              
  IWColor; 

const
  lcHeaderColor = clWebKhaki;
  lcOddColor = clWebWhite;          // for grids with info
  lcEvenColor = clWebLightGray;
  lcCellHeight = 24;
  lcHeaderCellHeight = 35; 
  lcFirstColLeft = 213;
  lcSecondColLeft = 413;
  lcTop = 168;
  lcTitleTop = 112;
  lcTitleLeft = 160;
  lcLeft = 230;
  lcTextColor = $00884143;
  lcImageFiles : array [1..5] of string =
    ('reviewrating1.gif', 'reviewrating2.gif', 'reviewrating3.gif'
    , 'reviewrating4.gif', 'reviewrating5.gif');
  cTotalFormat = 'Total $%s';

implementation

end.
