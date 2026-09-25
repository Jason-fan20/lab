# Jiashuo Fan — personal academic page

Single-page static site. No build step: `index.html` is the whole site.
Live at https://jason-fan20.github.io/lab/

## What is on it

- About, three research threads, seven publications, contact.
- Publications were verified against OpenAlex and Semantic Scholar by co-author
  network. At least three researchers publish as "Jiashuo Fan"; the two *Gels*
  hydrogel-bioprinting papers, the COVID-19 news-media paper and the social-anxiety
  paper belong to other people and are deliberately excluded.
- The portrait is a vector illustration, not a photograph. To use a photo: put a 4:5
  image at `assets/photo.jpg` and replace the `<svg class="portrait">…</svg>` block
  with `<img class="portrait" src="assets/photo.jpg" alt="Jiashuo Fan">`.

Role and department text follows the Scholars@Duke record
(https://scholars.duke.edu/person/jiashuo.fan). If that record changes, update the
masthead, the rail meta card, the About section and the footer to match it.

## Publish changes

    git add -A && git commit -m "…" && git push      # live in ~1 minute

`deploy.sh` is only needed for creating a new repo / target:

    ./deploy.sh lab                                  # <user>.github.io/lab/
    ./deploy.sh duke-miai-lab/duke-miai-lab.github.io  # an organization site
