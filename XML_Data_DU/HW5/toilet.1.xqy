(: Paul Pearson :)
(: toilet.1.xqy :)

xquery version "3.0" encoding "utf-8";
declare default element namespace "http://toiletmap.gov.au/";

<Toilets
xmlns="http://toiletmap.gov.au/"
xmlns:xsd="http://www.w3.org/2001/XMLSchema-datatypes"
xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
xmlns:xs="http://www.w3.org/2001/XMLSchema">

<output:serialization-parameters xmlns:output="http://www.w3.org/2010/xslt-xquery-serialization">
<output:indent value="yes"/>
</output:serialization-parameters>

{
for $Toilets in doc("ToiletmapExport.xml")//ToiletDetails
where $Toilets/Town="Narrandera"
return
(
<Toilet>
<Latitude>
{ string($Toilets/@Latitude) }
</Latitude>
<Longitude>
{ string($Toilets/@Longitude) }
</Longitude>
{$Toilets/Town}
{$Toilets/State}
<Country>Australia</Country>
{$Toilets/Name}
{$Toilets/GeneralDetails/FacilityType}
</Toilet>,
"&#xa;")
}

</Toilets>



