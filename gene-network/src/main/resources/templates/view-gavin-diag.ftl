<#include "molgenis-header.ftl">
<#include "molgenis-footer.ftl">
<#assign css=[]>
<#assign js=["gn.js"]>
<@header css js/>

<div class="row" id="gavin-view">
    <div class="col-md-12">
        <div class="panel panel-primary" id="instant-import">
            <div class="panel-heading">
                <h4 class="panel-title">
                    Variant interpretation and prioritization
                </h4>
            </div>
        <#--noinspection FtlReferencesInspection-->
        <#if annotatorsWithMissingResources?has_content>
            <div class="panel-body">
                <p>The following annotators have missing resources:</p>
                <ul>
                <#--noinspection FtlReferencesInspection-->
                    <#list annotatorsWithMissingResources as ann>
                        <li>${ann}
                            <span id="${ann}-settings-btn" class="glyphicon glyphicon-cog" aria-hidden="true"
                                  style="cursor: pointer; margin-left: 5px;" data-name="${ann}"></span>
                        </li></#list>
                </ul>
            </div>
            <div id="form"></div>
        <#else>
            <div class="panel-body">
                <ul>
                    <li>Upload file to annotate with GAVIN</li>
                    <li>Your results <strong>will</strong> be stored in the database</li>
                    <li>After annotation you can prioritize your variants using HPO phenotypes and GeneNetwork scores</li>
                </ul>
                <div id="instant-import-alert"></div>
                <#if content?has_content>
                    <div class="row">
                        <div class="col-md-12">
                        <#-- Do *not* HTML escape content -->
			                ${content}
                        </div>
                    </div>
                </#if>

                <div id="gavin-form"></div>

                <p>Skip annotating and start scoring variants with GeneNetwork <a href="/menu/main/gene-network/patients">here</a></p>
            </div>
        </#if>
        </div>
    </div>
</div>
<@footer/>