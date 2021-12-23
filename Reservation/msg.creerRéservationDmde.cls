Import data

Class msg.creerRéservationDmde Extends (Ens.Request, %JSON.Adaptor)
{

Property voiture As Voiture;

Property dateDebut As %String;

Property dateFin As %String;

Storage Default
{
<Data name="creerRéservationDmdeDefaultData">
<Subscript>"creerRéservationDmde"</Subscript>
<Value name="1">
<Value>voiture</Value>
</Value>
<Value name="2">
<Value>dateDebut</Value>
</Value>
<Value name="3">
<Value>dateFin</Value>
</Value>
</Data>
<DefaultData>creerRéservationDmdeDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
