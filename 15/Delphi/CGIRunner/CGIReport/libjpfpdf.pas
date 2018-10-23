{

Free JPDF Pascal

Based on the library FPDF written in PHP by Olivier PLATHEY and
the Code25 method was based on PHP script created by Matthias Lau

Author: Jean Patrick - jpsoft-sac-pa@hotmail.com - www.jeansistemas.net

Contribution: Gilson Nunes - Use of enumerators and resolved bug related to decimal point.

Date: 08/06/2012

Version: 1.33 Stable

License: You can freely use and modify this library for commercial purposes or not,
         provided you keep the credits to the author and his contributors.

}

/// Converted to Delphi by Alexandre Machado - Atozed Software


unit libjpfpdf;

{$H+}

interface

uses
  Classes, SysUtils, Graphics, Jpeg, GIFImg, PngImage, zLib;

type
  TJPImageInfo = record
    filePath: string;
    imgSource: TMemoryStream;
    sizebits: integer;
    n: integer;
    w: double;
    h: double;
    cs: string;
    bpc: integer;
    f: string;
    parms: string;
    pal: string;
    trns: string;
  end;

  TJPFont = record
    Name: string;
    number: integer;
  end;

  TJPColor = (cBlack, cSilver, cGray, cWhite, cMaroon, cRed, cPurple, cFuchsia,
    cGreen, cLime, cOlive, cYellow, cNavy, cBlue, cTeal, cAqua);
  TPDFOrientation = (poPortrait, poLandscape, poDefault);
  TPDFUnit = (puPT, puMM, puCM, puIN);
  TPDFPageFormat = (pfA3, pfA4, pfA5, pfLetter, pfLegal);
  TPDFFontFamily = (ffCourier, ffHelvetica, ffTimes, ffSymbol, ffZapfdingbats);
  TPDFFontStyle = (fsNormal, fsBold, fsItalic, fsBoldItalic);
  TPDFDisplayMode = (dmFullPage, dmFullWidth, dmReal, dmDefault, dmZoom);
  TPDFContentStream = (csToViewBrowser, csToDownload);

  TPDFFontArray = array[0..255] of Integer;

  { TJPFpdf }

  TJPFpdf = class
  private
    function FontWasUsed(font: string): boolean;
    function GetInfoImage(const imgFile: string): TJPImageInfo;
    function GzCompress(StrIn: string; CompLevel: TCompressionLevel = clMax): string;
    function GzDecompress(StrIn: string): string;
    function _dounderline(vX, vY: double; vText: string): string;
    procedure _begindoc;
    procedure _enddoc;
    procedure _beginpage(orientation: string);
    procedure _endpage;
    procedure _newobj;
    function _setfont(fFamily: TPDFFontFamily; fStyle: TPDFFontStyle;
      fSize: double): boolean;
    function _setfontsize(fSize: double): boolean;
  protected
    function FloatToStr(Value: double): string;
    function _escape(const sText: string): string;
    procedure _out(const sText: string);
  public
    page: integer;               // current page number
    numObj: integer;             // current object number
    offsets: array of integer;   // array of object offsets
    buffer: TMemoryStream;       // buffer holding in-memory PDF
    pages: array of string;      // array containing pages
    state: integer;              // current document state
    compress: boolean;           // compression flag
    DefOrientation: TPDFOrientation;      // default orientation
    CurOrientation: TPDFOrientation;      // current orientation
    OrientationChanges: array of boolean;    // array indicating orientation changes
    fwPt, fhPt: double;           // dimensions of page format in points
    fw, fh: double;               // dimensions of page format in user unit
    wPt, hPt: double;             // current dimensions of page in points
    dw, dh: double;               // current dimensions of page in user unit
    lMargin: double;            // left margin
    tMargin: double;            // top margin
    rMargin: double;            // right margin
    bMargin: double;            // page break margin
    cMargin: double;            // cell margin
    cpX, cpY: double;             // current position in user unit for cell positionning
    hLasth: double;              // height of last cell printed
    pgK: double;                  // scale factor (number of points in user unit)
    pLineWidth: double;          // line width in user unit
    pUTF8: boolean;              // Set UTF8ToUTF16 to suport unicode
    pFonts: array of TJPFont;          // array of used fonts
    pImages: array of TJPImageInfo;    // array of used images
    cFontFamily: TPDFFontFamily;       // current font family
    cFontStyle: TPDFFontStyle;         // current font style
    cFontSizePt: double;         // current font size in points
    cFontSize: double;           // current font size in user unit
    pUnderlineFlag: boolean;      // underlining flag
    pDrawColor: string;          // commands for drawing color
    pFillColor: string;          // commands for filling color
    pTextColor: string;          // commands for text color
    pColorFlag: boolean;         // indicates whether fill and text colors are different
    pgWs: double;                 // word spacing
    AutoPageBreak: boolean;     // automatic page breaking
    PageBreakTrigger: double;   // threshold used to trigger page breaks
    InFooter: boolean;          // flag set when processing footer
    DocDisplayMode: string;        // display mode
    DocTitle: string;              // title
    DocSubject: string;            // subject
    DocAuthor: string;             // author
    DocKeywords: string;           // keywords
    DocCreator: string;            // creator
    DocAliasNbPages: string;       // alias for total number of pages
    Jpdf_charwidths: array[TPDFFontFamily] of array[TPDFFontStyle] of TPDFFontArray; //array [0..255] of integer; // widths of the characters of fonts
    constructor Create(orientation: TPDFOrientation = poPortrait;
      pageUnit: TPDFUnit = puMM; pageFormat: TPDFPageFormat = pfA4);
    destructor Destroy; override;
    procedure SetMargins(marginLeft: double; marginTop: double;
      marginRight: double = -1);
    procedure SetUTF8(mode: Boolean = False);
    procedure SetLeftMargin(marginLeft: double);
    procedure SetRightMargin(marginRight: double);
    procedure SetAutoPageBreak(vAuto: boolean; vMargin: double = 0.0);
    procedure SetDisplayMode(mode: TPDFDisplayMode; zoom: smallint = 100);
    procedure SetCompression(scompress: boolean);
    procedure SetTitle(vTitle: string);
    procedure SetSubject(ssubject: string);
    procedure SetAuthor(vAuthor: string);
    procedure SetKeywords(vKeywords: string);
    procedure SetCreator(vCreator: string);
    procedure AliasNbPages(vAlias: string = '{nb}');
    procedure Error(TextMsg: string);
    procedure Open;
    procedure Close;
    procedure AddPage(Orientation: TPDFOrientation = poDefault);
    function PageNo: integer;
    procedure SetDrawColor(ValR: integer; ValG: integer = -1; ValB: integer = -1); overload;
    procedure SetFillColor(ValR: integer; ValG: integer = -1; ValB: integer = -1); overload;
    procedure SetTextColor(ValR: integer; ValG: integer = -1; ValB: integer = -1); overload;
    procedure SetTextColor(color: TJPColor); overload;
    procedure SetFillColor(color: TJPColor); overload;
    procedure SetDrawColor(color: TJPColor); overload;
    function GetStringWidth(vText: string): double;
    procedure SetLineWidth(vWidth: double);
    procedure Line(vX1, vY1, vX2, vY2: double);
    procedure Rect(vX, vY, vWidht, vHeight: double; vStyle: string = '');
    procedure SetFont(fFamily: TPDFFontFamily; fStyle: TPDFFontStyle;
      fSize: double = 0.0; fUnderline: boolean = False); overload;
    procedure SetFont(fFamily: TPDFFontFamily; fSize: double = 0.0;
      fUnderline: boolean = False); overload;
    procedure SetFontSize(fSize: double; fUnderline: boolean = False);
    procedure SetUnderline(fUnderline: boolean = False);
    procedure Text(vX, vY: double; vText: string);
    procedure Writer(vHeight: double; vText: string);
    function AcceptPageBreak: boolean;
    procedure Cell(vWidth: double; vHeight: double = 0.0; vText: string = '';
      vBorder: string = '0'; vLineBreak: integer = 0; vAlign: string = '';
      vFill: integer = 0);
    procedure MultiCell(vWidth, vHeight: double; vText: string;
      vBorder: string = '0'; vAlign: string = 'J'; vFill: integer = 0);
    procedure Image(vFile: string; vX: double; vY: double; vWidth: double;
      vHeight: double = 0.0);
    procedure Ln(vHeight: double = 0);
    function GetX: double;
    procedure SetX(vX: double);
    function GetY: double;
    procedure SetY(vY: double);
    procedure SetXY(vX, vY: double);
    procedure SaveToFile(vFile: string);
    function SaveToStream: TStream;
    function SaveToString: string;
    function CreateContentStream(cs: TPDFContentStream = csToViewBrowser): TStream;
    procedure Code25(vXPos, vYPos: double; vTextCode: string;
      vBaseWidth: double = 1.00; vHeight: double = 10.00);
    procedure Header; Virtual;
    procedure Footer; Virtual;
  end;

