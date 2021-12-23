Class msg.verifDateRpse Extends msg.basic.reponse
{

Property voiture As data.Voiture;

Storage Default
{
<Data name="verifDateRpseDefaultData">
<Subscript>"verifDateRpse"</Subscript>
<Value name="1">
<Value>voiture</Value>
</Value>
</Data>
<DefaultData>verifDateRpseDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
