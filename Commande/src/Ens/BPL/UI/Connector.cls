/* Copyright (c) 2021 by InterSystems Corporation.
   Cambridge, Massachusetts, U.S.A.  All rights reserved.
   Confidential property of InterSystems Corporation. */

Class Ens.BPL.UI.Connector Extends %RegisteredObject [ ClassType = "", ProcedureBlock, System = 4 ]
{

/// Type of this connector
Property Type As %String(MAXLEN = 50, VALUELIST = ",connector") [ InitialExpression = "connector" ];

/// ConnectionType of this connector ("" or "case" or "branch" or "thread")
Property ConnectType As %String(MAXLEN = 50, VALUELIST = ",case,branch,thread");

/// Name of this shape
Property Name As %String(MAXLEN = 50);

/// This holds the 'disabled' status for the shape.
/// (this is only used for 'thread' connections)
Property Disabled As %Boolean;

/// Condition for case connections
Property Condition As %String(MAXLEN = 255);

/// Shape this connection comes from (an output)
Property FromShape As Shape;

/// Shape this connection goes to (an input)
Property ToShape As Shape;

/// Serialize this connector for use by the editor.
Method Serialize(pState As %CharacterStream)
{
	Do pState.Write("<connection _Type=""" _ ..Type _ """ Name=""" _ ##class(Ens.BPL.UI.Diagram).EscapeForSVG(..Name) _ """ from=""" _ ..FromShape.Index _ """ to=""" _ ..ToShape.Index _ """")
	If (..ConnectType = "case") {
		Do pState.Write(" ConnectType=""case"" Condition=""" _ ##class(Ens.BPL.UI.Diagram).EscapeForSVG(..Condition) _ """")
	}
	ElseIf (..ConnectType = "branch") {
		Do pState.Write(" ConnectType=""branch""")
	}
	ElseIf (..ConnectType = "thread") {
		Do pState.Write(" ConnectType=""thread""")
	}
	ElseIf (..ConnectType = "goto") {
		Do pState.Write(" ConnectType=""goto""")
	}

	If (..Disabled) {
		Do pState.Write(" Disabled=""true""")
	}
	Do pState.WriteLine("/>")
}

}
