---
layout: default
title: Xavier Belanche

---

# Entradas

{% for post in site.posts %}
* {{ post.date | date_to_string }} [{{ post.title }}]({{ post.url }})
{% endfor %}