implementation

uses
  IWImageUtils;

{ TJPFpdf }

const
  {$i inc_fontes.inc}
  TPDFFormatSetings: TFormatSettings = (
    CurrencyString: '$';
    CurrencyFormat: 1;
    CurrencyDecimals: 2;
    DateSeparator: '-';
    TimeSeparator: ':';
    ListSeparator: ',';
    ShortDateFormat: 'd/m/y';
    LongDateFormat: 'dd" "mmmm" "yyyy';
    TimeAMString: 'AM';
    TimePMString: 'PM';
    ShortTimeFormat: 'hh:nn';
    LongTimeFormat: 'hh:nn:ss';
    ShortMonthNames: ('Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun',
    'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec');
    LongMonthNames: ('January', 'February', 'March', 'April', 'May', 'June',
    'July', 'August', 'September', 'October', 'November', 'December');
    ShortDayNames: ('Sun', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat');
    LongDayNames: ('Sunday', 'Monday', 'Tuesday', 'Wednesday', 'Thursday',
    'Friday', 'Saturday');
    ThousandSeparator: #0;
    DecimalSeparator: '.';
    TwoDigitYearCenturyWindow: 50;
    NegCurrFormat: 5;
    );

  JORIENTATION: array[TPDFOrientation] of char = ('P', 'L', #0);
  JUNIT: array[TPDFUnit] of double = (1, 72 / 25.4, 72 / 2.54, 72);
  JFORMAT_W: array[TPDFPageFormat] of double = (841.89, 595.28, 420.94, 612, 612);
  JFORMAT_H: array[TPDFPageFormat] of double = (1190.55, 841.89, 595.28, 792, 1008);
  JCOLOR_R: array[TJPColor] of smallint =
    (0, 192, 128, 255, 128, 255, 128, 255, 0, 0, 128, 255, 0, 0, 0, 0);
  JCOLOR_G: array[TJPColor] of smallint =
    (0, 192, 128, 255, 0, 0, 0, 0, 128, 255, 128, 255, 0, 0, 128, 255);
  JCOLOR_B: array[TJPColor] of smallint =
    (0, 192, 128, 255, 0, 0, 128, 255, 0, 0, 0, 0, 128, 255, 128, 255);
  JFONTFAMILY: array[TPDFFontFamily] of shortstring =
    ('Courier', 'Helvetica', 'Times', 'Symbol', 'Zapfdingbats');
  JFONTSTYLE: array[TPDFFontStyle] of shortstring =
    ('', '-Bold', '-Oblique', '-BoldOblique');
  JDISPLAYMODE: array[TPDFDisplayMode] of shortstring =
    ('fullpage', 'fullwidth', 'real', 'default', 'zoom');
  FREE_JPDF_PASCAL_VERSION = '1.0 Stable';

constructor TJPFpdf.Create(orientation: TPDFOrientation; pageUnit: TPDFUnit;
  pageFormat: TPDFPageFormat);
var
  ssmargin: double;
begin
  //Initialization of properties
  SetUTF8(False);
  Self.page := 0;
  Self.numObj := 2;
  Self.buffer := TMemoryStream.Create;
  Self.buffer.Position := 0;
  Self.state := 0;
  Self.InFooter := False;
  Self.cFontFamily := ffTimes;
  Self.cFontStyle := fsNormal;
  Self.cFontSizePt := 12;
  Self.pDrawColor := '0 G';
  Self.pFillColor := '0 g';
  Self.pTextColor := '0 g';
  Self.pColorFlag := False;
  Self.pUnderlineFlag := False;
  Self.pgWs := 0;
  //Fonts Char Sizes

  Jpdf_charwidths[ffCourier][fsNormal] := FONT_COURIER_FULL;
  Jpdf_charwidths[ffHelvetica][fsNormal] := FONT_HELVETICA_ARIAL;
  Jpdf_charwidths[ffHelvetica][fsBold] := FONT_HELVETICA_ARIAL_BOLD;
  Jpdf_charwidths[ffHelvetica][fsItalic] := FONT_HELVETICA_ARIAL_ITALIC;
  Jpdf_charwidths[ffHelvetica][fsBoldItalic] := FONT_HELVETICA_ARIAL_BOLD_ITALIC;
  Jpdf_charwidths[ffTimes][fsNormal] := FONT_TIMES;
  Jpdf_charwidths[ffTimes][fsBold] := FONT_TIMES_BOLD;
  Jpdf_charwidths[ffTimes][fsItalic] := FONT_TIMES_ITALIC;
  Jpdf_charwidths[ffTimes][fsBoldItalic] := FONT_TIMES_BOLD_ITALIC;
  Jpdf_charwidths[ffSymbol][fsNormal] := FONT_SYMBOL;
  Jpdf_charwidths[ffZapfdingbats][fsNormal] := FONT_ZAPFDINGBATS;

  //Scale factor
  Self.pgK := JUNIT[pageUnit];
  //Page format
{  if(is_string(pageFormat)) then
  begin}
  Self.fwPt := JFORMAT_W[pageFormat];
  Self.fhPt := JFORMAT_H[pageFormat];
{  end    //                  TAMANHO PERSONALIZADO pageFormat sintaxe '9999.99,9999.99' largura,altura
  else
  begin
    Self.fwPt := round(pageFormat[0]*Self.pgK,2);
    Self.fhPt := round(pageFormat[1]*Self.pgK,2);
  end;}
  Self.fw := StrToFloat(FloatToStrF(Self.fwPt / Self.pgK, ffNumber,
    14, 2, TPDFFormatSetings), TPDFFormatSetings);
  Self.fh := StrToFloat(FloatToStrF(Self.fhPt / Self.pgK, ffNumber,
    14, 2, TPDFFormatSetings), TPDFFormatSetings);
  //Page orientation
  if (orientation in [poPortrait, poDefault]) then
  begin
    Self.DefOrientation := orientation;
    Self.wPt := Self.fwPt;
    Self.hPt := Self.fhPt;
  end
  else
  begin
    Self.DefOrientation := orientation;
    Self.wPt := Self.fhPt;
    Self.hPt := Self.fwPt;
  end;
  Self.CurOrientation := Self.DefOrientation;
  Self.dw := StrToFloat(FloatToStrF(Self.wPt / Self.pgK, ffNumber,
    14, 2, TPDFFormatSetings), TPDFFormatSetings);
  Self.dh := StrToFloat(FloatToStrF(Self.hPt / Self.pgK, ffNumber,
    14, 2, TPDFFormatSetings), TPDFFormatSetings);
  //Page margins (1 cm)
  ssmargin := StrToFloat(FloatToStrF(28.35 / Self.pgK, ffNumber, 14,
    2, TPDFFormatSetings), TPDFFormatSetings);
  SetMargins(ssmargin, ssmargin);
  //Interior cell margin (1 mm)
  Self.cMargin := ssmargin / 10;
  //Line width (0.2 mm)
  Self.pLineWidth := StrToFloat(FloatToStrF(0.567 / Self.pgK, ffNumber, 14,
    3, TPDFFormatSetings), TPDFFormatSetings);
  //Automatic page break
  SetAutoPageBreak(True, 2 * ssmargin);
  //Full width display mode
  SetDisplayMode(dmFullWidth);
  //Compression
  SetCompression(False);
end;

destructor TJPFpdf.Destroy;
begin
  Self.buffer.Free;
  inherited Destroy;
end;

procedure TJPFpdf.SetMargins(marginLeft: double; marginTop: double; marginRight: double);
begin
  //Set left and top margins
  Self.lMargin := marginLeft;
  Self.tMargin := marginTop;
  if (marginRight = -1) then
    Self.rMargin := Self.lMargin
  else
    Self.rMargin := marginRight;
end;

procedure TJPFpdf.SetUTF8(mode: Boolean);
begin
  pUTF8 := mode;
end;

procedure TJPFpdf.SetLeftMargin(marginLeft: double);
begin
  //Set left margin
  Self.lMargin := marginLeft;
  if ((Self.page > 0) and (Self.cpX < marginLeft)) then
    Self.cpX := marginLeft;
end;

procedure TJPFpdf.SetRightMargin(marginRight: double);
begin
  //Set right margin
  Self.rMargin := marginRight;
end;

procedure TJPFpdf.SetAutoPageBreak(vAuto: boolean; vMargin: double);
begin
  //Set auto page break mode and triggering margin
  Self.AutoPageBreak := vAuto;
  Self.bMargin := vMargin;
  Self.PageBreakTrigger := Self.dh - vMargin;
end;

procedure TJPFpdf.SetDisplayMode(mode: TPDFDisplayMode; zoom: smallint);
begin
  //Set display mode in viewer
  if (mode = dmZoom) then
    Self.DocDisplayMode := IntToStr(zoom)
  else
    Self.DocDisplayMode := JDISPLAYMODE[mode];
end;

procedure TJPFpdf.SetCompression(scompress: boolean);
begin
  //Set page compression
  Self.compress := scompress;
end;

procedure TJPFpdf.SetTitle(vTitle: string);
begin
  //Title of document
  Self.DocTitle := vTitle;
end;

procedure TJPFpdf.SetSubject(ssubject: string);
begin
  //Subject of document
  Self.DocSubject := ssubject;
end;

procedure TJPFpdf.SetAuthor(vAuthor: string);
begin
  //Author of document
  Self.DocAuthor := vAuthor;
end;

procedure TJPFpdf.SetKeywords(vKeywords: string);
begin
  //Keywords of document
  Self.DocKeywords := vKeywords;
end;

procedure TJPFpdf.SetCreator(vCreator: string);
begin
  //Creator of document
  Self.DocCreator := vCreator;
end;

procedure TJPFpdf.AliasNbPages(vAlias: string);
begin
  //Define an alias for total number of pages
  Self.DocAliasNbPages := vAlias;
end;

procedure TJPFpdf.Error(TextMsg: string);
begin
  //Fatal error
  raise Exception.Create('JPFPDF error: ' + TextMsg);
end;

procedure TJPFpdf.Open;
begin
  //Begin document
  _begindoc;
end;

procedure TJPFpdf.Close;
begin
  //Terminate document
  if (Self.page = 0) then
    Error('Document contains no page');
  //Page footer
  Self.InFooter := True;
  Footer;
  Self.InFooter := False;
  //Close page
  _endpage;
  //Close document
  _enddoc;
end;

procedure TJPFpdf.AddPage(orientation: TPDFOrientation);
var
  vdc, vfc, vtc: string;
  vfamily: TPDFFontFamily;
  vstyle: TPDFFontStyle;
  vsize: double;
  vlw: double;
  vcf: boolean;
begin
  //Start a new page
  if (Self.state = 0) then
    Self.Open();
  vfamily := Self.cFontFamily;
  vstyle := Self.cFontStyle;
  vsize := Self.cFontSizePt;
  vlw := Self.pLineWidth;
  vdc := Self.pDrawColor;
  vfc := Self.pFillColor;
  vtc := Self.pTextColor;
  vcf := Self.pColorFlag;
  if (Self.page > 0) then
  begin
    //Page footer
    Self.InFooter := True;
    Footer;
    Self.InFooter := False;
    //Close page
    _endpage;
  end;
  //Start new page
  _beginpage(JORIENTATION[orientation]);
  //Set line cap style to square
  _out('2 J');
  //Set line width
  _out(FloatToStr(vlw) + ' w');
  //Set font
  SetFont(vfamily, vstyle, vsize);
  //Set colors
  if (vdc <> '0 G') then
    _out(vdc);
  if (vfc <> '0 g') then
    _out(vfc);
  Self.pTextColor := vtc;
  Self.pColorFlag := vcf;
  //Page header
  Header;
  //Restore line width
  if (Self.pLineWidth <> vlw) then
  begin
    Self.pLineWidth := vlw;
    _out(FloatToStr(vlw) + ' w');
  end;
  //Restore font
  SetFont(vfamily, vstyle, vsize);
  //Restore colors
  if (Self.pDrawColor <> vdc) then
  begin
    Self.pDrawColor := vdc;
    _out(vdc);
  end;
  if (Self.pFillColor <> vfc) then
  begin
    Self.pFillColor := vfc;
    _out(vfc);
  end;
  Self.pTextColor := vtc;
  Self.pColorFlag := vcf;
end;

function TJPFpdf.PageNo: integer;
begin
  //Get current page number
  Result := Self.page;
end;

procedure TJPFpdf.SetDrawColor(ValR: integer; ValG: integer; ValB: integer);
begin
  //Set color for all stroking operations
  if (((ValR = 0) and (ValG = 0) and (ValB = 0)) or (ValG = -1)) then
    Self.pDrawColor := Copy(FloatToStr(ValR / 255), 0, 5) + ' G'
  else
    Self.pDrawColor := Copy(FloatToStr(ValR / 255), 0, 5) + ' ' +
      Copy(FloatToStr(ValG / 255), 0, 5) + ' ' +
      Copy(FloatToStr(ValB / 255), 0, 5) + ' RG';
  if (Self.page > 0) then
    _out(Self.pDrawColor);
end;

procedure TJPFpdf.SetFillColor(ValR: integer; ValG: integer; ValB: integer);
begin
  //Set color for all filling operations
  if (((ValR = 0) and (ValG = 0) and (ValB = 0)) or (ValG = -1)) then
    Self.pFillColor := Copy(FloatToStr(ValR / 255), 0, 5) + ' g'
  else
    Self.pFillColor := Copy(FloatToStr(ValR / 255), 0, 5) + ' ' +
      Copy(FloatToStr(ValG / 255), 0, 5) + ' ' +
      Copy(FloatToStr(ValB / 255), 0, 5) + ' rg';
  Self.pColorFlag := (Self.pFillColor <> Self.pTextColor);
  if (Self.page > 0) then
    _out(Self.pFillColor);
end;

procedure TJPFpdf.SetTextColor(ValR: integer; ValG: integer; ValB: integer);
begin
  //Set color for text
  if (((ValR = 0) and (ValG = 0) and (ValB = 0)) or (ValG = -1)) then
    Self.pTextColor := Copy(FloatToStr(ValR / 255), 0, 5) + ' g'
  else
    Self.pTextColor := Copy(FloatToStr(ValR / 255), 0, 5) + ' ' +
      Copy(FloatToStr(ValG / 255), 0, 5) + ' ' +
      Copy(FloatToStr(ValB / 255), 0, 5) + ' rg';
  Self.pColorFlag := (Self.pFillColor <> Self.pTextColor);
end;

procedure TJPFpdf.SetTextColor(color: TJPColor);
begin
  SetTextColor(JCOLOR_R[color], JCOLOR_G[color], JCOLOR_B[color]);
end;

procedure TJPFpdf.SetFillColor(color: TJPColor);
begin
  SetFillColor(JCOLOR_R[color], JCOLOR_G[color], JCOLOR_B[color]);
end;

procedure TJPFpdf.SetDrawColor(color: TJPColor);
begin
  SetDrawColor(JCOLOR_R[color], JCOLOR_G[color], JCOLOR_B[color]);
end;

function TJPFpdf.GetStringWidth(vText: string): double;
var
  vfamily: TPDFFontFamily;
  vstyle: TPDFFontStyle;
  vl, vi: integer;
  vw: double;
begin
  vfamily := Self.cFontFamily;
  vstyle := Self.cFontStyle;
  if (vfamily in [ffCourier, ffSymbol, ffZapfdingbats]) then
    vstyle := fsNormal;
  vw := 0;
  vl := Length(vText);
  for vi := 1 to vl do
    vw := vw + Self.Jpdf_charwidths[vfamily][vstyle][Ord(vText[vi])];
  Result := vw * Self.cFontSize / 1000;
end;

procedure TJPFpdf.SetLineWidth(vWidth: double);
begin
  //Set line width
  Self.pLineWidth := vWidth;
  if (Self.page > 0) then
    _out(FloatToStr(vWidth) + ' w');
end;

procedure TJPFpdf.Line(vX1, vY1, vX2, vY2: double);
begin
  //Draw a line
  _out(FloatToStr(vX1) + ' -' + FloatToStr(vY1) + ' m ' + FloatToStr(vX2) +
    ' -' + FloatToStr(vY2) + ' l S');
end;

procedure TJPFpdf.Rect(vX, vY, vWidht, vHeight: double; vStyle: string);
var
  vop: string;
begin
  //Draw a rectangle
  vStyle := UpperCase(vStyle);
  if (vStyle = 'F') then
    vop := 'f'
  else if ((vStyle = 'FD') or (vStyle = 'DF')) then
    vop := 'B'
  else
    vop := 'S';
  _out(FloatToStr(vX) + ' -' + FloatToStr(vY) + ' ' + FloatToStr(vWidht) +
    ' -' + FloatToStr(vHeight) + ' re ' + vop);
end;

procedure TJPFpdf.SetFont(fFamily: TPDFFontFamily; fStyle: TPDFFontStyle;
  fSize: double; fUnderline: boolean);
begin
  //Select a font; size given in points
  _setfont(fFamily, fStyle, fSize);
  Self.pUnderlineFlag := fUnderline;
end;

procedure TJPFpdf.SetFont(fFamily: TPDFFontFamily; fSize: double; fUnderline: boolean);
begin
  _setfont(fFamily, fsNormal, fSize);
  Self.pUnderlineFlag := fUnderline;
end;

procedure TJPFpdf.SetFontSize(fSize: double; fUnderline: boolean);
begin
  //Set font size in points
  _setfontsize(fSize);
  Self.pUnderlineFlag := fUnderline;
end;

procedure TJPFpdf.SetUnderline(fUnderline: boolean);
begin
  Self.pUnderlineFlag := fUnderline;
end;

procedure TJPFpdf.Text(vX, vY: double; vText: string);
var
  sss: string;
begin
  if (pUTF8) then
    vText := UTF8ToString(vText);

  //Output a string
  vText := StringReplace(StringReplace(
    StringReplace(vText, '\', '\\', [rfReplaceAll]), ')', '\)', [rfReplaceAll]),
    '(', '\(', [rfReplaceAll]);
  sss := 'BT ' + FloatToStr(vX) + ' -' + FloatToStr(vY) + ' Td (' + vText + ') Tj ET';
  if ((Self.pUnderlineFlag) and (vText <> '')) then
    sss := sss + ' ' + _dounderline(vX, vY, vText);
  if (Self.pColorFlag) then
    sss := 'q ' + Self.pTextColor + ' ' + sss + ' Q';
  _out(sss);
end;

procedure TJPFpdf.Writer(vHeight: double; vText: string);
var
  vfamily: TPDFFontFamily;
  vstyle: TPDFFontStyle;
  vw: extended;
  vwmax: extended;
  vs: string;
  vnb: integer;
  vnl: integer;
  vl: integer;
  vj: integer;
  vi: integer;
  vsep: integer;
  vc: char;
  fUTF8: Boolean;
begin
  fUTF8 := False;
  if (pUTF8) then begin
    vText := UTF8ToString(vText);
    SetUTF8(False);
    fUTF8 := True;
  end;
  //Output text in flowing mode
  vfamily := Self.cFontFamily;
  vstyle := Self.cFontStyle;
  if (vfamily in [ffCourier, ffSymbol, ffZapfdingbats]) then
    vstyle := fsNormal;
  vw := Self.dw - Self.rMargin - Self.cpX;
  vwmax := (vw - 2 * Self.cMargin) * 1000 / Self.cFontSize;
  vs := StringReplace(vText, #13, '', [rfReplaceAll]);
  vnb := Length(vs);
  vsep := -1;
  vi := 0;
  vj := 0;
  vl := 0;
  vnl := 1;
  while (vi < vnb) do
  begin
    //Get next character
    vc := vs[vi];
    if (vc = #10) then
    begin
      //Explicit line break
      Cell(vw, vHeight, Copy(vs, vj, vi - vj), '0', 2, '', 0);
      vi := vi + 1;
      vsep := -1;
      vj := vi;
      vl := 0;
      if (vnl = 1) then
      begin
        Self.cpX := Self.lMargin;
        vw := Self.dw - Self.rMargin - Self.cpX;
        vwmax := (vw - 2 * Self.cMargin) * 1000 / Self.cFontSize;
      end;
      vnl := vnl + 1;
      continue;
    end;
    if (vc = ' ') then
      vsep := vi;
    vl := vl + Self.Jpdf_charwidths[vfamily][vstyle][Ord(vc)];
    if (vl > vwmax) then
    begin
      //Automatic line break
      if (vsep = -1) then
      begin
        if (Self.cpX > Self.lMargin) then
        begin
          //Move to next line
          Self.cpX := Self.lMargin;
          Self.cpY := Self.cpY + vHeight;
          vw := Self.dw - Self.rMargin - Self.cpX;
          vwmax := (vw - 2 * Self.cMargin) * 1000 / Self.cFontSize;
          vi := vi + 1;
          vnl := vnl + 1;
          continue;
        end;
        if (vi = vj) then
          vi := vi + 1;
        Cell(vw, vHeight, Copy(vs, vj, vi - vj), '0', 2, '', 0);
      end
      else
      begin
        Cell(vw, vHeight, Copy(vs, vj, vsep - vj), '0', 2, '', 0);
        vi := vsep + 1;
      end;
      vsep := -1;
      vj := vi;
      vl := 0;
      if (vnl = 1) then
      begin
        Self.cpX := Self.lMargin;
        vw := Self.dw - Self.rMargin - Self.cpX;
        vwmax := (vw - 2 * Self.cMargin) * 1000 / Self.cFontSize;
      end;
      vnl := vnl + 1;
    end
    else
      vi := vi + 1;
  end;
  //Last chunk
  if (vi <> vj) then
  begin
    vw := StrToFloat(FloatToStrF(vl / 1000 * Self.cFontSize, ffNumber,
      14, 2, TPDFFormatSetings), TPDFFormatSetings);
    Cell(vw, vHeight, Copy(vs, vj, vi), '0', 0, '', 0);
  end;
  if (fUTF8) then SetUTF8(True);
end;

function TJPFpdf.AcceptPageBreak: boolean;
begin
  //Accept automatic page break or not
  Result := Self.AutoPageBreak;
end;

procedure TJPFpdf.Image(vFile: string; vX: double; vY: double;
  vWidth: double; vHeight: double);
var
  i: integer;
  img: TJPImageInfo;
  flag: boolean;
begin
  //Put an image on the page
  flag := False;
  if (Length(Self.pImages) > 0) then
    for i := 0 to Length(Self.pImages) - 1 do
    begin
      if (Self.pImages[i].filePath = vFile) then
      begin
        flag := True;
        img := Self.pImages[i];
        break;
      end;
    end;
  if not (flag) then
  begin
    //First use of image, get info
    SetLength(Self.pImages, Length(Self.pImages) + 1);
    Self.pImages[Length(Self.pImages) - 1].imgSource := TMemoryStream.Create;
    Self.pImages[Length(Self.pImages) - 1] := GetInfoImage(vFile);
    Self.pImages[Length(Self.pImages) - 1].n := Length(Self.pImages);
    Self.pImages[Length(Self.pImages) - 1].filePath := vFile;
    img := Self.pImages[Length(Self.pImages) - 1];
  end
  else
  //Automatic width or height calculus
  if (vWidth = 0) then
    vWidth := StrToFloat(FloatToStrF((vHeight * img.w / img.h), ffNumber,
      14, 2, TPDFFormatSetings), TPDFFormatSetings);
  if (vHeight = 0) then
    vHeight := StrToFloat(FloatToStrF((vWidth * img.h / img.w), ffNumber,
      14, 2, TPDFFormatSetings), TPDFFormatSetings);
  _out('q ' + FloatToStr(vWidth) + ' 0 0 ' + FloatToStr(vHeight) +
    ' ' + FloatToStr(vX) + ' -' + FloatToStr(vY + vHeight) + ' cm /I' +
    IntToStr(Length(Self.pImages)) + ' Do Q');
end;

procedure TJPFpdf.Cell(vWidth: double; vHeight: double; vText: string;
  vBorder: string; vLineBreak: integer; vAlign: string; vFill: integer);
var
  vws, vx, vy, vdx: double;
  sss: string;
begin
  if (pUTF8) then vText := UTF8ToString(vText);
  //Output a cell
  if (((Self.cpY + vHeight) > Self.PageBreakTrigger) and not
    (Self.InFooter) and (AcceptPageBreak())) then
  begin
    vx := Self.cpX;
    vws := Self.pgWs;
    if (vws > 0) then
    begin
      Self.pgWs := 0;
      _out('0 Tw');
    end;
    AddPage(Self.CurOrientation);
    Self.cpX := vx;
    if (vws > 0) then
    begin
      Self.pgWs := vws;
      _out(FloatToStr(vws) + ' Tw');
    end;
  end;
  if (vWidth = 0) then
    vWidth := Self.dw - Self.rMargin - Self.cpX;
  sss := '';
  if ((vFill = 1) or (vBorder = '1')) then
  begin
    sss := sss + FloatToStr(Self.cpX) + ' -' + FloatToStr(Self.cpY) + ' ' +
      FloatToStr(vWidth) + ' -' + FloatToStr(vHeight) + ' re ';
    if (vFill = 1) then
      if (vBorder = '1') then
        sss := sss + 'B '
      else
        sss := sss + 'f '
    else
      sss := sss + 'S ';
  end;

  if ((Pos('L', vBorder) > 0) or (Pos('T', vBorder) > 0) or
    (Pos('R', vBorder) > 0) or (Pos('B', vBorder) > 0)) then
  begin
    vx := Self.cpX;
    vy := Self.cpY;
    if (Pos('L', vBorder) > 0) then
      sss := sss + FloatToStr(vx) + ' -' + FloatToStr(vy) + ' m ' +
        FloatToStr(vx) + ' -' + FloatToStr((vy + vHeight)) + ' l S ';
    if (Pos('T', vBorder) > 0) then
      sss := sss + FloatToStr(vx) + ' -' + FloatToStr(vy) + ' m ' + FloatToStr(
        (vx + vWidth)) + ' -' + FloatToStr(vy) + ' l S ';
    if (Pos('R', vBorder) > 0) then
      sss := sss + FloatToStr((vx + vWidth)) + ' -' + FloatToStr(vy) +
        ' m ' + FloatToStr((vx + vWidth)) + ' -' + FloatToStr((vy + vHeight)) + ' l S ';
    if (Pos('B', vBorder) > 0) then
      sss := sss + FloatToStr(vx) + ' -' + FloatToStr((vy + vHeight)) +
        ' m ' + FloatToStr((vx + vWidth)) + ' -' + FloatToStr((vy + vHeight)) + ' l S ';
  end;
  if (vText <> '') then
  begin
    if (vAlign = 'R') then
      vdx := vWidth - Self.cMargin - GetStringWidth(vText)
    else if (vAlign = 'C') then
      vdx := (vWidth - GetStringWidth(vText)) / 2
    else
      vdx := Self.cMargin;
    vText := StringReplace(StringReplace(
      StringReplace(vText, '\', '\\', [rfReplaceAll]), ')', '\)', [rfReplaceAll]),
      '(', '\(', [rfReplaceAll]);
    if (Self.pColorFlag) then
      sss := sss + 'q ' + Self.pTextColor + ' ';
    sss := sss + 'BT ' + FloatToStr((Self.cpX + vdx)) + ' -' + FloatToStr(
      (Self.cpY + 0.5 * vHeight + 0.3 * Self.cFontSize)) + ' Td (' + vText + ') Tj ET';
    if (pUnderlineFlag) then
      sss := sss + ' ' + _dounderline(Self.cpX + vdx, Self.cpY + 0.5 *
        vHeight + 0.3 * Self.cFontSize, vText);
    if (Self.pColorFlag) then
      sss := sss + ' Q';
  end;
  if (sss <> '') then
    _out(sss);
  Self.hLasth := vHeight;
  if (vLineBreak > 0) then
  begin
    //Go to next line
    Self.cpY := Self.cpY + vHeight;
    if (vLineBreak = 1) then
      Self.cpX := Self.lMargin;
  end
  else
    Self.cpX := Self.cpX + vWidth;
end;

procedure TJPFpdf.MultiCell(vWidth, vHeight: double; vText: string;
  vBorder: string; vAlign: string; vFill: integer);
var
  vfamily: TPDFFontFamily;
  vstyle: TPDFFontStyle;
  vb, vb2: string;
  vc: char;
  vs: string;
  vnb, vsep, vi, vj, vl, vns, vnl, vls: integer;
  vwmax: double;
  fUTF8: boolean;
begin
  fUTF8 := False;
  if (pUTF8) then begin
    vText := UTF8ToString(vText);
    SetUTF8(False);
    fUTF8 := True;
  end;
  vfamily := Self.cFontFamily;
  vstyle := Self.cFontStyle;
  if (vfamily in [ffCourier, ffSymbol, ffZapfdingbats]) then
    vstyle := fsNormal;
  if (vWidth = 0) then
    vWidth := Self.dw - Self.rMargin - Self.cpX;
  vwmax := (vWidth - 2 * Self.cMargin) * 1000 / Self.cFontSize;
  vText := vText + #0;
  vs := StringReplace(vText, #13, '', [rfReplaceAll]);
  vnb := Length(vs);
  if ((vnb > 0) and (vs[vnb - 1] = #10)) then
    vnb := vnb - 1;
  vb := '';
  if (vBorder <> '') then
  begin
    if (vBorder = '1') then
    begin
      vBorder := 'LTRB';
      vb := 'LRT';
      vb2 := 'LR';
    end
    else
    begin
      vb2 := '';
      if (Pos('L', vBorder) > 0) then
        vb2 := vb2 + 'L';
      if (Pos('R', vBorder) > 0) then
        vb2 := vb2 + 'R';
      if (Pos('T', vBorder) > 0) then
        vb := vb2 + 'T'
      else
        vb := vb2;
    end;
  end;
  vsep := -1;
  vi := 1;
  vj := 1;
  vl := 0;
  vns := 0;
  vnl := 1;
  while (vi < vnb) do
  begin
    //Get next character
    vc := vs[vi];
    if (vc = #10) then
    begin
      //Explicit line break
      if (Self.pgWs > 0) then
      begin
        Self.pgWs := 0;
        _out('0 Tw');
      end;
      Cell(vWidth, vHeight, Copy(vs, vj, vi - vj), vb, 2, vAlign, vFill);
      vi := vi + 1;
      vsep := -1;
      vj := vi;
      vl := 0;
      vns := 0;
      vnl := vnl + 1;
      if ((vBorder <> '') and (vnl = 2)) then
        vb := vb2;
      continue;
    end;
    if (vc = ' ') then
    begin
      vsep := vi;
      vls := vl;
      vns := vns + 1;
    end;
    vl := vl + Self.Jpdf_charwidths[vfamily][vstyle][Ord(vc)];
    if (vl > vwmax) then
    begin
      //Automatic line break
      if (vsep = -1) then
      begin
        if (vi = vj) then
          vi := vi + 1;
        if (Self.pgWs > 0) then
        begin
          Self.pgWs := 0;
          _out('0 Tw');
        end;
        Cell(vWidth, vHeight, Copy(vs, vj, vi - vj), vb, 2, vAlign, vFill);
      end
      else
      begin
        if (vAlign = 'J') then
        begin
          if (vns > 1) then
            Self.pgWs := StrToFloat(FloatToStrF((vwmax - vls) / 1000 *
              Self.cFontSize / (vns - 1), ffNumber, 14, 3, TPDFFormatSetings),
              TPDFFormatSetings)
          else
            Self.pgWs := 0;
          _out(FloatToStr(Self.pgWs) + ' Tw');
        end;
        Cell(vWidth, vHeight, Copy(vs, vj, vsep - vj), vb, 2, vAlign, vFill);
        vi := vsep + 1;
      end;
      vsep := -1;
      vj := vi;
      vl := 0;
      vns := 0;
      vnl := vnl + 1;
      if ((vBorder = '') and (vnl = 2)) then
        vb := vb2;
    end
    else
      vi := vi + 1;
  end;
  //Last chunk
  if (Self.pgWs > 0) then
  begin
    Self.pgWs := 0;
    _out('0 Tw');
  end;
  if ((vBorder <> '') and (Pos('B', vBorder) > 0)) then
    vb := vb + 'B';
  Cell(vWidth, vHeight, Copy(vs, vj, vi - vj), vb, 2, vAlign, vFill);
  Self.cpX := Self.lMargin;
  if (fUTF8) then SetUTF8(True);
end;

procedure TJPFpdf.Ln(vHeight: double);
begin
  //Line feed; default value is last cell height
  Self.cpX := Self.lMargin;
  if (vHeight <= 0) then
    Self.cpY := Self.cpY + Self.hLasth
  else
    Self.cpY := Self.cpY + vHeight;
end;

function TJPFpdf.GetX: double;
begin
  //Get x position
  Result := Self.cpX;
end;

procedure TJPFpdf.SetX(vX: double);
begin
  //Set x position
  if (vX >= 0) then
    Self.cpX := vX
  else
    Self.cpX := Self.dw + vX;
end;

function TJPFpdf.GetY: double;
begin
  //Get y position
  Result := Self.cpY;
end;

procedure TJPFpdf.SetY(vY: double);
begin
  //Set y position and reset x
  Self.cpX := Self.lMargin;
  if (cpY >= 0) then
    Self.cpY := vY
  else
    Self.cpY := Self.dh + vY;
end;

procedure TJPFpdf.SetXY(vX, vY: double);
begin
  //Set x and y positions
  SetY(vY);
  SetX(vX);
end;

procedure TJPFpdf.SaveToFile(vFile: string);
begin
  if (Self.state < 3) then
  begin
    Close;
  end;
  //Save file locally
  try
    Self.buffer.SaveToFile(vFile);
  except
    Error('Unable to create output file: ' + vFile);
  end;
end;

function TJPFpdf.CreateContentStream(cs: TPDFContentStream): TStream;
var
  docpdf: string;
begin
  if (Self.state < 3) then
  begin
    Close;
  end;
  Result := nil;
  try
    case cs of
      csToViewBrowser:
      begin
        //Send to browser
        // Before Include: AResponse.ContentType := 'application/pdf';
        docpdf := 'Content-Disposition: inline; filename="doc.pdf"' + #10 + #13;
        docpdf := docpdf + 'Cache-Control: private, max-age=0, must-revalidate' + #10 + #13;
        docpdf := docpdf + 'Pragma: public' + #10 + #13;
        Result := TMemoryStream.Create;
        Result.Write(Pointer(docpdf)^, Length(docpdf) * SizeOf(char));
        Result.Position := Result.Size;
        Self.buffer.Position := 0;
        Result.CopyFrom(Self.buffer, Self.buffer.Size);
      end;
      csToDownload:
      begin
        //Download File
        // Before Include: AResponse.ContentType := 'application/x-download';
        docpdf := 'Content-Disposition: attachment; filename="doc.pdf"' + #10 + #13;
        docpdf := docpdf + 'Cache-Control: private, max-age=0, must-revalidate' + #10 + #13;
        docpdf := docpdf + 'Pragma: public' + #10 + #13;
        Result := TMemoryStream.Create;
        Result.Write(Pointer(docpdf)^, Length(docpdf) * SizeOf(char));
        Result.Position := Result.Size;
        Self.buffer.Position := 0;
        Result.CopyFrom(Self.buffer, Self.buffer.Size);
      end;
    end;
  except
    Result.Free;
    Error('Unable to Create Content Stream');
  end;
end;

function TJPFpdf.SaveToString: string;
begin
  if (Self.state < 3) then
  begin
    Close;
  end;
  //Save to string
  try
    Self.buffer.Position := 0;
    SetLength(Result, Self.buffer.Size);
    Self.buffer.Read(Pointer(Result)^, Self.buffer.Size);
  except
    Error('Unable to save to string');
  end;
end;

function TJPFpdf.SaveToStream: TStream;
begin
  if (Self.state < 3) then
  begin
    Close;
  end;
  //Save to stream
  Result := nil;
  try
    Self.buffer.Position := 0;
    Result := TMemoryStream.Create;
    Result.CopyFrom(Self.buffer, Self.buffer.Size);
  except
    Result.Free;
    Error('Unable to save to stream');
  end;
end;

procedure TJPFpdf._begindoc;
begin
  //Start document
  SetLength(Self.offsets, 3);
  SetLength(Self.pages, 1);
  SetLength(Self.OrientationChanges, 1);
  Self.state := 1;
  _out('%PDF-1.7');
end;

function TJPFpdf._setfont(fFamily: TPDFFontFamily; fStyle: TPDFFontStyle;
  fSize: double): boolean;
var
  vfontname: string;
  vn: integer;
begin
  if (fSize = 0) then
    fSize := Self.cFontSizePt;
  //Test if font is already selected
  if ((Self.cFontFamily = fFamily) and (Self.cFontStyle = fStyle) and
    (Self.cFontSizePt = fSize)) then
  begin
    Result := True;
    Exit;
  end;
  //Retrieve Type1 font name
  if (fFamily = ffTimes) then
    if (fStyle = fsNormal) then
      vfontname := 'Times-Roman'
    else
      vfontname := JFONTFAMILY[fFamily] + StringReplace(
        JFONTSTYLE[fStyle], 'Oblique', 'Italic', [rfReplaceAll])
  else
    vfontname := JFONTFAMILY[fFamily] + JFONTSTYLE[fStyle];
  //Test if used for the first time
  if not (FontWasUsed(vfontname)) then
  begin
    vn := Length(Self.pFonts);
    SetLength(Self.pFonts, vn + 1);
    Self.pFonts[vn].number := vn + 1;
    Self.pFonts[vn].Name := vfontname;
  end;
  //Select it
  Self.cFontFamily := fFamily;
  Self.cFontStyle := fStyle;
  Self.cFontSizePt := fSize;
  Self.cFontSize := StrToFloat(FloatToStrF(fSize / Self.pgK, ffNumber,
    14, 2, TPDFFormatSetings), TPDFFormatSetings);
  for vn := 0 to Length(Self.pFonts) do
  begin
    if (Self.pFonts[vn].Name = vfontname) then
      break;
  end;
  if (Self.page > 0) then
    _out('BT /F' + IntToStr(Self.pFonts[vn].number) + ' ' +
      FloatToStrF(Self.cFontSize, ffNumber, 14, 2, TPDFFormatSetings) + ' Tf ET');
  Result := True;
end;

procedure TJPFpdf._enddoc;
var
  vnb, vn, vo, vnbpal, vi, vnf, vu, vni: integer;
  vwPt, vhPt: double;
  vfilter, vkids, vp: string;
begin
  //Terminate document
  vnb := Self.page;
  if not (Self.DocAliasNbPages = '') then
  begin
    //Replace number of pages
    for vn := 1 to vnb do
      Self.pages[vn] := StringReplace(Self.pages[vn], Self.DocAliasNbPages,
        FormatFloat(StringOfChar('0',Length(Self.DocAliasNbPages)),vnb), []);
  end;
  if (JORIENTATION[Self.DefOrientation] = 'P') then
  begin
    vwPt := Self.fwPt;
    vhPt := Self.fhPt;
  end
  else
  begin
    vwPt := Self.fhPt;
    vhPt := Self.fwPt;
  end;
  if (Self.compress) then
    vfilter := '/Filter /FlateDecode '
  else
    vfilter := '';
  for vn := 1 to vnb do
  begin
    //Page
    _newobj();
    _out('<</Type /Page');
    _out('/Parent 1 0 R');
    if (Self.OrientationChanges[vn]) then
      _out('/MediaBox [0 0 ' + FloatToStr(vhPt) + ' ' + FloatToStr(vwPt) + ']');
    _out('/Resources 2 0 R');
    _out('/Contents ' + IntToStr(Self.numObj + 1) + ' 0 R>>');
    _out('endobj');
    //Page content
    if (Self.compress) then
      vp := GzCompress(Self.pages[vn])
    else
      vp := Self.pages[vn];
    _newobj();
    _out('<<' + vfilter + '/Length ' + IntToStr(Length(vp)) + '>>');
    _out('stream');
    _out(vp + 'endstream');
    _out('endobj');
  end;
  //Fonts
  vnf := Self.numObj;
  for vu := 0 to Length(Self.pFonts) - 1 do
  begin
    _newobj();
    _out('<</Type /Font');
    _out('/Subtype /Type1');
    _out('/BaseFont /' + Self.pFonts[vu].Name);
    if ((Self.pFonts[vu].Name <> 'Symbol') and
      (Self.pFonts[vu].Name <> 'ZapfDingbats')) then
      _out('/Encoding /WinAnsiEncoding');
    _out('>>');
    _out('endobj');
  end;
  //Images
  vni := Self.numObj;
  for vu := 0 to Length(Self.pImages) - 1 do
  begin
    _newobj();
    _out('<</Type /XObject');
    _out('/Subtype /Image');
    _out('/Width ' + FloatToStr(Self.pImages[vu].w));
    _out('/Height ' + FloatToStr(Self.pImages[vu].h));
    _out('/ColorSpace /' + Self.pImages[vu].cs);
    _out('/BitsPerComponent ' + IntToStr(Self.pImages[vu].bpc));
    _out('/Filter /' + Self.pImages[vu].f);
    _out('/Length ' + IntToStr(Self.pImages[vu].imgSource.Size) + '>>');
    _out('stream');
    //_out(vinfo['data']);
    Self.pImages[vu].imgSource.Position := 0;
    Self.buffer.CopyFrom(Self.pImages[vu].imgSource, Self.pImages[vu].imgSource.Size);
    _out(#10 + 'endstream');
    _out('endobj');
  end;
  //Pages root
  Self.offsets[1] := Self.buffer.Size;
  _out('1 0 obj');
  _out('<</Type /Pages');
  vkids := '/Kids [';

  for vi := 0 to Self.page - 1 do
    vkids := vkids + IntToStr(3 + 2 * vi) + ' 0 R ';

  _out(vkids + ']');
  _out('/Count ' + IntToStr(Self.page));
  _out('/MediaBox [0 0 ' + FloatToStr(vwPt) + ' ' + FloatToStr(vhPt) + ']');
  _out('>>');
  _out('endobj');
  //Resources
  Self.offsets[2] := Self.buffer.Size;
  _out('2 0 obj');
  _out('<</ProcSet [/PDF /Text /ImageB /ImageC /ImageI]');
  _out('/Font <<');
  for vi := 1 to Length(Self.pFonts) do
    _out('/F' + IntToStr(vi) + ' ' + IntToStr(vnf + vi) + ' 0 R');
  _out('>>');
  if (Length(Self.pImages) > 0) then
  begin
    _out('/XObject <<');
    vnbpal := 0;
    for vu := 0 to Length(Self.pImages) - 1 do
    begin
      _out('/I' + IntToStr(Self.pImages[vu].n) + ' ' +
        IntToStr(vni + Self.pImages[vu].n + vnbpal) + ' 0 R');
      if (Self.pImages[vu].cs = 'Indexed') then
        vnbpal := vnbpal + 1;
    end;
    _out('>>');
  end;
  _out('>>');
  _out('endobj');
  //Info
  _newobj();
  _out('<</Producer (Free JPDF Pascal ' + FREE_JPDF_PASCAL_VERSION + ')');
  if (Self.DocTitle <> '') then
    _out('/Title (' + _escape(Self.DocTitle) + ')');
  if (Self.DocSubject <> '') then
    _out('/Subject (' + _escape(Self.DocSubject) + ')');
  if (Self.DocAuthor <> '') then
    _out('/Author (' + _escape(Self.DocAuthor) + ')');
  if (Self.DocKeywords <> '') then
    _out('/Keywords (' + _escape(Self.DocKeywords) + ')');
  if (Self.DocCreator <> '') then
    _out('/Creator (' + _escape(Self.DocCreator) + ')');

  _out('/ModDate (D:' + FormatDateTime('yyyymmddhhnnss', now) +')');
  _out('/CreationDate (D:' + FormatDateTime('yyyymmddhhnnss', now) +')>>');
  _out('endobj');
  //Catalog
  _newobj();
  _out('<</Type /Catalog');
  if (Self.DocDisplayMode = 'fullpage') then
    _out('/OpenAction [3 0 R /Fit]')
  else if (Self.DocDisplayMode = 'fullwidth') then
    _out('/OpenAction [3 0 R /FitH null]')
  else if (Self.DocDisplayMode = 'real') then
    _out('/OpenAction [3 0 R /XYZ null null 1]')
  else
    _out('/OpenAction [3 0 R /XYZ null null ' +
      FloatToStr(StrToInt(Self.DocDisplayMode) / 100) + ']');
  _out('/Pages 1 0 R>>');
  _out('endobj');
  //Cross-ref
  vo := Self.buffer.Size;
  _out('xref');
  _out('0 ' + IntToStr(Self.numObj + 1));
  _out('0000000000 65535 f ');
  for vi := 1 to Self.numObj do
    _out(Format('%.10d 00000 n ', [Self.offsets[vi]],TPDFFormatSetings));
  //Trailer
  _out('trailer');
  _out('<</Size ' + IntToStr(Self.numObj + 1));
  _out('/Root ' + IntToStr(Self.numObj) + ' 0 R');
  _out('/Info ' + IntToStr(Self.numObj - 1) + ' 0 R>>');
  _out('startxref');
  _out(IntToStr(vo));
  _out('%%EOF');
  Self.state := 3;
end;

procedure TJPFpdf._beginpage(orientation: string);
begin
  Self.page := Self.page + 1;
  SetLength(Self.pages, Length(Self.pages) + 1);
  SetLength(Self.OrientationChanges, Length(Self.OrientationChanges) + 1);
  Self.pages[Self.page] := '';
  Self.state := 2;
  Self.cpX := Self.lMargin;
  Self.cpY := Self.tMargin;
  Self.hLasth := 0;
  Self.cFontFamily := ffTimes;
  //Page orientation
  if (orientation = #0) then
    orientation := JORIENTATION[Self.DefOrientation]
  else
  begin
    if (orientation <> JORIENTATION[Self.DefOrientation]) then
      Self.OrientationChanges[Self.page] := True
    else
      Self.OrientationChanges[Self.page] := False;
  end;
  if (orientation <> JORIENTATION[Self.CurOrientation]) then
  begin
    //Change orientation
    if (orientation = 'P') then
    begin
      Self.wPt := Self.fwPt;
      Self.hPt := Self.fhPt;
      Self.dw := Self.fw;
      Self.dh := Self.fh;
      Self.CurOrientation := poPortrait;
    end
    else
    begin
      Self.wPt := Self.fhPt;
      Self.hPt := Self.fwPt;
      Self.dw := Self.fh;
      Self.dh := Self.fw;
      Self.CurOrientation := poLandscape;
    end;
    Self.PageBreakTrigger := Self.dh - Self.bMargin;
  end;
  //Set transformation matrix
  _out(FloatToStrF(Self.pgK, ffNumber, 14, 6, TPDFFormatSetings) +
    ' 0 0 ' + FloatToStrF(Self.pgK, ffNumber, 14, 6, TPDFFormatSetings) +
    ' 0 ' + FloatToStr(Self.hPt) + ' cm');
end;

procedure TJPFpdf._endpage;
begin
  //End of page contents
  Self.state := 1;
end;

procedure TJPFpdf._newobj;
begin
  //Begin a new object
  Self.numObj := Self.numObj + 1;
  SetLength(Self.offsets, Length(Self.offsets) + 1);
  Self.offsets[Self.numObj] := Self.buffer.Size;
  _out(IntToStr(Self.numObj) + ' 0 obj');
end;

function TJPFpdf._setfontsize(fSize: double): boolean;
var
  vfontname: string;
  n, i: integer;
begin
  n := 0;
  //Test if size already selected
  if (Self.cFontSizePt = fSize) then
    Exit;
  Result := True;
  //Select it
  if (Self.cFontFamily = ffTimes) then
    if (Self.cFontStyle = fsNormal) then
      vfontname := 'Times-Roman'
    else
      vfontname := JFONTFAMILY[Self.cFontFamily] +
        StringReplace(JFONTSTYLE[Self.cFontStyle], 'Oblique', 'Italic', [rfReplaceAll])
  else
    vfontname := JFONTFAMILY[Self.cFontFamily] + JFONTSTYLE[Self.cFontStyle];
  Self.cFontSizePt := fSize;
  Self.cFontSize := StrToFloat(FloatToStrF(fSize / Self.pgK, ffNumber,
    14, 2, TPDFFormatSetings), TPDFFormatSetings);

  for i := 0 to Length(Self.pFonts) - 1 do
  begin
    if (Self.pFonts[i].Name = vfontname) then
    begin
      n := Self.pFonts[i].number;
      break;
    end;
  end;
  if (n = 0) then
    Error('Font not found: ' + vfontname);
  if (Self.page > 0) then
    _out('BT /F' + IntToStr(n) + ' ' + FloatToStrF(Self.cFontSize,
      ffNumber, 14, 2, TPDFFormatSetings) + ' Tf ET');
end;

procedure TJPFpdf.Header;
begin
  // Implementing an inheritance, if necessary
end;

procedure TJPFpdf.Footer;
begin
  // Implementing an inheritance, if necessary
end;

function TJPFpdf._escape(const sText: string): string;
begin
  //Add \ before \, ( and )
  Result := StringReplace(StringReplace(StringReplace(sText, '\', '\\', [rfReplaceAll]),
    ')', '\)', [rfReplaceAll]), '(', '\(', [rfReplaceAll]);
end;

procedure TJPFpdf._out(const sText: string);
var
  LText: AnsiString;
begin
  LText := AnsiString(sText);
  //Add a line to the document
  if (Self.state = 2) then
    Self.pages[Self.page] := Self.pages[Self.page] + sText + #10
  else
  begin
    LText := LText + #10;
    Self.buffer.Write(Pointer(LText)^, Length(LText) * SizeOf(AnsiChar));
  end;
end;

function TJPFpdf.FloatToStr(Value: double): string;
begin
  Result := SysUtils.FloatToStr(Value, TPDFFormatSetings);
end;

function TJPFpdf.GzCompress(StrIn: string; CompLevel: TCompressionLevel): string;
var
  cs: TCompressionStream;
  ss2: TStringStream;
begin
  ss2 := TStringStream.Create('');
  cs := TCompressionStream.Create(complevel, ss2);
  try
    cs.Write(strin[1], length(strin));
    cs.Free;
    Result := ss2.DataString;
    ss2.Free;
  except
    on e: Exception do
    begin
      Result := '';
      cs.Free;
      ss2.Free;
      raise;
    end;
  end;
end;

function TJPFpdf.GzDecompress(StrIn: string): string;
const
  bufsize = 65536;
var
  dcs: TDecompressionStream;
  ss1: TStringStream;
  br: integer;
  buf: string;
begin
  ss1 := TStringStream.Create(StrIn);
  dcs := TDecompressionStream.Create(ss1);
  try
    Result := '';
    repeat
      setlength(buf, bufsize);
      br := dcs.Read(buf[1], bufsize);
      Result := Result + Copy(buf, 1, br);
    until br < bufsize;
    dcs.Free;
    ss1.Free;
  except
    on e: Exception do
    begin
      Result := '';
      dcs.Free;
      ss1.Free;
      raise;
    end;
  end;
end;

function TJPFpdf._dounderline(vX, vY: double; vText: string): string;
var
  vw: double;
  vsp: integer;
  i: integer;
  up, ut: integer;
begin
  //Underline text
  vsp := 0;
  for i := 1 to Length(vText) do
    if (vText[i] = ' ') then
      vsp := vsp + 1;
  up := -100;
  ut := 50;
  vw := GetStringWidth(vText) + Self.pgWs * vsp;
  Result := format('%.2F -%.2F %.2F -%.2F re f',
    [vX, (vY - up / 1000 * Self.cFontSize), vw,
    (ut / 1000 * Self.cFontSize)],TPDFFormatSetings);
end;

function TJPFpdf.FontWasUsed(font: string): boolean;
var
  i: integer;
begin
  Result := False;
  for i := 0 to Length(Self.pFonts) - 1 do
  begin
    if (Self.pFonts[i].Name = font) then
    begin
      Result := True;
      break;
    end;
  end;
end;

procedure TJPFpdf.Code25(vXPos, vYPos: double; vTextCode: string;
  vBaseWidth: double; vHeight: double);
var
  vbarChar: array[48..90] of string;
  vnarrow, vwide: double;
  vi: integer;
  vcharBar, vcharSpace: char;
  vs: integer;
  vseq: string;
  vbar: integer;
  vlineWidth: double;
begin
  if (pUTF8) then vTextCode := UTF8ToString(vTextCode);
  vwide := vBaseWidth;
  vnarrow := vBaseWidth / 3;

  // wide/narrow codes for the digits
  vbarChar[48] := 'nnwwn';
  vbarChar[49] := 'wnnnw';
  vbarChar[50] := 'nwnnw';
  vbarChar[51] := 'wwnnn';
  vbarChar[52] := 'nnwnw';
  vbarChar[53] := 'wnwnn';
  vbarChar[54] := 'nwwnn';
  vbarChar[55] := 'nnnww';
  vbarChar[56] := 'wnnwn';
  vbarChar[57] := 'nwnwn';
  vbarChar[65] := 'nn';
  vbarChar[90] := 'wn';

  // add leading zero if code-length is odd
  if (Length(vTextCode) mod 2 <> 0) then
    vTextCode := '0' + vTextCode;

  SetFont(ffHelvetica, fsNormal, 10);
  Text(vXPos, vYPos + vHeight + 4, vTextCode);
  SetFillColor(0);

  // add start and stop codes
  vTextCode := 'AA' + LowerCase(vTextCode) + 'ZA';
  vi := 0;
  while (vi < Length(vTextCode)) do
  begin
    // choose next pair of digits
    vcharBar := vTextCode[vi + 1];
    vcharSpace := vTextCode[vi + 2];
    // check whether it is a valid digit
    if not (Ord(vcharBar) in [48..57, 65, 90]) then
      Error('Invalid character in barcode: ' + vcharBar);
    if not (Ord(vcharSpace) in [48..57, 65, 90]) then
      Error('Invalid character in barcode: ' + vcharSpace);
    // create a wide/narrow-sequence (first digit=bars, second digit=spaces)
    vseq := '';
    for vs := 0 to Length(vbarChar[Ord(vcharBar)]) - 1 do
      vseq := vseq + vbarChar[Ord(vcharBar)][vs + 1] + vbarChar[Ord(vcharSpace)][vs + 1];
    for vbar := 0 to Length(vseq) - 1 do
    begin
      // set lineWidth depending on value
      if (vseq[vbar + 1] = 'n') then
        vlineWidth := vnarrow
      else
        vlineWidth := vwide;
      // draw every second value, because the second digit of the pair is represented by the spaces
      if (vbar mod 2 = 0) then
        Self.Rect(vXPos, vYPos, vlineWidth, vHeight, 'F');
      vXPos := vXPos + vlineWidth;
    end;
    vi := vi + 2;
  end;
end;

function GetImageFileGraphic(const imgFile: string): TGraphic;
var
  FS: TFileStream;
  FirstBytes: AnsiString;
begin
  Result := nil;
  FS := TFileStream.Create(imgFile, fmOpenRead);
  try
    SetLength(FirstBytes, 8);
    FS.Read(FirstBytes[1], 8);
    if Copy(FirstBytes, 1, 2) = 'BM' then begin
      Result := TBitmap.Create;
    end else
    if FirstBytes = #137'PNG'#13#10#26#10 then begin
      Result := TPngImage.Create;
    end else
    if Copy(FirstBytes, 1, 3) =  'GIF' then begin
      Result := TGIFImage.Create;
    end else
    if Copy(FirstBytes, 1, 2) = #$FF#$D8 then begin
      Result := TJPEGImage.Create;
    end;
  finally
    FS.Free;
  end;
end;

function TJPFpdf.GetInfoImage(const imgFile: string): TJPImageInfo;
var
  LImageStream: TMemoryStream;
  LGraphic: TGraphic;
begin
  LGraphic := GetImageFileGraphic(imgFile);
  if LGraphic = nil then
    raise Exception.Create('Image file type is not supported');
  LGraphic.LoadFromFile(imgFile);
  LImageStream := TMemoryStream.Create;
  try
    IWImageUtils.GraphicToStream(LGraphic, LImageStream, ioJPEG);
    Result.imgSource := LImageStream;
    Result.cs := 'DeviceRGB';
    Result.w := LGraphic.Width;
    Result.h := LGraphic.Height;
    Result.bpc := 8;
    Result.f := 'DCTDecode';
    LGraphic.Free;
  except
    LImageStream.Free;
    Result.imgSource := nil;
    raise;
  end;
end;

end.
