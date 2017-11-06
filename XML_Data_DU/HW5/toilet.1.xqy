(: Paul Pearson :)
(: toilet.1.xqy :)

declare namespace tm="http://toiletmap.gov.au/";
declare copy-namespaces no-preserve, no-inherit ;

let $doc := doc('ToiletmapExport.xml')//tm:ToiletDetails

return <Toilets>
{
for $x in $doc
return <latitude>{string($x/@Latitude)}</latitude>
}
{
for $x in $doc
return <longitude>{string($x/@Longitude)}</longitude>
}
{
for $x in $doc
return <town>{string($x/Town)}</town>
}
</Toilets>



