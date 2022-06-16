object Form_Terminos_de_Licencia: TForm_Terminos_de_Licencia
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  ClientHeight = 591
  ClientWidth = 953
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  StyleElements = []
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object Explorador: TWebBrowser
    Left = 0
    Top = 0
    Width = 953
    Height = 526
    Align = alClient
    PopupMenu = PopupMenu1
    TabOrder = 0
    StyleElements = []
    ExplicitWidth = 771
    ExplicitHeight = 384
    ControlData = {
      4C0000007F6200005D3600000000000000000000000000000000000000000000
      000000004C000000000000000000000001000000E0D057007335CF11AE690800
      2B2E126208000000000000004C0000000114020000000000C000000000000046
      8000000000000000000000000000000000000000000000000000000000000000
      00000000000000000100000000000000000000000000000000000000}
  end
  object Panel_Buttom: TPanel
    Left = 0
    Top = 526
    Width = 953
    Height = 65
    Align = alBottom
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 1
    StyleElements = []
    object CheckBox_Acepto: TCheckBox
      Left = 256
      Top = 8
      Width = 449
      Height = 17
      Caption = 
        'Entiendo y Acepto los T'#233'rminos y Condiciones de Licencias y su U' +
        'so'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      StyleElements = []
      OnClick = CheckBox_AceptoClick
      OnKeyUp = CheckBox_AceptoKeyUp
    end
    object Button_Listo: TButton
      Left = 240
      Top = 32
      Width = 465
      Height = 25
      Caption = 'LISTO'
      Enabled = False
      ModalResult = 1
      TabOrder = 1
      StyleElements = []
      OnClick = Button_ListoClick
    end
  end
  object ListBox_Sobre_Producto: TListBox
    Left = 192
    Top = 176
    Width = 121
    Height = 97
    ItemHeight = 13
    Items.Strings = (
      '<html>'
      ''
      '<head>'
      
        '<meta http-equiv=Content-Type content="text/html; charset=window' +
        's-1252">'
      '<meta name=Generator content="Microsoft Word 15 (filtered)">'
      '<style>'
      '<!--'
      ' /* Font Definitions */'
      ' @font-face'
      #9'{font-family:Wingdings;'
      #9'panose-1:5 0 0 0 0 0 0 0 0 0;}'
      '@font-face'
      #9'{font-family:"Cambria Math";'
      #9'panose-1:2 4 5 3 5 4 6 3 2 4;}'
      '@font-face'
      #9'{font-family:Calibri;'
      #9'panose-1:2 15 5 2 2 2 4 3 2 4;}'
      ' /* Style Definitions */'
      ' p.MsoNormal, li.MsoNormal, div.MsoNormal'
      #9'{margin-top:0cm;'
      #9'margin-right:0cm;'
      #9'margin-bottom:8.0pt;'
      #9'margin-left:0cm;'
      #9'line-height:107%;'
      #9'font-size:11.0pt;'
      #9'font-family:"Calibri","sans-serif";}'
      'p.MsoHeader, li.MsoHeader, div.MsoHeader'
      #9'{mso-style-link:"Encabezado Car";'
      #9'margin:0cm;'
      #9'margin-bottom:.0001pt;'
      #9'font-size:11.0pt;'
      #9'font-family:"Calibri","sans-serif";}'
      'p.MsoFooter, li.MsoFooter, div.MsoFooter'
      #9'{mso-style-link:"Pie de p'#225'gina Car";'
      #9'margin:0cm;'
      #9'margin-bottom:.0001pt;'
      #9'font-size:11.0pt;'
      #9'font-family:"Calibri","sans-serif";}'
      'p.MsoNoSpacing, li.MsoNoSpacing, div.MsoNoSpacing'
      #9'{margin:0cm;'
      #9'margin-bottom:.0001pt;'
      #9'font-size:11.0pt;'
      #9'font-family:"Calibri","sans-serif";}'
      'p.MsoListParagraph, li.MsoListParagraph, div.MsoListParagraph'
      #9'{margin-top:0cm;'
      #9'margin-right:0cm;'
      #9'margin-bottom:8.0pt;'
      #9'margin-left:36.0pt;'
      #9'line-height:107%;'
      #9'font-size:11.0pt;'
      #9'font-family:"Calibri","sans-serif";}'
      
        'p.MsoListParagraphCxSpFirst, li.MsoListParagraphCxSpFirst, div.M' +
        'soListParagraphCxSpFirst'
      #9'{margin-top:0cm;'
      #9'margin-right:0cm;'
      #9'margin-bottom:0cm;'
      #9'margin-left:36.0pt;'
      #9'margin-bottom:.0001pt;'
      #9'line-height:107%;'
      #9'font-size:11.0pt;'
      #9'font-family:"Calibri","sans-serif";}'
      
        'p.MsoListParagraphCxSpMiddle, li.MsoListParagraphCxSpMiddle, div' +
        '.MsoListParagraphCxSpMiddle'
      #9'{margin-top:0cm;'
      #9'margin-right:0cm;'
      #9'margin-bottom:0cm;'
      #9'margin-left:36.0pt;'
      #9'margin-bottom:.0001pt;'
      #9'line-height:107%;'
      #9'font-size:11.0pt;'
      #9'font-family:"Calibri","sans-serif";}'
      
        'p.MsoListParagraphCxSpLast, li.MsoListParagraphCxSpLast, div.Mso' +
        'ListParagraphCxSpLast'
      #9'{margin-top:0cm;'
      #9'margin-right:0cm;'
      #9'margin-bottom:8.0pt;'
      #9'margin-left:36.0pt;'
      #9'line-height:107%;'
      #9'font-size:11.0pt;'
      #9'font-family:"Calibri","sans-serif";}'
      'p.MsoIntenseQuote, li.MsoIntenseQuote, div.MsoIntenseQuote'
      #9'{mso-style-link:"Cita destacada Car";'
      #9'margin-top:18.0pt;'
      #9'margin-right:43.2pt;'
      #9'margin-bottom:18.0pt;'
      #9'margin-left:43.2pt;'
      #9'text-align:center;'
      #9'line-height:107%;'
      #9'border:none;'
      #9'padding:0cm;'
      #9'font-size:11.0pt;'
      #9'font-family:"Calibri","sans-serif";'
      #9'color:#5B9BD5;'
      #9'font-style:italic;}'
      'span.EncabezadoCar'
      #9'{mso-style-name:"Encabezado Car";'
      #9'mso-style-link:Encabezado;}'
      'span.PiedepginaCar'
      #9'{mso-style-name:"Pie de p'#225'gina Car";'
      #9'mso-style-link:"Pie de p'#225'gina";}'
      'span.CitadestacadaCar'
      #9'{mso-style-name:"Cita destacada Car";'
      #9'mso-style-link:"Cita destacada";'
      #9'color:#5B9BD5;'
      #9'font-style:italic;}'
      '.MsoChpDefault'
      #9'{font-family:"Calibri","sans-serif";}'
      '.MsoPapDefault'
      #9'{margin-bottom:8.0pt;'
      #9'line-height:107%;}'
      ' /* Page Definitions */'
      ' @page WordSection1'
      #9'{size:612.0pt 792.0pt;'
      #9'margin:0cm 36.0pt 21.3pt 36.0pt;}'
      'div.WordSection1'
      #9'{page:WordSection1;}'
      ' /* List Definitions */'
      ' ol'
      #9'{margin-bottom:0cm;}'
      'ul'
      #9'{margin-bottom:0cm;}'
      '-->'
      '</style>'
      ''
      '</head>'
      ''
      '<body bgcolor="white" lang=ES>'
      ''
      '<div class=WordSection1>'
      ''
      
        '<div style='#39'border-top:solid #5B9BD5 1.0pt;border-left:none;bord' +
        'er-bottom:solid #5B9BD5 1.0pt;'
      
        'border-right:none;padding:10.0pt 0cm 10.0pt 0cm;margin-left:43.2' +
        'pt;margin-right:'
      '43.2pt'#39'>'
      ''
      
        '<p class=MsoIntenseQuote style='#39'margin-top:18.0pt;margin-right:0' +
        'cm;margin-bottom:'
      
        '18.0pt;margin-left:0cm'#39'><span style='#39'font-size:14.0pt;line-heigh' +
        't:107%;'
      'color:black'#39'>Sobre este Producto</span></p>'
      ''
      '</div>'
      ''
      '<p class=MsoNoSpacing><b>&nbsp;</b></p>'
      ''
      '<p class=MsoNoSpacing><b>'#191'Qu'#233' es Cyber SGET2?</b></p>'
      ''
      '<p class=MsoNoSpacing><b>&nbsp;</b></p>'
      ''
      
        '<p class=MsoNoSpacing style='#39'margin-left:35.4pt;text-indent:-14.' +
        '15pt'#39'>- Es un'
      
        'software comercial destinado al sector privado empresarial en Cu' +
        'ba enfocado'
      
        'para la gesti'#243'n econ'#243'mica de peque'#241'os y medianos negocios de tip' +
        'o bienes/servicios.</p>'
      ''
      '<p class=MsoNoSpacing>&nbsp;</p>'
      ''
      
        '<p class=MsoNoSpacing><b>'#191'Para cu'#225'l actividad por cuenta propia ' +
        'est'#225' enfocada'
      'esta aplicaci'#243'n?</b></p>'
      ''
      '<p class=MsoNoSpacing><b>&nbsp;</b></p>'
      ''
      
        '<p class=MsoNoSpacing style='#39'margin-left:35.4pt;text-indent:-14.' +
        '15pt'#39'>-'
      
        'Principalmente a los negocios que ofrecen bienes y servicios a c' +
        'lientes, tales como:'
      
        'Talleres de Reparaci'#243'n y Mantenimientos de Equipos El'#233'ctricos y/' +
        'o Electr'#243'nicos.</p>'
      ''
      '<p class=MsoNoSpacing>&nbsp;</p>'
      ''
      
        '<p class=MsoNoSpacing><b>'#191'Qu'#233' beneficios me ofrece a m'#237' como tra' +
        'bajador aut'#243'nomo?</b></p>'
      ''
      '<p class=MsoNoSpacing><b>&nbsp;</b></p>'
      ''
      
        '<p class=MsoListParagraphCxSpFirst style='#39'margin-left:1.0cm;text' +
        '-indent:-14.15pt'#39'>-<span'
      
        'style='#39'font:7.0pt "Times New Roman"'#39'>&nbsp;&nbsp;&nbsp;&nbsp;&nb' +
        'sp;&nbsp; </span>Deshazte'
      
        'de las Libretas de Anotaciones y programas cargados de campos ad' +
        'icionales'
      
        'in'#250'tiles para tu finalidad y ya no emplee m'#225's tiempo contando su' +
        ' dinero, deje'
      'que la aplicaci'#243'n lo haga por usted.</p>'
      ''
      
        '<p class=MsoListParagraphCxSpMiddle style='#39'margin-left:1.0cm;tex' +
        't-indent:-14.15pt'#39'>-<span'
      
        'style='#39'font:7.0pt "Times New Roman"'#39'>&nbsp;&nbsp;&nbsp;&nbsp;&nb' +
        'sp;&nbsp; </span>En'
      
        '1er Lugar, te permite saber en tiempo real, estad'#237'stica y realme' +
        'nte cu'#225'nto gana,'
      'cu'#225'nto inviertes, cu'#225'nto debes y cu'#225'nto te deben a ti.</p>'
      ''
      
        '<p class=MsoListParagraphCxSpMiddle style='#39'margin-left:1.0cm;tex' +
        't-indent:-14.15pt'#39'>-<span'
      
        'style='#39'font:7.0pt "Times New Roman"'#39'>&nbsp;&nbsp;&nbsp;&nbsp;&nb' +
        'sp;&nbsp; </span>Podr'#225's'
      
        'realizar Cierres Semanales o en el Rango de Fechas que tu necesi' +
        'tes saber'
      
        'cu'#225'ntas ganancias netas has ingresado, as'#237' como el monto de las ' +
        'inversiones que'
      'has recuperado.</p>'
      ''
      
        '<p class=MsoListParagraphCxSpMiddle style='#39'margin-left:1.0cm;tex' +
        't-indent:-14.15pt'#39'>-<span'
      
        'style='#39'font:7.0pt "Times New Roman"'#39'>&nbsp;&nbsp;&nbsp;&nbsp;&nb' +
        'sp;&nbsp; </span>Sabr'#225's'
      
        'en todo momento donde y con quien est'#225' tu dinero sea liquido o e' +
        'n calidad de'
      'inversiones.</p>'
      ''
      
        '<p class=MsoListParagraphCxSpMiddle style='#39'margin-left:1.0cm;tex' +
        't-indent:-14.15pt'#39'>-<span'
      
        'style='#39'font:7.0pt "Times New Roman"'#39'>&nbsp;&nbsp;&nbsp;&nbsp;&nb' +
        'sp;&nbsp; </span>Tendr'#225's'
      
        'un Inventario Real y Contable de lo que tienes en stock disponib' +
        'le para el'
      'comercio diario.</p>'
      ''
      
        '<p class=MsoListParagraphCxSpMiddle style='#39'margin-left:1.0cm;tex' +
        't-indent:-14.15pt'#39'>-<span'
      
        'style='#39'font:7.0pt "Times New Roman"'#39'>&nbsp;&nbsp;&nbsp;&nbsp;&nb' +
        'sp;&nbsp; </span>Tendr'#225's'
      
        'un Registro ver'#237'dico por fecha y hora de lo que se ha hecho y de' +
        ' quien lo ha'
      'hecho.</p>'
      ''
      
        '<p class=MsoListParagraphCxSpMiddle style='#39'margin-left:1.0cm;tex' +
        't-indent:-14.15pt'#39'>-<span'
      
        'style='#39'font:7.0pt "Times New Roman"'#39'>&nbsp;&nbsp;&nbsp;&nbsp;&nb' +
        'sp;&nbsp; </span>Sabr'#225's'
      
        'que Bienes y que Servicios prestados contin'#250'an en garant'#237'a hasta' +
        ' el momento.</p>'
      ''
      
        '<p class=MsoListParagraphCxSpMiddle style='#39'margin-left:1.0cm;tex' +
        't-indent:-14.15pt'#39'>-<span'
      
        'style='#39'font:7.0pt "Times New Roman"'#39'>&nbsp;&nbsp;&nbsp;&nbsp;&nb' +
        'sp;&nbsp; </span>Sabr'#225's'
      
        'que productos tienes de cada proveedor, cu'#225'nto le compras, cu'#225'nt' +
        'o le debes y cu'#225'l'
      
        'de ellos aporta m'#225's recursos para la sostenibilidad de tu empres' +
        'a.</p>'
      ''
      
        '<p class=MsoListParagraphCxSpMiddle style='#39'margin-left:1.0cm;tex' +
        't-indent:-14.15pt'#39'>-<span'
      
        'style='#39'font:7.0pt "Times New Roman"'#39'>&nbsp;&nbsp;&nbsp;&nbsp;&nb' +
        'sp;&nbsp; </span>B'#250'squedas'
      
        'instant'#225'neas de lo que tienes en Inventario o en calidad de pr'#233's' +
        'tamo en manos'
      
        'de tus distribuidores, para controlar que hay y donde se encuent' +
        'ra.</p>'
      ''
      
        '<p class=MsoListParagraphCxSpMiddle style='#39'margin-left:1.0cm;tex' +
        't-indent:-14.15pt'#39'>-<span'
      
        'style='#39'font:7.0pt "Times New Roman"'#39'>&nbsp;&nbsp;&nbsp;&nbsp;&nb' +
        'sp;&nbsp; </span>Impresi'#243'n'
      
        'al momento de comprobantes personalizados para satisfacci'#243'n de s' +
        'us clientes.</p>'
      ''
      
        '<p class=MsoListParagraphCxSpLast style='#39'margin-left:1.0cm;text-' +
        'indent:-14.15pt'#39'>-<span'
      
        'style='#39'font:7.0pt "Times New Roman"'#39'>&nbsp;&nbsp;&nbsp;&nbsp;&nb' +
        'sp;&nbsp; </span>Seguridad'
      
        'y Privacidad de las gestiones diarias en tu actividad, toda la c' +
        'ontabilidad de'
      
        'tus fondos y recursos ahora est'#225'n protegidos por una contrase'#241'a ' +
        'que solo usted'
      'conocer'#225'.</p>'
      ''
      '<p class=MsoNoSpacing><b>'#191'C'#243'mo trabaja esta aplicaci'#243'n?</b></p>'
      ''
      '<p class=MsoNoSpacing><b>&nbsp;</b></p>'
      ''
      
        '<p class=MsoNoSpacing style='#39'margin-left:1.0cm;text-indent:-14.1' +
        '5pt'#39'>-<span'
      
        'style='#39'font:7.0pt "Times New Roman"'#39'>&nbsp;&nbsp;&nbsp;&nbsp;&nb' +
        'sp;&nbsp; </span>Desde'
      
        'el punto de vista funcional est'#225' dise'#241'ada para negocios con mult' +
        'i propietarios'
      
        '(Partners) donde las p'#233'rdidas y las ganancias son repartidas en ' +
        'partes iguales,'
      
        'o bien para negocios con un solo propietario donde los pagos a s' +
        'us trabajadores'
      
        'contratados son deducidos en un 2do momento a partir del m'#233'todo ' +
        'de pago que'
      'usted implemente y los porcientos que usted establezca.</p>'
      ''
      
        '<p class=MsoNoSpacing style='#39'margin-left:1.0cm;text-indent:-14.1' +
        '5pt'#39'>-<span'
      
        'style='#39'font:7.0pt "Times New Roman"'#39'>&nbsp;&nbsp;&nbsp;&nbsp;&nb' +
        'sp;&nbsp; </span>Desde'
      
        'el punto de vista t'#233'cnico esta aplicaci'#243'n fue desarrollada para ' +
        'plataformas x86-x64'
      
        'para Sistemas Operativos Windows, este producto es un micro Sist' +
        'ema de Gesti'#243'n'
      
        'de Base de Datos, se anida localmente en su equipo no necesita d' +
        'e servidores'
      
        'externos, ni programas de 3ros tales como mySQL, OBDC, Pandorax ' +
        'o MsAccess, se gestiona'
      
        'de manera aut'#243'noma, solo necesita que usted ingrese los datos ne' +
        'cesarios y a'
      'trabajar.</p>'
      ''
      '<p class=MsoNoSpacing>&nbsp;</p>'
      ''
      
        '<p class=MsoNoSpacing><b>'#191'Qu'#233' requisitos necesito para comenzar ' +
        'a utilizarla?</b></p>'
      ''
      '<p class=MsoNoSpacing><b>&nbsp;</b></p>'
      ''
      
        '<p class=MsoNoSpacing style='#39'margin-left:1.0cm;text-indent:-14.1' +
        '5pt'#39'>-<span'
      
        'style='#39'font:7.0pt "Times New Roman"'#39'>&nbsp;&nbsp;&nbsp;&nbsp;&nb' +
        'sp;&nbsp; </span>Sistema'
      'Operativo - Windows XP o Superior.</p>'
      ''
      
        '<p class=MsoNoSpacing style='#39'margin-left:1.0cm;text-indent:-14.1' +
        '5pt'#39'>-<span'
      
        'style='#39'font:7.0pt "Times New Roman"'#39'>&nbsp;&nbsp;&nbsp;&nbsp;&nb' +
        'sp;&nbsp; </span>Microprocesador'
      '- Single Core @ 1.0 GHz.</p>'
      ''
      
        '<p class=MsoNoSpacing style='#39'margin-left:1.0cm;text-indent:-14.1' +
        '5pt'#39'>-<span'
      
        'style='#39'font:7.0pt "Times New Roman"'#39'>&nbsp;&nbsp;&nbsp;&nbsp;&nb' +
        'sp;&nbsp; </span>Memoria'
      'RAM - 512 MB.</p>'
      ''
      
        '<p class=MsoNoSpacing style='#39'margin-left:1.0cm;text-indent:-14.1' +
        '5pt'#39'>-<span'
      
        'style='#39'font:7.0pt "Times New Roman"'#39'>&nbsp;&nbsp;&nbsp;&nbsp;&nb' +
        'sp;&nbsp; </span>HDD'
      
        '- 2 GB Espacio Libre.'#160#160#160#160#160#160#160#160#160#160#160#160#160#160' (HDD-Sistema S.M.A.R.T Habil' +
        'itado)</p>'
      ''
      
        '<p class=MsoNoSpacing style='#39'margin-left:1.0cm;text-indent:-14.1' +
        '5pt'#39'>-<span'
      
        'style='#39'font:7.0pt "Times New Roman"'#39'>&nbsp;&nbsp;&nbsp;&nbsp;&nb' +
        'sp;&nbsp; </span>Acceso'
      
        'de Lectura/Escritura en la ubicaci'#243'n donde instale la aplicaci'#243'n' +
        '.</p>'
      ''
      
        '<p class=MsoNoSpacing style='#39'margin-left:1.0cm;text-indent:-14.1' +
        '5pt'#39'>-<span'
      
        'style='#39'font:7.0pt "Times New Roman"'#39'>&nbsp;&nbsp;&nbsp;&nbsp;&nb' +
        'sp;&nbsp; </span>Ejecuci'#243'n'
      'desde usuarios con privilegios administrativos</p>'
      ''
      
        '<p class=MsoNoSpacing style='#39'margin-left:1.0cm;text-indent:-14.1' +
        '5pt'#39'>-<span'
      
        'style='#39'font:7.0pt "Times New Roman"'#39'>&nbsp;&nbsp;&nbsp;&nbsp;&nb' +
        'sp;&nbsp; </span>Nota:'
      
        'Incompatible con M'#225'quinas Virtuales (VMware, OracleVB, JavaVM) p' +
        'ara impedir'
      'manipulaci'#243'n de datos.</p>'
      ''
      '<p class=MsoNoSpacing style='#39'margin-left:1.0cm'#39'>&nbsp;</p>'
      ''
      
        '<p class=MsoNoSpacing><b>'#191'Existen actualizaciones y soporte t'#233'cn' +
        'ico?</b></p>'
      ''
      '<p class=MsoNoSpacing><b>&nbsp;</b></p>'
      ''
      
        '<p class=MsoNoSpacing style='#39'margin-left:1.0cm;text-indent:-14.1' +
        '5pt'#39'>-<span'
      
        'style='#39'font:7.0pt "Times New Roman"'#39'>&nbsp;&nbsp;&nbsp;&nbsp;&nb' +
        'sp;&nbsp; </span>El'
      
        'desarrollo de futuras actualizaciones y mejoras de este software' +
        ' est'#225' sujeto al'
      
        'n'#250'mero de Fitback (sugerencias para mejoras) que sean capaces de' +
        ' enviarnos'
      
        'ustedes los clientes, que ser'#225'n los que la utilicen a diario.</p' +
        '>'
      ''
      
        '<p class=MsoNoSpacing style='#39'margin-left:1.0cm;text-indent:-14.1' +
        '5pt'#39'>-<span'
      
        'style='#39'font:7.0pt "Times New Roman"'#39'>&nbsp;&nbsp;&nbsp;&nbsp;&nb' +
        'sp;&nbsp; </span>El'
      
        'soporte t'#233'cnico y aclaraciones de dudas sobre su funcionamiento ' +
        'ser'#225' brindado'
      
        'por el programador de este producto, a partir del contacto brind' +
        'ado en '#8220'Acerca'
      'de'#8230#8221'</p>'
      ''
      '<p class=MsoNoSpacing>&nbsp;</p>'
      ''
      '<p class=MsoNoSpacing>'#160#160#160#160#160#160#160#160#160#160#160#160#160#160#160' '#160' </p>'
      ''
      
        '<p class=MsoNoSpacing><b>Deberes y Limitaciones de usted como Us' +
        'uario:</b></p>'
      ''
      '<p class=MsoNoSpacing><b>&nbsp;</b></p>'
      ''
      
        '<p class=MsoNoSpacing style='#39'margin-left:1.0cm;text-indent:-14.1' +
        '5pt'#39'>-<span'
      
        'style='#39'font:7.0pt "Times New Roman"'#39'>&nbsp;&nbsp;&nbsp;&nbsp;&nb' +
        'sp;&nbsp; </span>No'
      
        'debe Descompilar, Desensamblar, Editar o Modificar este Programa' +
        ' y su'
      'Componentes.</p>'
      ''
      
        '<p class=MsoNoSpacing style='#39'margin-left:1.0cm;text-indent:-14.1' +
        '5pt'#39'>-<span'
      
        'style='#39'font:7.0pt "Times New Roman"'#39'>&nbsp;&nbsp;&nbsp;&nbsp;&nb' +
        'sp;&nbsp; </span>No'
      
        'debe borrar o modificar el Copyright y/o la Informaci'#243'n del auto' +
        'r de este'
      'producto.</p>'
      ''
      
        '<p class=MsoNoSpacing style='#39'margin-left:1.0cm;text-indent:-14.1' +
        '5pt'#39'>-<span'
      
        'style='#39'font:7.0pt "Times New Roman"'#39'>&nbsp;&nbsp;&nbsp;&nbsp;&nb' +
        'sp;&nbsp; </span>En'
      
        'caso de obtener e instalar la licencia solicitada, posteriorment' +
        'e usted'
      
        'entiende que este producto no es funcional para su actividad, no' +
        ' podr'#225' realizar'
      
        'reclamaciones en cuanto a la devoluci'#243'n del pago de su licencia,' +
        ' para evitar'
      
        'estas situaciones, disponga antes de la funcionalidad ofrecida p' +
        'ara el Modo'
      
        'Trial, donde encontrar'#225' o no utilidad para su actividad propia.<' +
        '/p>'
      ''
      
        '<p class=MsoNoSpacing style='#39'margin-left:1.0cm;text-indent:-14.1' +
        '5pt'#39'>-<span'
      
        'style='#39'font:7.0pt "Times New Roman"'#39'>&nbsp;&nbsp;&nbsp;&nbsp;&nb' +
        'sp;&nbsp; </span>Usted'
      
        'ser'#225' responsable por el uso de las licencias obtenidas, teniendo' +
        ' en cuenta lo'
      
        'aclarado sobre la validez de las mismas en el apartado: '#8220'T'#233'rmino' +
        's y Condiciones'
      'de Licencia y su Uso'#8221'.</p>'
      ''
      
        '<p class=MsoNoSpacing style='#39'margin-left:1.0cm;text-indent:-14.1' +
        '5pt'#39'>-<span'
      
        'style='#39'font:7.0pt "Times New Roman"'#39'>&nbsp;&nbsp;&nbsp;&nbsp;&nb' +
        'sp;&nbsp; </span>No'
      
        'debe distribuir copias Instaladas del programa con Licencias act' +
        'ivas hacia'
      'otras personas y equipos.</p>'
      ''
      
        '<p class=MsoNoSpacing style='#39'margin-left:1.0cm;text-indent:-14.1' +
        '5pt'#39'>-<span'
      
        'style='#39'font:7.0pt "Times New Roman"'#39'>&nbsp;&nbsp;&nbsp;&nbsp;&nb' +
        'sp;&nbsp; </span>No'
      
        'debe vender o rentar este Software y sus Licencias a 3ras Person' +
        'as.</p>'
      ''
      
        '<p class=MsoNoSpacing style='#39'margin-left:1.0cm;text-indent:-14.1' +
        '5pt'#39'>-<span'
      
        'style='#39'font:7.0pt "Times New Roman"'#39'>&nbsp;&nbsp;&nbsp;&nbsp;&nb' +
        'sp;&nbsp; </span>En'
      
        'caso de actualizaciones futuras de software deber'#225' realizar manu' +
        'almente copias'
      
        'de seguridad de las Bases de Datos para prever Bugs de versiones' +
        ' Betas en fases'
      'de desarrollo.</p>'
      ''
      
        '<p class=MsoNoSpacing style='#39'margin-left:1.0cm;text-indent:-14.1' +
        '5pt'#39'>-<span'
      
        'style='#39'font:7.0pt "Times New Roman"'#39'>&nbsp;&nbsp;&nbsp;&nbsp;&nb' +
        'sp;&nbsp; </span>La'
      
        'utilizaci'#243'n en base a la finalidad econ'#243'mica de su actividad es ' +
        'su entera'
      'responsabilidad, sea o no legal.</p>'
      ''
      
        '<p class=MsoNoSpacing style='#39'margin-left:1.0cm;text-indent:-14.1' +
        '5pt'#39'>-<span'
      
        'style='#39'font:7.0pt "Times New Roman"'#39'>&nbsp;&nbsp;&nbsp;&nbsp;&nb' +
        'sp;&nbsp; </span>Las'
      
        'licencias expedidas para otros equipos ser'#225'n completamente incom' +
        'patibles en su'
      'equipo y viceversa.</p>'
      ''
      '<p class=MsoNoSpacing>&nbsp;</p>'
      ''
      '<p class=MsoNoSpacing><b>Derechos de usted como Usuario:</b></p>'
      ''
      '<p class=MsoNoSpacing><b>&nbsp;</b></p>'
      ''
      
        '<p class=MsoNoSpacing style='#39'margin-left:1.0cm;text-indent:-14.1' +
        '5pt'#39'>-<span'
      
        'style='#39'font:7.0pt "Times New Roman"'#39'>&nbsp;&nbsp;&nbsp;&nbsp;&nb' +
        'sp;&nbsp; </span>Usted'
      
        'tiene el derecho de usar la aplicaci'#243'n durante un per'#237'odo de eva' +
        'luaci'#243'n (Trial)'
      'al menos una vez por PC.</p>'
      ''
      
        '<p class=MsoNoSpacing style='#39'margin-left:1.0cm;text-indent:-14.1' +
        '5pt'#39'>-<span'
      
        'style='#39'font:7.0pt "Times New Roman"'#39'>&nbsp;&nbsp;&nbsp;&nbsp;&nb' +
        'sp;&nbsp; </span>Con'
      
        'total seguridad podr'#225' enviarnos sus opiniones con el fin de mejo' +
        'rar las'
      'funcionalidades de la aplicaci'#243'n.</p>'
      ''
      
        '<p class=MsoNoSpacing style='#39'margin-left:1.0cm;text-indent:-14.1' +
        '5pt'#39'>-<span'
      
        'style='#39'font:7.0pt "Times New Roman"'#39'>&nbsp;&nbsp;&nbsp;&nbsp;&nb' +
        'sp;&nbsp; </span>Pasado'
      
        'el tiempo definido para la espera, en cuanto a la obtenci'#243'n de l' +
        'a licencia'
      
        'solicitada, usted podr'#225' reclamar la totalidad del monto transfer' +
        'ido al autor.</p>'
      ''
      
        '<p class=MsoNoSpacing style='#39'margin-left:1.0cm;text-indent:-14.1' +
        '5pt'#39'>-<span'
      
        'style='#39'font:7.0pt "Times New Roman"'#39'>&nbsp;&nbsp;&nbsp;&nbsp;&nb' +
        'sp;&nbsp; </span>En'
      
        'caso de dudas en cuanto a la utilizaci'#243'n de esta aplicaci'#243'n uste' +
        'd podr'#225
      
        'solicitar ayuda para disipar sus inquietudes v'#237'a email y/o telef' +
        #243'nica apoyados'
      'en el contacto brindado en '#8220'Acerca de'#8230#8221'</p>'
      ''
      '<p class=MsoNoSpacing>&nbsp;</p>'
      ''
      
        '<p class=MsoNoSpacing><b>Usted tiene el derecho de usar SGBD por' +
        ' un per'#237'odo de'
      
        'evaluaci'#243'n (TRIAL) al menos una vez en cada equipo y solamente t' +
        'endr'#225' las'
      'siguientes limitaciones: </b></p>'
      ''
      '<p class=MsoNoSpacing><b>&nbsp;</b></p>'
      ''
      
        '<p class=MsoNoSpacing style='#39'margin-left:1.0cm;text-indent:-14.1' +
        '5pt'#39'>-<span'
      
        'style='#39'font:7.0pt "Times New Roman"'#39'>&nbsp;&nbsp;&nbsp;&nbsp;&nb' +
        'sp;&nbsp; </span>Podr'#225
      
        'usarse la aplicaci'#243'n solamente por un per'#237'odo de evaluaci'#243'n (TRI' +
        'AL) concreto'
      
        'que no ser'#225' revelado al usuario final, sin embargo, ser'#225' suficie' +
        'nte, para'
      
        'percibir las utilidades y funcionalidades de este producto. El m' +
        'odo TRIAL ser'#225
      
        'completamente gratis, ninguna persona y/o distribuidor podr'#225' ped' +
        'ir ingresos'
      'iniciales por su uso.</p>'
      ''
      
        '<p class=MsoNoSpacing style='#39'margin-left:1.0cm;text-indent:-14.1' +
        '5pt'#39'>-<span'
      
        'style='#39'font:7.0pt "Times New Roman"'#39'>&nbsp;&nbsp;&nbsp;&nbsp;&nb' +
        'sp;&nbsp; </span>Al'
      
        'A'#241'adir los Productos estar'#225' limitado el n'#250'mero m'#225'ximo de Product' +
        'os por vez.<b><span'
      
        'style='#39'font-size:14.0pt'#39'><br clear=all style='#39'page-break-before:' +
        'always'#39'>'
      '</span></b></p>'
      ''
      '</div>'
      ''
      '</body>'
      ''
      '</html>')
    TabOrder = 2
    Visible = False
  end
  object ListBox_Terminos_Condiciones: TListBox
    Left = 368
    Top = 168
    Width = 121
    Height = 97
    ItemHeight = 13
    Items.Strings = (
      '<html>'
      ''
      '<head>'
      
        '<meta http-equiv=Content-Type content="text/html; charset=window' +
        's-1252">'
      '<meta name=Generator content="Microsoft Word 15 (filtered)">'
      '<style>'
      '<!--'
      ' /* Font Definitions */'
      ' @font-face'
      #9'{font-family:Wingdings;'
      #9'panose-1:5 0 0 0 0 0 0 0 0 0;}'
      '@font-face'
      #9'{font-family:"Cambria Math";'
      #9'panose-1:2 4 5 3 5 4 6 3 2 4;}'
      '@font-face'
      #9'{font-family:Calibri;'
      #9'panose-1:2 15 5 2 2 2 4 3 2 4;}'
      ' /* Style Definitions */'
      ' p.MsoNormal, li.MsoNormal, div.MsoNormal'
      #9'{margin-top:0cm;'
      #9'margin-right:0cm;'
      #9'margin-bottom:8.0pt;'
      #9'margin-left:0cm;'
      #9'line-height:107%;'
      #9'font-size:11.0pt;'
      #9'font-family:"Calibri","sans-serif";}'
      'p.MsoHeader, li.MsoHeader, div.MsoHeader'
      #9'{mso-style-link:"Encabezado Car";'
      #9'margin:0cm;'
      #9'margin-bottom:.0001pt;'
      #9'font-size:11.0pt;'
      #9'font-family:"Calibri","sans-serif";}'
      'p.MsoFooter, li.MsoFooter, div.MsoFooter'
      #9'{mso-style-link:"Pie de p'#225'gina Car";'
      #9'margin:0cm;'
      #9'margin-bottom:.0001pt;'
      #9'font-size:11.0pt;'
      #9'font-family:"Calibri","sans-serif";}'
      'p.MsoNoSpacing, li.MsoNoSpacing, div.MsoNoSpacing'
      #9'{margin:0cm;'
      #9'margin-bottom:.0001pt;'
      #9'font-size:11.0pt;'
      #9'font-family:"Calibri","sans-serif";}'
      'p.MsoListParagraph, li.MsoListParagraph, div.MsoListParagraph'
      #9'{margin-top:0cm;'
      #9'margin-right:0cm;'
      #9'margin-bottom:8.0pt;'
      #9'margin-left:36.0pt;'
      #9'line-height:107%;'
      #9'font-size:11.0pt;'
      #9'font-family:"Calibri","sans-serif";}'
      
        'p.MsoListParagraphCxSpFirst, li.MsoListParagraphCxSpFirst, div.M' +
        'soListParagraphCxSpFirst'
      #9'{margin-top:0cm;'
      #9'margin-right:0cm;'
      #9'margin-bottom:0cm;'
      #9'margin-left:36.0pt;'
      #9'margin-bottom:.0001pt;'
      #9'line-height:107%;'
      #9'font-size:11.0pt;'
      #9'font-family:"Calibri","sans-serif";}'
      
        'p.MsoListParagraphCxSpMiddle, li.MsoListParagraphCxSpMiddle, div' +
        '.MsoListParagraphCxSpMiddle'
      #9'{margin-top:0cm;'
      #9'margin-right:0cm;'
      #9'margin-bottom:0cm;'
      #9'margin-left:36.0pt;'
      #9'margin-bottom:.0001pt;'
      #9'line-height:107%;'
      #9'font-size:11.0pt;'
      #9'font-family:"Calibri","sans-serif";}'
      
        'p.MsoListParagraphCxSpLast, li.MsoListParagraphCxSpLast, div.Mso' +
        'ListParagraphCxSpLast'
      #9'{margin-top:0cm;'
      #9'margin-right:0cm;'
      #9'margin-bottom:8.0pt;'
      #9'margin-left:36.0pt;'
      #9'line-height:107%;'
      #9'font-size:11.0pt;'
      #9'font-family:"Calibri","sans-serif";}'
      'p.MsoIntenseQuote, li.MsoIntenseQuote, div.MsoIntenseQuote'
      #9'{mso-style-link:"Cita destacada Car";'
      #9'margin-top:18.0pt;'
      #9'margin-right:43.2pt;'
      #9'margin-bottom:18.0pt;'
      #9'margin-left:43.2pt;'
      #9'text-align:center;'
      #9'line-height:107%;'
      #9'border:none;'
      #9'padding:0cm;'
      #9'font-size:11.0pt;'
      #9'font-family:"Calibri","sans-serif";'
      #9'color:#5B9BD5;'
      #9'font-style:italic;}'
      'span.EncabezadoCar'
      #9'{mso-style-name:"Encabezado Car";'
      #9'mso-style-link:Encabezado;}'
      'span.PiedepginaCar'
      #9'{mso-style-name:"Pie de p'#225'gina Car";'
      #9'mso-style-link:"Pie de p'#225'gina";}'
      'span.CitadestacadaCar'
      #9'{mso-style-name:"Cita destacada Car";'
      #9'mso-style-link:"Cita destacada";'
      #9'color:#5B9BD5;'
      #9'font-style:italic;}'
      '.MsoChpDefault'
      #9'{font-family:"Calibri","sans-serif";}'
      '.MsoPapDefault'
      #9'{margin-bottom:8.0pt;'
      #9'line-height:107%;}'
      ' /* Page Definitions */'
      ' @page WordSection1'
      #9'{size:612.0pt 792.0pt;'
      #9'margin:0cm 36.0pt 21.3pt 36.0pt;}'
      'div.WordSection1'
      #9'{page:WordSection1;}'
      ' /* List Definitions */'
      ' ol'
      #9'{margin-bottom:0cm;}'
      'ul'
      #9'{margin-bottom:0cm;}'
      '-->'
      '</style>'
      ''
      '</head>'
      ''
      '<body bgcolor="white" lang=ES>'
      ''
      '<div class=WordSection1>'
      ''
      
        '<p class=MsoNoSpacing><b><span style='#39'font-size:14.0pt'#39'>&nbsp;</' +
        'span></b></p>'
      ''
      
        '<div style='#39'border-top:solid #5B9BD5 1.0pt;border-left:none;bord' +
        'er-bottom:solid #5B9BD5 1.0pt;'
      
        'border-right:none;padding:10.0pt 0cm 10.0pt 0cm;margin-left:43.2' +
        'pt;margin-right:'
      '43.2pt'#39'>'
      ''
      
        '<p class=MsoIntenseQuote style='#39'margin-top:18.0pt;margin-right:0' +
        'cm;margin-bottom:'
      
        '18.0pt;margin-left:0cm'#39'><span style='#39'font-size:14.0pt;line-heigh' +
        't:107%;'
      
        'color:black'#39'>T'#233'rminos y Condiciones de Licencias y su Uso</span>' +
        '</p>'
      ''
      '</div>'
      ''
      '<p class=MsoNoSpacing>&nbsp;</p>'
      ''
      
        '<p class=MsoNoSpacing style='#39'text-align:justify'#39'>Por favor lea e' +
        ' interprete los'
      
        'siguientes T'#233'rminos y Condiciones para el uso de este Producto a' +
        'ntes de Aceptar'
      
        'y comenzar a utilizar nuestra licencia, puesto que no leerlo aho' +
        'ra no eximir'#225
      'de cumplirlo en su totalidad.</p>'
      ''
      '<p class=MsoNoSpacing style='#39'text-align:justify'#39'>&nbsp;</p>'
      ''
      
        '<p class=MsoNoSpacing style='#39'text-align:justify'#39'>La Licencia par' +
        'a este producto'
      
        'no est'#225' basada en un usuario, sino, en una PC '#250'nica, por lo tant' +
        'o, las licencias'
      
        'ser'#225'n generadas a partir del concepto (1 Licencia para 1 PC), po' +
        'r ende, si usted'
      
        'desea usar esta aplicaci'#243'n en varios Equipos deber'#225' realizar m'#250'l' +
        'tiples'
      
        'solicitudes, en cada uno de ellos, a la par que, deber'#225' realizar' +
        ' pagos individuales'
      
        'por cada una de estas licencias. La Identificaci'#243'n de cada PC es' +
        'tar'#225' basada en'
      
        'el Hardware (Disco Duro del Sistema) como un solo equipo '#250'nico e' +
        ' Indivisible,'
      
        'por lo cual, una Licencia-A solamente podr'#225' utilizarse en el Equ' +
        'ipo-A donde se'
      
        'gener'#243' la solicitud, y no en m'#225's ning'#250'n otro equipo, en caso de ' +
        'que usted cambie'
      
        'su Disco Duro Principal del Sistema, necesitar'#225' una Licencia Nue' +
        'va, este'
      
        'procedimiento es vital para evitar copias no deseadas. Usted deb' +
        'er'#225' ser consciente'
      
        'de esta metodolog'#237'a y tener en cuenta este aspecto a la hora de ' +
        'realizar'
      
        'modificaciones en el hardware de su equipo, por actualizaciones ' +
        'y/o roturas, puesto'
      
        'que en estos casos el autor de la aplicaci'#243'n no es responsable p' +
        'or la inoperatividad'
      
        'consiguiente de su producto, sin embargo, la carpeta &quot;Store' +
        '&quot; que contiene'
      
        'toda la informaci'#243'n y la Base de Datos estar'#225' disponible a futur' +
        'o cuando'
      'Re-Active su aplicaci'#243'n.</p>'
      ''
      '<p class=MsoNoSpacing style='#39'text-align:justify'#39'>&nbsp;</p>'
      ''
      
        '<p class=MsoNoSpacing style='#39'text-align:justify'#39'>La metodolog'#237'a ' +
        'para el pago y la'
      
        'distribuci'#243'n de esta Licencia est'#225' basada en las transferencias ' +
        'de saldo fijo,'
      
        'es su responsabilidad escribir de manera correcta el n'#250'mero al c' +
        'ual transferir'#225
      
        'el dinero, a la vez que, nuestra responsabilidad y deber ser'#225' en' +
        'viarle de'
      
        'manera correcta y en tiempo, la licencia solicitada, en caso de ' +
        'existir'
      
        'inconvenientes reales para la correcta instalaci'#243'n o el envi'#243' ta' +
        'rd'#237'o de la'
      
        'licencia, usted recibir'#225' '#237'ntegramente el total del saldo transfe' +
        'rido.</p>'
      ''
      '<p class=MsoNoSpacing style='#39'text-align:justify'#39'>&nbsp;</p>'
      ''
      
        '<p class=MsoNoSpacing style='#39'text-align:justify'#39'>Es importante r' +
        'esaltar que una'
      
        'vez adquirida e instalada la licencia de manera correcta por la ' +
        'v'#237'a'
      
        'establecida, usted es responsable de evitar los llamados <i>Hack' +
        's/Cracks/Patch/Key'
      
        'Broker o Key Gen</i>, que de ser arbitrariamente utilizados pudi' +
        'eran provocar mal'
      
        'funcionamientos o rupturas en la aplicaci'#243'n, por lo cual el auto' +
        'r no se hace'
      'responsable de estos desperfectos.</p>'
      ''
      '<p class=MsoNoSpacing style='#39'text-align:justify'#39'>&nbsp;</p>'
      ''
      
        '<p class=MsoNoSpacing style='#39'text-align:justify'#39'>Una vez revisad' +
        'o y aceptado'
      
        'estos t'#233'rminos y condiciones usted es consciente de lo aqu'#237' disp' +
        'uesto y por consiguiente'
      
        'no podr'#225' realizar reclamaciones que contradigan lo previamente a' +
        'qu'#237' acordado.'
      
        'Abogamos por el entendimiento de las partes para que todo funcio' +
        'ne de manera'
      
        'correcta y usted perciba los beneficios de este producto. Contin' +
        'uaremos trabajando'
      'para mejorarlo a futuro e incrementar sus funcionalidades.</p>'
      ''
      '<p class=MsoNoSpacing style='#39'text-align:justify'#39'>&nbsp;</p>'
      ''
      
        '<p class=MsoNoSpacing style='#39'text-align:justify'#39'><i>Una buena ge' +
        'sti'#243'n econ'#243'mica'
      
        'ahorra tiempo y esfuerzo, lo que se traduce directamente en mayo' +
        'res ingresos'
      
        'econ'#243'micos para su actividad, comprar nuestra licencia no es un ' +
        'gasto, es'
      #250'nicamente una inversi'#243'n.</i></p>'
      ''
      '</div>'
      ''
      '</body>'
      ''
      '</html>')
    TabOrder = 3
    Visible = False
  end
  object PopupMenu1: TPopupMenu
    Left = 552
    Top = 120
  end
end
