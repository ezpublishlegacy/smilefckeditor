<div class="content-navigation-childlist">
    <table class="list" cellspacing="0">
    <tr>
        {* Remove column *}
        <th class="remove"><img src={'toggle-button-16x16.gif'|ezimage} alt="{'Invert selection.'|i18n( 'design/admin/node/view/full' )}" title="{'Invert selection.'|i18n( 'design/admin/node/view/full' )}" onclick="ezjs_toggleCheckboxes( document.children, 'DeleteIDArray[]' ); return false;" /></th>

        {* Name column *}
        <th class="name">{'Name'|i18n( 'design/admin/node/view/full' )}</th>

        {* Hidden/Invisible column *}
        <th class="hidden_invisible">{'Visibility'|i18n( 'design/admin/node/view/full' )}</th>

        {* Class type column *}
        <th class="class">{'Type'|i18n( 'design/admin/node/view/full' )}</th>

        {* Modifier column *}
        <th class="modifier">{'Modifier'|i18n( 'design/admin/node/view/full' )}</th>

        {* Modified column *}
        <th class="modified">{'Modified'|i18n( 'design/admin/node/view/full' )}</th>

        {* Section column *}
        <th class="section">{'Section'|i18n( 'design/admin/node/view/full' )}</th>
    </tr>
<form name="fck">
    {section var=Nodes loop=$children sequence=array( bglight, bgdark )}
    {let child_name=$Nodes.item.name|wash
         node_name=$node.name}

        <tr class="{$Nodes.sequence}">

        {* Radio selector *}
        <td>
            <input 	{if eq($Nodes.item.class_name, 'R�pertoire')}
            			disabled=true
            		{/if}
            		{if ne($Nodes.item.class_name, 'Image')}
            			title="S�lectionnez le m�dia � lier"
            		{else}
            			title="S�lectionnez le m�dia � lier."
            			imgwidth="{$Nodes.item.data_map.image.content.original.width}"
            			imgheight="{$Nodes.item.data_map.image.content.original.height}"
            		{/if}
            		value="smileobject://{$Nodes.item.node_id}"
            type="radio" name="lien" value="smileobject://{$Nodes.item.node_id}" />
        </td>

        {* Name *}
        <td>{$Nodes.item.class_identifier|class_icon( small, '[%classname]'|i18n( 'design/admin/node/view/thumbnail',, hash( '%classname', $Nodes.item.name ) ) )}
        {if ne($Nodes.item.children_count,0)}
        	<a href="{''|ezurl(no)}/{concat("(dispnodeid)/",$Nodes.item.node_id)}">
        {/if}
         	{$Nodes.item.name}</a>
         </td>

        {* Visibility. *}
        <td class="nowrap">{$Nodes.item.hidden_status_string}</td>

        {* Class type *}
        <td class="class">{$Nodes.item.class_name|wash}</td>

        {* Modifier *}
        <td class="modifier">{$Nodes.item.object.current.creator.name|wash}</td>

        {* Modified *}
        <td class="modified">{$Nodes.item.object.modified|l10n( shortdatetime )}</td>

        {* Section *}
        <td colspan=4>{let section_object=fetch( section, object, hash( section_id, $Nodes.object.section_id ) )}{section show=$section_object}{$section_object.name|wash}{section-else}<i>{'Unknown'|i18n( 'design/admin/node/view/full' )}</i>{/section}{/let}</td>

   </tr>

	{/let}
	{/section}
</form>
</table>
</div>

