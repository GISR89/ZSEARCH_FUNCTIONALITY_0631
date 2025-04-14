@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Funcionalidad de búsqueda'
@Search.searchable: true
define root view entity zcds_proj_airpot_0631
  provider contract transactional_query
  as projection on zcds_root_airpot_0631
{
  key AirportId,
      Name,
      @ObjectModel.text.element: [ 'City' ]
      @Search.defaultSearchElement: true
      @Consumption.valueHelpDefinition: [{ entity: { name:'ZCDS_CITY_ASSOC_0631',
                                                     element : 'City' },
                                                     useForValidation: true }]
      City,
      Country,
      /* Associations */
      _Text
}
