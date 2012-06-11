<%inherit file="/base.mako" />

<h1>Professional attendees</h1>

<h2>Fairy Penguin Sponsors</h2>

<table width="100%">
#<tr>
#% for header in c.columns:
#  <th>${ header }</th>
#% endfor
#</tr>

% for (p, r) in c.fairies:
  <tr class="${ loop.cycle('even', 'odd')}">
    <td>${ p.firstname |h} ${ p.lastname |h}</td>
    <td>${ r.company |h}</td>
  </tr>
% endfor
</table>

<h2>Professional</h2>

<table width="100%">
#<tr>
#% for header in c.columns:
#  <th>${ header }</th>
#% endfor
#</tr>

% for (p, r) in c.profs:
  <tr class="${ loop.cycle('even', 'odd')}"
%   if r.type=='Fairy Penguin Sponsor':
      style="font-weight: bold"
%   endif
  >
    <td>${ p.firstname |h} ${ p.lastname |h}</td>
    <td>${ r.company |h}</td>
  </tr>
% endfor
</table>
