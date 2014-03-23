---
layout: page_nc
title: A Blog About All Things IT Related
tagline: Supporting tagline
---
{% include JB/setup %}

<ul class="posts">

  {% for post in site.posts limit 4 %}
    <li><span>{{ post.date | date_to_string }} &raquo; <a href="{{ BASE_PATH }}{{ post.url }}">{{ post.title }}</a></span></li>
        {{ post.content | strip_html | truncatewords:50}}<br>
            <a href="{{ post.url }}">Read more...</a><br><br>
  {% endfor %}
</ul>



