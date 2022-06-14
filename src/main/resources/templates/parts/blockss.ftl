<#macro pager url page>
    <#if page.getTotalPages() gt 7>
        <#assign
        totalPages=page.getTotalPages()
        pageNumber=page.getNumber()+1
        head=(pageNumber>4)?then([1,-1],[1,2,3])
        tail=(pageNumber < totalPages-3)?then([-1,totalPages],[totalPages-2,totalPages-1,totalPages])
        bodyBefore=(pageNumber > 4 && pageNumber < totalPages-1)?then([pageNumber-2,pageNumber-1],[])
        bodyAfter=(pageNumber > 2 && pageNumber < totalPages-3)?then([pageNumber+1,pageNumber+2 ],[])
        body=head+bodyBefore+(pageNumber > 3 && pageNumber < totalPages-2)?then([pageNumber],[])+bodyAfter+tail
        >
    <#else>
        <#assign
        body=1..page.getTotalPages()>
    </#if>
    <style>.page-link{text-decoration: none}</style>
    <ul class="pagination">
        <li class="page-item disabled">
            <a class="page-link" href="#" tabindex="-1" style="text-decoration: none;color: #868e96!important;">Страницы</a>
        </li>
        <#if page.getNumber()==0>
            <li class="page-item disabled">
                <a class="page-link" href="#"><span class="fa fa-chevron-left" aria-hidden="true" style="color: #4285f4;"></span></a>
            </li>
        <#else>
            <li class="page-item">
                <a class="page-link waves-effect waves-effect" href="${url}?page=${page.getNumber()-1}">
                    <span class="fa fa-chevron-left" aria-hidden="true" style="color: #4285f4;"></span>
                </a>
            </li>
        </#if>

        <#list body as p>
            <#if (p-1)==page.getNumber()>
                <li class="page-item active">
                    <a class="page-link" href="#" tabindex="-1">${p}</a>
                </li>
            <#elseif p==-1>
                <li class="page-item disabled">
                    <a class="page-link" href="#" tabindex="-1">...</a>
                </li>
            <#else>
                <#if p!=0>
                <li class="page-item">
                    <a class="page-link" href="${url}?page=${p-1}" tabindex="-1">${p}</a>
                </li>
                </#if>
            </#if>
        </#list>

        <#if (page.getNumber()+1) == page.getTotalPages()>
            <li class="page-item disabled">
                <a class="page-link" href="#"><span class="fa fa-chevron-right" aria-hidden="true" style="color: #4285f4;"></span></a>
            </li>
        <#else>
            <li class="page-item">
                <a class="page-link waves-effect waves-effect" href="${url}?page=${page.getNumber()+1}"><span class="fa fa-chevron-right" aria-hidden="true" style="color: #4285f4;"></span></a>
            </li>
        </#if>
    </ul>
</#macro>