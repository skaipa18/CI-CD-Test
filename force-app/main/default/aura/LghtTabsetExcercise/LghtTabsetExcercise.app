<aura:application extends="force:slds">
	
    <aura:attribute name = "SelectedTabId" type = "string" default="1"/>
    
    <lightning:tabset selectedTabId = "{!v.SelectedTabId}" >
    
        <lightning:tab label = "Ex1" id = "1">
            <c:LexPratiseCompEx1/>
        </lightning:tab>
        <lightning:tab label = "Ex2" id = "2">
            <c:LghtStatusBarComponent/>
        </lightning:tab>
        <lightning:tab label = "Ex3" id = "3">
            <c:DisplayWrapperDataComp/>
        </lightning:tab>
    
    
    </lightning:tabset>
    
    
</aura:application>