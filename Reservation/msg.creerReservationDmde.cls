Class msg.creerReservationDmde Extends (Ens.Request, %JSON.Adaptor)
{

Property categorie As %String;

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
<Value name="4">
<Value>categorie</Value>
</Value>
</Data>
<DefaultData>creerRéservationDmdeDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
