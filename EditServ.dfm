object Form_EditServiciosBD: TForm_EditServiciosBD
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Editar Valores en Campos de las Bases de Datos (Servicios)'
  ClientHeight = 297
  ClientWidth = 657
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object JvBevel4: TJvBevel
    Left = 13
    Top = 14
    Width = 628
    Height = 267
    Shape = bsFrame
    Inner = bvRaised
  end
  object JvBevel3: TJvBevel
    Left = 352
    Top = 219
    Width = 279
    Height = 51
    Shape = bsFrame
    Inner = bvRaised
  end
  object JvImage1: TJvImage
    Left = 353
    Top = 220
    Width = 48
    Height = 48
    Picture.Data = {
      055449636F6E0000010001003030000001002000A82500001600000028000000
      3000000060000000010020000000000080250000000000000000000000000000
      00000000FF7300C3FF7300DFFF7300DFFF7300DFFF7300DFFF7300DFFF7300DF
      FF7300DFFF7300DFFF7300DFFF7300DFFF7300DFFF7300DFFF7300DFFF7300DF
      FF7300DFFF7300DFFF7300DFFF7300DFFF7300DFFF7300DFFF7300DFFF7300DF
      FF7300DFFF7300DFFF7300DFFF7300DFFF7300DFFF7300DFFF7300DFFF7300DF
      FF7300DFFF7300DFFF7300DFFF7300DFFF7300DFFF7300DFFF7300DFFF7300DF
      FF7300DFFF7300DFFF7300DFFF7300DFFF7300DFFF7300DFFF7300DFFF7300DF
      FF7300C3FF7300DFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FF
      FF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FF
      FF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FF
      FF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FF
      FF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FF
      FF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FF
      FF7300DFFF7300DFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FF
      FF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FF
      FF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FF
      FF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FF
      FF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FF
      FF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FF
      FF7300DFFF7300DFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FF
      FF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FF
      FF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FF
      FF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FF
      FF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FF
      FF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FF
      FF7300DFFF7300DFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FF
      FF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FF
      FF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FF
      FF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FF
      FF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FF
      FF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FF
      FF7300DFFF7300DFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FF
      FF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FF
      FF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FF
      FF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FF
      FF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FF
      FF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FF
      FF7300DFFF7300DFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FF
      FF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FF
      FF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FF
      FF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FF
      FF7300FFFF7300FFFF7300FFFF7700FFFF7300FFFF7700FFFF7300FFFF7300FF
      FF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FF
      FF7300DFFF7300DFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FF
      FF7300FFF7984AFFF78120FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FF
      FF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FF
      FF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FF
      FF7300FFFF7300FFFC7200FFF79F57FFF7C8A1FFF7CCA6FFF5A564FFFA7000FF
      FF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FF
      FF7300DFFF7300DFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FF
      F79845FFFCF5EDFFFAEEE3FFF5B278FFFC7200FFFF7300FFFF7300FFFF7300FF
      FF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FF
      FF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FF
      FF7300FFF76F00FFF7D7BCFFFCFAF7FFFCFCFCFFFAFAFAFFFCF9F7FFF7DDC8FF
      F77F16FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FF
      FF7300DFFF7300DFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FF
      F77D19FFFAEDE3FFFFFFFFFFFCFAF7FFF7D7BCFFF78528FFFF7300FFFF7300FF
      FF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FF
      FF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FF
      F76F00FFF7DDC3FFFFFFFFFFE8E8E8FFBFBFBFFFB8B8B8FFD4D4D4FFFAFAFAFF
      F7DCC3FFFC7200FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FF
      FF7300DFFF7300DFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FF
      FF7700FFF7AE72FFFCFAF7FFFFFFFFFFFFFFFFFFFCF2EBFFF5B682FFFC7200FF
      FF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FF
      FF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFF77300FF
      F7DBC3FFFFFFFFFFF2F2F2FFADADADFF969696FF969696FF9C9C9CFFDBDBDBFF
      FCFAF7FFF79845FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FF
      FF7300DFFF7300DFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FF
      FF7300FFFF7300FFF7D7BCFFFFFFFFFFFFFFFFFFFFFFFFFFFCF9F7FFF7CFADFF
      FF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FF
      FF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFF76F00FFF7DBC3FF
      FFFFFFFFFFFFFFFFE6E6E6FF9C9C9CFF969696FF969696FF969696FFC2C2C2FF
      FFFFFFFFF7B77EFFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FF
      FF7300DFFF7300DFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FF
      FF7300FFFF7700FFF78120FFFAEEE3FFFFFFFFFFFFFFFFFFFFFFFFFFFAEEE3FF
      FA7000FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FF
      FF7300FFFF7300FFFF7300FFFF7300FFFF7300FFF76F00FFF7DBC3FFFFFFFFFF
      FFFFFFFFFFFFFFFFEDEDEDFFA6A6A6FF969696FF969696FF999999FFD1D1D1FF
      FFFFFFFFF7AB6DFFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FF
      FF7300DFFF7300DFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FF
      FF7300FFFF7300FFFF7300FFF7B479FFFCFAF7FFFFFFFFFFFFFFFFFFFCF9F5FF
      F7A257FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FF
      FF7300FFFF7300FFFF7300FFFF7300FFF76F00FFF7DBC3FFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFCFCFCFFD9D9D9FFABABABFFA6A6A6FFC2C2C2FFF5F5F5FF
      FAF2EBFFF77F16FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FF
      FF7300DFFF7300DFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FF
      FF7300FFFF7300FFFF7300FFFC7200FFF5CBA9FFFAECE1FFFCF9F5FFFFFFFFFF
      FAEDE1FFF78F39FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FF
      FF7300FFFF7300FFFF7300FFF76F00FFF7DBC3FFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5F5F5FFF2F2F2FFFAFAFAFFFCF9F5FF
      F7B783FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FF
      FF7300DFFF7300DFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FF
      FF7300FFFF7300FFFF7300FFFF7700FFFF7300FFFA7500FFF79B4FFFF7EADFFF
      FFFFFFFFFAEDE1FFF78F39FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FF
      FF7300FFFF7300FFF77300FFF7DBC3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCF9F5FFF7C08FFF
      FF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FF
      FF7300DFFF7300DFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FF
      FF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFF78B31FF
      F7EADFFFFFFFFFFFFAECE1FFF78F39FFFF7300FFFF7300FFFF7300FFFF7300FF
      FF7300FFF77300FFF7DBC3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFAF7FFF7C394FFFF7300FF
      FF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FF
      FF7300DFFF7300DFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FF
      FF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FF
      F78E31FFF7EBDFFFFFFFFFFFFAEDE1FFF78F39FFFF7300FFFF7300FFFF7300FF
      F76F00FFF7DBC3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFAF7FFF7C59CFFFC7200FFFF7300FF
      FF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FF
      FF7300DFFF7300DFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FF
      FF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FF
      FF7300FFF78E31FFF7EADFFFFFFFFFFFF7E2D0FFFA7000FFFF7300FFF76F00FF
      F7DDC3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFCF7F5FFF7C192FFFC7200FFFF7300FFFF7300FF
      FF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FF
      FF7300DFFF7300DFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FF
      FF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FF
      FF7300FFFF7300FFF78E31FFF7E0CDFFF7A868FFFF7300FFF77300FFF7DBC3FF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFCF9F5FFF5BE90FFFC7200FFFF7300FFFF7300FFFF7300FF
      FF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FF
      FF7300DFFF7300DFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FF
      FF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FF
      FF7300FFFF7300FFFF7300FFFA7500FFFF7300FFF76F00FFF7DBC3FFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFCF9F5FFF7C092FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FF
      FF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FF
      FF7300DFFF7300DFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FF
      FF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FF
      FF7300FFFF7300FFFF7300FFFF7300FFF77300FFF7DBC3FFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FCFAF7FFF7C192FFFC7600FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FF
      FF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FF
      FF7300DFFF7300DFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FF
      FF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FF
      FF7300FFFF7300FFFF7300FFF76F00FFF7DBC3FFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFAF7FF
      F7C59CFFFC7200FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FF
      FF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FF
      FF7300DFFF7300DFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FF
      FF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FF
      FF7300FFFF7300FFF76F00FFF7DCC3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCF9F5FFF7C194FF
      FC7200FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FF
      FF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FF
      FF7300DFFF7300DFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FF
      FF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7700FF
      FF7300FFFA7305FFF7DBC3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCF9F5FFF7BE8FFFFF7300FF
      FF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FF
      FF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FF
      FF7300DFFF7300DFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FF
      FF7300FFFF7300FFFF7300FFFF7300FFFC7200FFF79545FFF5C298FFF7D8BEFF
      FADDC5FFFAE9D9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFAF7FFF7C194FFFC7600FFFC7200FF
      FC7200FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FF
      FF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FF
      FF7300DFFF7300DFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FF
      FF7300FFFF7300FFFF7700FFF78B31FFF7DDC6FFFCF7F5FFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFCF7F5FFF7C194FFFC7200FFFF7700FFF7C194FF
      F7CFADFFFC7200FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FF
      FF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FF
      FF7300DFFF7300DFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FF
      FF7300FFFF7700FFF7984AFFFAEEE3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFCF7F5FFF5C398FFFC7200FFFC7200FFFF7300FFF5A056FF
      FCF4EBFFF7D2B2FFFC7200FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FF
      FF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FF
      FF7300DFFF7300DFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FF
      FF7300FFF77D19FFFAECE1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFCF7F5FFF7C092FFFC7200FFFF7300FFF7C8A1FFF7C8A1FFFC7200FF
      F59D56FFFAF0E8FFF7D1B2FFFC7200FFFF7300FFFF7300FFFF7300FFFF7300FF
      FF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FF
      FF7300DFFF7300DFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FF
      FF7700FFF7CEABFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FCF9F5FFF7BE8FFFFC7200FFFF7300FFFC7600FFF5C398FFFAF5F2FFF7C9A3FF
      FC7200FFF5A056FFFAF0E8FFF7D2B2FFFC7200FFFF7300FFFF7300FFFF7300FF
      FF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FF
      FF7300DFFF7300DFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FF
      F7750AFFFAF2EBFFFFFFFFFFFFFFFFFFFCF9F7FFF7D7BCFFF5AC71FFF7CCA6FF
      FAF5F2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCF9F5FF
      F7BE8FFFFF7300FFFC7200FFF5C298FFF5A15DFFFC7200FFF5C298FFFAF5F2FF
      F7C9A3FFFC7200FFF5A056FFFCF4EBFFF7D2B2FFFC7200FFFF7300FFFF7300FF
      FF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FF
      FF7300DFFF7300DFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FF
      F79B4FFFFFFCFAFFFFFFFFFFFCF9F7FFF7C9A3FFFC7200FFFF7300FFFF7300FF
      F7B57EFFFAF6F2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7E0CDFF
      FC7200FFFF7300FFFC7200FFF5CBA9FFFCF2EBFFF5A15DFFFC7200FFF5C39AFF
      FAF5F2FFF7CAA3FFFC7200FFF79F57FFFCF3EBFFF7D1B2FFFC7200FFFF7300FF
      FF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FF
      FF7300DFFF7300DFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7700FF
      F5AF76FFFFFFFFFFFCFAF7FFF7CAA3FFFC7200FFFF7300FFFF7300FFFF7300FF
      FF7300FFF7B77EFFFAF6F2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7E2D0FF
      FC7200FFFF7300FFFF7300FFFC7200FFF7CDABFFFCF2EBFFF5A45DFFFC7600FF
      F5C298FFFAF5F2FFF5C7A2FFFC7200FFF7A257FFFAF1E8FFF7D2B2FFFC7200FF
      FF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FF
      FF7300DFFF7300DFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FF
      F5AB6EFFFCFAF7FFF7CAA3FFFC7200FFFF7300FFFF7300FFFF7300FFFF7300FF
      FF7300FFFF7300FFF7D4B7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAE1CAFF
      FF7300FFFF7300FFFF7300FFFF7300FFFC7200FFF7CDABFFFCF2EBFFF5A15DFF
      FC7200FFF5C298FFFAF5F2FFF7CAA3FFFC7200FFF59D56FFFCF4EBFFF7D1B2FF
      FC7200FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FF
      FF7300DFFF7300DFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FF
      F78F39FFF7C79CFFFC7200FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FF
      FF7300FFFF7300FFF7C9A3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7CDADFF
      FF7700FFFF7300FFFF7300FFFF7300FFFF7300FFFC7200FFF7CEABFFFCF4EBFF
      F5A15DFFFC7200FFF5C49AFFFAF5F2FFF7CAA3FFFC7200FFF5A056FFFAF0E8FF
      F7CEABFFFC7200FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FF
      FF7300DFFF7300DFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FF
      FF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FF
      FF7700FFF77D19FFF7EADFFFFFFFFFFFFFFFFFFFFFFFFFFFFCF9F7FFF5A15DFF
      FF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFC7200FFF7CDABFF
      FCF2EBFFF5A55FFFFC7200FFF5C298FFFAF5F2FFF7C9A3FFFC7200FFF5A15DFF
      FAF2EBFFF5984CFFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FF
      FF7300DFFF7300DFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FF
      FF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FF
      F77911FFF7E2D0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAE6D7FFFC7200FF
      FF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFC7200FF
      F7CFADFFFCF2EBFFF5A15DFFFC7600FFF5C39AFFFAF5F2FFF7CCA6FFF7AB6DFF
      FCF6F0FFF7C194FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FF
      FF7300DFFF7300DFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FF
      FF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFF77911FF
      F7E2D0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCF3EDFFF79E4FFFFF7300FF
      FF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FF
      FC7200FFF7CDABFFFCF4EBFFF5A15DFFFC7200FFF7C8A1FFFFFCFAFFFCF9F7FF
      FFFFFFFFF5B887FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FF
      FF7300DFFF7300DFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FF
      FF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7700FFF77911FFF7E2D0FF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAF2EBFFF5A767FFFF7300FFFF7300FF
      FF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FF
      FF7300FFFC7200FFF7CEABFFFCF2EBFFF5A967FFF7A760FFFCF7F5FFFFFFFFFF
      FAF2EBFFF78623FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FF
      FF7300DFFF7300DFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FF
      FF7300FFFF7300FFFF7300FFFF7300FFFF7300FFF76F00FFF7E0CDFFFFFFFFFF
      FFFFFFFFFFFFFFFFFCF6F0FFF7D6BCFFF78E31FFFF7300FFFF7300FFFF7300FF
      FF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FF
      FF7300FFFF7300FFFC7200FFF7C9A3FFFAF1EBFFFCF6F0FFFFFFFFFFFCF2EBFF
      F5AB6EFFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FF
      FF7300DFFF7300DFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FF
      FF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFC7200FFF5984CFFF5B47FFF
      F5BA87FFF7AB68FFF78120FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FF
      FF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FF
      FF7300FFFF7300FFFF7300FFFF7300FFF7913EFFF5BA87FFF7B77EFFF78520FF
      FF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FF
      FF7300DFFF7300DFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FF
      FF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FF
      FF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FF
      FF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FF
      FF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7700FFFF7300FFFF7300FF
      FF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FF
      FF7300DFFF7300DFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FF
      FF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FF
      FF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FF
      FF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FF
      FF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FF
      FF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FF
      FF7300DFFF7300DFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FF
      FF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FF
      FF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FF
      FF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FF
      FF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FF
      FF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FF
      FF7300DFFF7300DFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FF
      FF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FF
      FF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FF
      FF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FF
      FF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FF
      FF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FF
      FF7300DFFF7300DFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FF
      FF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FF
      FF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FF
      FF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FF
      FF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FF
      FF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FF
      FF7300DFFF7300DFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FF
      FF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FF
      FF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FF
      FF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FF
      FF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FF
      FF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FF
      FF7300DFFF7300C4FF7300E0FF7300E0FF7300E0FF7300E0FF7300E0FF7300E0
      FF7300E0FF7300E0FF7300E0FF7300E0FF7300E0FF7300E0FF7300E0FF7300E0
      FF7300E0FF7300E0FF7300E0FF7300E0FF7300E0FF7300E0FF7300E0FF7300E0
      FF7300E0FF7300E0FF7300E0FF7300E0FF7300E0FF7300E0FF7300E0FF7300E0
      FF7300E0FF7300E0FF7300E0FF7300E0FF7300E0FF7300E0FF7300E0FF7300E0
      FF7300E0FF7300E0FF7300E0FF7300E0FF7300E0FF7300E0FF7300E0FF7300E0
      FF7300C400000000000073000000000000007300000000000000730000000000
      0000730000000000000073000000000000007300000000000000730000000000
      0000730000000000000073000000000000007300000000000000730000000000
      0000730000000000000073000000000000007300000000000000730000000000
      0000730000000000000073000000000000007300000000000000730000000000
      0000730000000000000073000000000000007300000000000000730000000000
      0000730000000000000073000000000000007300000000000000730000000000
      0000730000000000000073000000000000007300000000000000730000000000
      0000730000000000000073000000000000007300000000000000730000000000
      0000730000000000000073000000000000007300000000000000730000000000
      0000730000000000000073000000000000007300000000000000730000000000
      0000730000000000000073000000000000007300000000000000730000000000
      00007300}
    Proportional = True
    Stretch = True
  end
  object Label19: TLabel
    Left = 27
    Top = 16
    Width = 145
    Height = 13
    Caption = 'Estos Campos son Obligatorios'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGray
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label18: TLabel
    Left = 14
    Top = 11
    Width = 10
    Height = 29
    Caption = '*'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGray
    Font.Height = -24
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label30: TLabel
    Left = 352
    Top = 189
    Width = 279
    Height = 26
    Alignment = taCenter
    Caption = 
      'Los Cambios Efectuados pudieran Afectar de Directamente las Esta' +
      'd'#237'sticas y el Sistema en General.'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGray
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    WordWrap = True
  end
  object Button_Update_Servicio: TButton
    Left = 399
    Top = 218
    Width = 232
    Height = 52
    Caption = 'Aplicar Cambios en este Servicio'
    Font.Charset = EASTEUROPE_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    OnClick = Button_Update_ServicioClick
  end
  object GroupBox0: TGroupBox
    Left = 25
    Top = 35
    Width = 321
    Height = 235
    Caption = 
      '                                    Datos del  Servicio         ' +
      '                      '
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object Label10: TLabel
      Left = 21
      Top = 202
      Width = 80
      Height = 13
      Caption = 'Observaciones : '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label4: TLabel
      Left = 9
      Top = 170
      Width = 92
      Height = 13
      Caption = 'Garant'#237'a Servicio : '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label9: TLabel
      Left = 156
      Top = 170
      Width = 23
      Height = 13
      Caption = 'D'#237'as'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label6: TLabel
      Left = 311
      Top = 128
      Width = 23
      Height = 14
      Caption = 'Neto'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'High Tower Text'
      Font.Pitch = fpFixed
      Font.Style = []
      ParentFont = False
      Transparent = True
      Visible = False
    end
    object Label17: TLabel
      Left = 299
      Top = 126
      Width = 10
      Height = 29
      Caption = '*'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -24
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label3: TLabel
      Left = 57
      Top = 136
      Width = 44
      Height = 13
      Caption = 'Importe : '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label1: TLabel
      Left = 55
      Top = 68
      Width = 47
      Height = 13
      Caption = 'Servicio : '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label13: TLabel
      Left = 299
      Top = 59
      Width = 10
      Height = 29
      Caption = '*'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -24
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Label12: TLabel
      Left = 63
      Top = 102
      Width = 39
      Height = 13
      Caption = 'Fecha : '
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object Label15: TLabel
      Left = 299
      Top = 93
      Width = 10
      Height = 29
      Caption = '*'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -24
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Label2: TLabel
      Left = 55
      Top = 33
      Width = 46
      Height = 13
      Caption = 'Tecnico : '
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label11: TLabel
      Left = 299
      Top = 23
      Width = 10
      Height = 29
      Caption = '*'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -24
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Edit_Observaciones_de_Servicio: TEdit
      Left = 104
      Top = 198
      Width = 193
      Height = 21
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
    end
    object Edit_Grantia_Dias: TJvSpinEdit
      Left = 104
      Top = 166
      Width = 49
      Height = 21
      CheckMinValue = True
      ButtonKind = bkStandard
      Decimal = 0
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
    object ComboBox_Moneda1: TComboBox
      Left = 249
      Top = 132
      Width = 48
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      Text = 'USD'
      OnChange = ComboBox_Moneda1Change
      OnKeyPress = ComboBox_Moneda1KeyPress
      Items.Strings = (
        'CUP'
        'USD')
    end
    object Edit_Precio_Servicio: TJvSpinEdit
      Left = 104
      Top = 132
      Width = 139
      Height = 21
      CheckMinValue = True
      ButtonKind = bkStandard
      Decimal = 5
      ValueType = vtFloat
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object ComboBox_Servicio: TComboBox
      Left = 104
      Top = 64
      Width = 193
      Height = 21
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object Edit_Fecha_Servicio: TDateTimePicker
      Left = 104
      Top = 98
      Width = 193
      Height = 21
      Date = 42210.000000000000000000
      Time = 0.373962048608518700
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object ComboBox_Tecnico: TComboBox
      Left = 104
      Top = 29
      Width = 193
      Height = 21
      CharCase = ecUpperCase
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
    end
  end
  object GroupBox1: TGroupBox
    Left = 352
    Top = 35
    Width = 281
    Height = 62
    Caption = 
      '                               Datos del  Cliente               ' +
      '         '
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    object Label5: TLabel
      Left = 259
      Top = 20
      Width = 10
      Height = 29
      Caption = '*'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -24
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 12
      Top = 30
      Width = 98
      Height = 13
      Caption = 'Nombre del Cliente : '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object ComboBox_Cliente_Nombre: TComboBox
      Left = 114
      Top = 25
      Width = 143
      Height = 21
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
  end
  object GroupBox2: TGroupBox
    Left = 352
    Top = 103
    Width = 281
    Height = 85
    Caption = 
      '                    Estado Actual del Servicio                  ' +
      ' '
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    object Label22: TLabel
      Left = 51
      Top = 25
      Width = 75
      Height = 13
      Caption = 'Estado Actual : '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label_Ganancias_Serv: TLabel
      Left = 50
      Top = 56
      Width = 60
      Height = 13
      Alignment = taRightJustify
      Caption = 'Ganancias : '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object SwitchEstadoServicio: TToggleSwitch
      Left = 132
      Top = 21
      Width = 125
      Height = 20
      DoubleBuffered = False
      FrameColor = clHotLight
      ParentDoubleBuffered = False
      StateCaptions.CaptionOn = 'Devuelto SI'
      StateCaptions.CaptionOff = 'Devuelto NO'
      TabOrder = 0
      ThumbColor = clHighlight
      ThumbWidth = 20
    end
    object ComboBox_Ganancias_Serv: TComboBox
      Left = 114
      Top = 52
      Width = 143
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnChange = ComboBox_Ganancias_ServChange
      OnKeyPress = ComboBox_Ganancias_ServKeyPress
      Items.Strings = (
        'Sin Repartir'
        'Repartidas'
        'Retenidas')
    end
  end
  object ButtonUpdateComboBox: TButton
    Left = 241
    Top = 4
    Width = 193
    Height = 25
    Caption = 'ButtonUpdateComboBox'
    TabOrder = 4
    Visible = False
    OnClick = ButtonUpdateComboBoxClick
  end
  object ButtonObtenerDatos: TButton
    Left = 259
    Top = 35
    Width = 175
    Height = 25
    Caption = 'ButtonObtenerDatos'
    TabOrder = 5
    Visible = False
    OnClick = ButtonObtenerDatosClick
  end
end
