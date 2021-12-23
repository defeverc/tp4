/// 
Class Transform.ProcessusCommande Extends Ens.BusinessProcessBPL
{

/// This BPLError block indicates that a BPL Diagram 
/// containing errors was saved.
/// To correct this class:
/// * Open it using the Studio BPL Editor,
/// * Correct the errors, and,
/// * Save the diagram.
/// Do not edit the contents of the BPLError block
/// or you may lose your diagram.
XData BPLError
{
<diagram Name="Transform.ProcessusCommande" Width="2000" Height="2000" Layout="automatic" Language="objectscript" Request="Ens.Request" Response="Ens.Response" LastModified="" Version="" Includes="" ShowAnnotation="0">
<shape _index="0" _Type="start" Name="" xPos="627" yPos="126" />
<shape _index="1" _Type="end" Name="" xPos="590" yPos="1094" />
<shape _index="2" _Type="call" Name="ConsulterCatalogue" xPos="632" yPos="259" Async="1" Target="Catalogue" Timeout="" >
<request type='msg.consulterVoitureCatalogueDmde' />
<response type='Ens.Response' />
</shape>
<shape _index="3" _Type="if" Name="VerifCatalogue" xPos="616" yPos="356" Condition="" />
<shape _index="4" _Type="join" Name="" xPos="588" yPos="992" />
<shape _index="5" _Type="call" Name="DemandePlaque" xPos="830" yPos="500" Async="1" Target="BO.Plaque" Timeout="" >
<request type='msg.generationPlaqueDmde' />
<response type='Ens.Response' />
</shape>
<shape _index="6" _Type="transform" Name="CatalogueToCommande" xPos="829" yPos="633" Class="Transform.CatalogueToVoiture" Source="request" Target="response" />
<shape _index="7" _Type="call" Name="AddVoitureToBase" xPos="826" yPos="742" Async="1" Target="Voiture" Timeout="" >
<request type='msg.creerVoitureDmde' />
<response type='Ens.Response' />
</shape>
<shape _index="8" _Type="call" Name="AddVoitureFile" xPos="825" yPos="865" Async="1" Target="BO.VoitureFichier" Timeout="" >
<request type='msg.pushVoitureFileDmde' />
<response type='Ens.Response' />
</shape>
<connection _Type="connector" Name="" from="0" to="2"/>
<connection _Type="connector" Name="" from="2" to="3"/>
<connection _Type="connector" Name="false" from="3" to="4" ConnectType="branch"/>
<connection _Type="connector" Name="true" from="3" to="5" ConnectType="branch"/>
<connection _Type="connector" Name="" from="4" to="1"/>
<connection _Type="connector" Name="" from="5" to="6"/>
<connection _Type="connector" Name="" from="6" to="7"/>
<connection _Type="connector" Name="" from="7" to="8"/>
<connection _Type="connector" Name="" from="8" to="4"/>
</diagram>
}

}
