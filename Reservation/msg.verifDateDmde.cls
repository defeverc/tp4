Class msg.verifDateDmde Extends (Ens.Request, %JSON.Adaptor)
{

Property categorie As %String;

Property dateDebut As %String;

Property dateFin As %String;

Storage Default
{
<Data name="verifDateDmdeDefaultData">
<Subscript>"verifDateDmde"</Subscript>
<Value name="1">
<Value>dateDebut</Value>
</Value>
<Value name="2">
<Value>dateFin</Value>
</Value>
<Value name="3">
<Value>categorie</Value>
</Value>
</Data>
<DefaultData>verifDateDmdeDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
