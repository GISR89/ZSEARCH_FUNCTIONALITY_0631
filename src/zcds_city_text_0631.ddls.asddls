@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Funcionalidad de búsqueda'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #A,
    sizeCategory: #S,
    dataClass: #MASTER
}
@ObjectModel.dataCategory: #TEXT
@ObjectModel.supportedCapabilities: [ #SQL_DATA_SOURCE,
                                      #CDS_MODELING_DATA_SOURCE,
                                      #CDS_MODELING_ASSOCIATION_TARGET]
@Search.searchable: true
@VDM.viewType: #BASIC
define view entity ZCDS_CITY_TEXT_0631
  as select from zcity_texts_0631
   association [1..1] to ZCDS_CITY_ASSOC_0631 as _Text on _Text.city = $projection.City
{
  key airport_id as AirportId,
  @Search.defaultSearchElement: true
      city       as City,
      _Text
}
