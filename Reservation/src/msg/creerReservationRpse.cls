Class msg.creerReservationRpse Extends msg.basic.reponse
{

Property voiture As data.Voiture;

Storage Default
{
<Data name="creerReservationRpseDefaultData">
<Subscript>"creerReservationRpse"</Subscript>
<Value name="1">
<Value>voiture</Value>
</Value>
</Data>
<DefaultData>creerReservationRpseDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
