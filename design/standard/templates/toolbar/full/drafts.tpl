{* DO NOT EDIT THIS FILE! Use an override template instead. *}
<div class="toolbox">
    <div class="toolbox-design">
    <h2>{"My drafts"|i18n("design/shop/layout")}</h2>
        <div class="toolbox-content">
        {let draft_list=fetch('content','draft_version_list',hash( limit, 10, offset, 0) )}
            <ul>
            {section var=draft loop=$draft_list}
                <li><a href={concat("/content/edit/", $draft.contentobject_id, "/", $draft.version)|ezurl}>{$draft.name}</a>
            {/section}
            </ul>
        {/let}
        </div>
    </div>
</div>