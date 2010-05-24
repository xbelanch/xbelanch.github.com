---
layout: default
title: Xavier Belanche

---

Índice de contenidos
--------------------

{% for post in site.posts %}
* {{ post.date | date_to_string }} [{{ post.title }}]({{ post.url }})
{% endfor %}

