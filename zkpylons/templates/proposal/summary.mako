<%inherit file="/base.mako" />

<script language="Javascript">
<!--
function toggleDiv(id,flagit) {
    if (flagit=="1"){
        if (document.layers) document.layers[''+id+''].visibility = "show"
        else if (document.all) document.all[''+id+''].style.visibility = "visible"
        else if (document.getElementById) document.getElementById(''+id+'').style.visibility = "visible"
    }
    else
        if (flagit=="0"){
            if (document.layers) document.layers[''+id+''].visibility = "hide"
            else if (document.all) document.all[''+id+''].style.visibility = "hidden"
            else if (document.getElementById) document.getElementById(''+id+'').style.visibility = "hidden"
        }
}
//-->
</script>
<style type="text/css">
.commentdiv {
    background-color:#F9F9F9;
    border:1px dashed Blue;
    padding:4px;
    position:absolute;
    visibility:hidden;
    width:200px;
    font-family:Verdana,Arial,Helvetica,san-serif;
    font-size:8pt;
}

.biodiv {
    background-color:#F9F9F9;
    border:1px dashed Blue;
    padding:4px;
    position:absolute;
    visibility:hidden;
    width:500px;
    font-family:Verdana,Arial,Helvetica,san-serif;
    font-size:8pt;
}

</style>


<h2>Review Summary</h2>


<p>
<ul>
<li>Mouse over reviewers name for their comments
<li>Mouse over scores for score from each reviewer
<li>Mouse over reviewer name for Bio and Experience
<li>Mouse over stream for Stream Stats
</ul>


<% import re %>
% for pt in c.proposal_types:
    <% collection = getattr(c, '%s_collection' % pt.name) %>
    <% i = 1 %>

    <% simple_title = re.compile('([^a-zA-Z0-9])').sub('', pt.name) %>

<a name="${ simple_title }"></a>
<h2>${ pt.name }s </h2>

<table id="${ pt.name }">
<tr>
<th>&nbsp;</th>
<th>#</th>
<th>Proposal</th>
<th>Submitters</th>
<th>Avg Score</th>
<th>Reviewers</th>
<th>Winning Stream</th>
</tr>

% for proposal in collection:
%    if not proposal.reviews:
        <% continue %>
%    endif

<tr class="${ loop.cycle('even', 'odd') }">

<td>${ i }</td>
<% i = i + 1 %>


<td>
<div onMouseOver="toggleDiv('${ "assistance%s" % proposal.id | h}',1)" onMouseOut="toggleDiv('${ "assistance%s" % proposal.id | h}',0)">
${ h.link_to(proposal.id, url=h.url_for(controller='proposal', action='review', id=proposal.id)) }
</div>

</td>




<td>
<div onMouseOver="toggleDiv('${ "proposal%s" % proposal.id | h}',1)" onMouseOut="toggleDiv('${ "proposal%s" % proposal.id | h}',0)">
${ h.link_to(proposal.title, url=h.url_for(controller='proposal', action='review', id=proposal.id)) }
</div>
<div id="${ "proposal%s" % proposal.id }" class="biodiv"><strong>Abstract:</strong><p>${ h.line_break(proposal.abstract) |n }</p></pre></div>
</td>

<td>
%       for person in proposal.people:
<div onMouseOver="toggleDiv('${ "bio%s" % person.id | h}',1)" onMouseOut="toggleDiv('${ "bio%s" % person.id | h}',0)">
${ person.firstname }
${ person.lastname }, 
</div>
<div id="${ "bio%s" % person.id | h}" class="biodiv">${ person.firstname + " " + person.lastname |h}<br><strong>Bio:</strong><p>${ person.bio |h }</p><strong>Experience:</strong><p> ${person.experience |h}</p></div>
%       endfor
</td>

<%
        streams = {}
        total_score = 0
        num_reviewers = 0
        scores = ""
        for review in proposal.reviews:
            if review.score is not None:
                num_reviewers += 1
                total_score += review.score
                scores += review.reviewer.firstname + " " + review.reviewer.lastname + ": %s " % review.score + "<br>"
            if review.stream is not None:
                if review.stream.name in streams:
                    streams[review.stream.name] += 1
                else:
                    streams[review.stream.name] = 1

        if num_reviewers == 0:
            avg_score = "No Reviews"
        else:
            avg_score = total_score*1.0/num_reviewers
%>
<td>
<div onMouseOver="toggleDiv('${ "score%s" % proposal.id | h}',1)" onMouseOut="toggleDiv('${ "score%s" % proposal.id | h}',0)">
${ avg_score |h }
</div>
<div id="${ "score%s" % proposal.id | h}" class="commentdiv">${ scores | n}</div>

</td>




<td>
%       for review in proposal.reviews:
<!--
link_to doesn't let us pass javascript tags
-->
%           if review.comment:
<a href="/review/${review.id}" onMouseOver="toggleDiv('${ "%s%s" % (review.id, review.reviewer.id) | h}',1)" onMouseOut="toggleDiv('${ "%s%s" % (review.id, review.reviewer.id) | h}',0)">${ review.reviewer.firstname + " " + review.reviewer.lastname | h}</a>, 
<div id="${ "%s%s" % (review.id, review.reviewer.id) | h}" class="commentdiv">${ review.reviewer.firstname + " " + review.reviewer.lastname + " Comments: " + review.comment + review.private_comment |h }</div>
%           else:
${ h.link_to(review.reviewer.firstname + " " + review.reviewer.lastname, url=h.url_for(controller='review', action='view', id=review.id)) }, 
%           endif
%       endfor
</td>

<%
        stream = ""
        stream_stats = ""
        stream_score = 0
        for s in streams:
            stream_stats += s + ": %s<br>" % streams[s]
            if streams[s] > stream_score:
                stream = s
                stream_score = streams[s]
            # endif
        endfor
%>

<td>
<div onMouseOver="toggleDiv('${ "stream%s" % proposal.id | h}',1)" onMouseOut="toggleDiv('${ "stream%s" % proposal.id | h}',0)">
${ stream } (${ stream_score })
</div>
<div id="${ "stream%s" % proposal.id | h}" class="biodiv">${ stream_stats | n}</div>
</td>

</tr>

%   endfor
</table>
% endfor #proposal_tyes


<%def name="title()" >
Reviews - ${ parent.title() }
</%def>

<%def name="contents()">
<%
  menu = ''

  import re

  for pt in c.proposal_types:
    simple_title = re.compile('([^a-zA-Z0-9])').sub('', pt.name)
    menu += '<li><a href="#' + simple_title + '">' + pt.name + ' proposals</a></li>'
  return menu
%>
</%def>

