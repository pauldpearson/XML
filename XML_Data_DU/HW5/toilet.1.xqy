(: Paul Pearson :)
(: toilet.1.xqy :)

declare namespace tm="http://toiletmap.gov.au/";
declare copy-namespaces no-preserve, no-inherit ;

let $doc := doc('ToiletmapExport.xml')//tm:ToiletDetails

let $unisexBabyNokey := $doc[tm:AccessibilityDetails/tm:AccessibleUnisex="true"]
 [tm:GeneralDetails/tm:KeyRequired="false"]
 [tm:Features/tm:BabyChange="true"]
 [year-from-date(@LastUpdateDate) >= 2013]

return <Toilets>
{
 for $x in $unisexBabyNokey
 return <latitude>{string($x/@Latitude)}</latitude>
}
</Toilets>
