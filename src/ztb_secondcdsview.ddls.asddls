@AbapCatalog.sqlViewName: 'ZTBSECONDCDS'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Capex Drilldown'
@Analytics.dataCategory: #CUBE


@VDM.viewType: #BASIC


define view ZTBSECONDCDSViEW as select from zlk_capex {


@Semantics.text: true
key zlk_capex.z_period as Period, 
@Semantics.text: true
key zlk_capex.z_category as Category,
@Semantics.text: true
key zlk_capex.z_country as Country, 
@Semantics.text: true
key zlk_capex.z_area as Area,
@Semantics.text: true
zlk_capex.z_holding as Holding,
@DefaultAggregation: #SUM
zlk_capex.z_actualinvestment as ActualInvestment,
@DefaultAggregation: #SUM
zlk_capex.z_planinvestment as PlanInvestment,
@DefaultAggregation: #SUM
zlk_capex.z_roi as ROI,
@DefaultAggregation: #SUM
zlk_capex.z_revenue as Revenue

//Changes to my CDS View for Arndt
}
