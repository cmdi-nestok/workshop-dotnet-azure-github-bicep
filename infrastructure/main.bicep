@allowed(['dev', 'prod'])
param environment string

targetScope = 'resourceGroup'

var location = 'centralus'

var myName = 'cmdi-nestok'
var appNameWithEnvironment = 'workshop-dnazghbicep-${myName}-${environment}'

module appService 'appservice.bicep' = {
  name: 'appService'
  params: {
    appName: appNameWithEnvironment
    location: location
    environment: environment
  }
}
