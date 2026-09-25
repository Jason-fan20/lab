# Duke Medical Imaging & AI Jiashuo Lab — website

Single-page static site. No Jekyll, no Ruby, no build step: `index.html` is the whole site.
Structure modeled on new-AP lab pages in clinical departments
(https://bbbbbbzhou.github.io/ — Radiology, Northwestern; https://seyiqi.github.io/ — Radiology, NYU).

## Publish it

Project-site layout (your choice): the page lives at `https://<your-username>.github.io/lab/`.

    gh auth login          # GitHub.com → HTTPS → login with a web browser (one time)
    ./deploy.sh lab        # creates the repo, pushes, switches Pages on

Other targets, same script:

    ./deploy.sh                                       # https://<user>.github.io/
    ./deploy.sh duke-miai-lab/duke-miai-lab.github.io # an organization site

Relative paths only are used in `index.html`, so it works from a subdirectory without changes.

## Worth doing next

- **Verify the publication list.** Seven entries were pulled from OpenAlex + Semantic Scholar by
  co-author network (the Carin/Cheng 2025 preprint is what identified the right "Jiashuo Fan").
  Three papers under the same name were deliberately LEFT OUT as a different person:
  the two *Gels* hydrogel-bioprinting papers, and the COVID-19 news-media / social-anxiety papers.
  Add anything I missed; venues for the two 2025 arXiv preprints should be updated once accepted.
- **Photo instead of the cat**: drop a 4:5 image at `assets/photo.jpg`, replace the
  `<svg class="portrait">…</svg>` block with `<img class="portrait" src="assets/photo.jpg" alt="Jiashuo Fan">`,
  and delete the `.portrait-note` paragraph.
- **Department**: the masthead and rail say the neutral "Duke University School of Medicine".
  Once you are sure of the official wording ("Department of Radiology", "Department of Biomedical
  Engineering", a secondary appointment), put it in both places.
- **Link it from Duke.** Add the URL to your Scholars@Duke profile and ask the department to link it.
  An inbound link from a duke.edu domain is what makes a github.io page read as the official lab page.
- The recruiting text and email template in "Join the lab" are promises you are making. Read them
  once and edit anything you would not actually do.

## Editing later

- **News item**: copy an `<li>` in `<ul class="news">`, newest at the top.
- **Lab member** (once you have one): add a `#people` section — the `.roles` grid + `.role` cards
  already styled work for people as well as positions; add `<a href="#people">People</a>` to the nav.
- **Close recruiting**: edit the `.status` block in the rail and the `Openings` row in the meta card.
