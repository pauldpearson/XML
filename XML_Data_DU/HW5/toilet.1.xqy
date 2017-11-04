declare default element namespace "http://toiletmap.gov.au/";


let $d := doc("ToiletmapExport.xml")//ToiletDetails
return<Toilet>{$d}</Toilet>


(:let $unisexBabyNokey :=:)
(:$doc[AccessibilityDetails/AccessibleUnisex="true"]:)
(:[GenerabilityDetails/KeyRequired="false"][Features/BabyChange="true"]:)
(:[fn:year-from-date(@LastUpdateDate) >= 2011]:)

(:return count($unisexBabyNokey):)
