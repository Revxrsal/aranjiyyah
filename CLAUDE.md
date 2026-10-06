# Aranjiyyah

Workspace for the `aranjiyyah` skill, which detects عرنجية (Arabic shaped by
English/French: calqued syntax, morphology, word senses, collocations and
styles) and offers natural Arabic rewrites.

The rules are distilled, page by page, from أحمد الغامدي، «العرنجية: بلسان عربي
هجين». The book is a scanned PDF (no text layer) at `book/aranjiyyah-al-ghamdi.pdf`.

## Layout

- `aranjiyyah/` is the skill itself (`SKILL.md` + `references/`). Only this
  folder gets packaged or symlinked into `~/.claude/skills/`.
- `extraction/state.json` holds the resume point: `next_page`, the per-run
  page count, and a `carry` note for a pattern cut off at a page break.
- `extraction/log.md` gets one line per processed page. Append only.
- `extraction/candidates.md` holds the raw phase 1 output. Append only.
- `extraction/decisions.md` holds the user's rulings, which every build applies
  over the book and Claude's judgment. Questions awaiting an answer sit
  under its **Pending** heading.
- `scripts/page.sh N` renders PDF page N to a small grayscale PNG and prints
  its path.
- `.claude/skills/extract-next/` is the `/extract-next` command that runs one
  phase 1 session.
- `.claude/skills/build-skill/` is the `/build-skill` command that runs phase 2.
  It regenerates `aranjiyyah/references/` from the candidates, so make fixes
  in `candidates.md` (or the command), not by hand in the references.

## Phases

This is a one-time pass over a static book. Quality of the final skill is
what matters, not the speed or repeatability of the extraction.

1. **Collect** (`/extract-next`, PDF pages 1-215). Read every page and record
   anything that could become a rule in `candidates.md`. Favor recall.
2. **Edit** (`/build-skill`), once collection is finished, or earlier as a
   preview. With the whole book in view, merge duplicates and repeated examples, generalize related candidates
   into broader patterns, drop rhetoric that never became a concrete rule,
   and use the `CRITERION` and `ACCEPTED` candidates to set judgment rules
   and avoid false positives. Write the result to `aranjiyyah/references/`
   in the entry format below, and move the most important criteria into
   `aranjiyyah/SKILL.md`.
3. **Evaluate.** Test the finished skill against plain Claude on real
   Arabic texts and revise it.

## Rule entry format

Phase 2 writes each reference file as a list of entries in this shape:

```
### SYN-012 · يلعب دورًا
- **العلامة:** يلعب/لعب + دورًا
- **الأصل:** play a role
- ✗ يلعب الإعلام دورًا كبيرًا في … → ✓ للإعلام أثر كبير في … / يُسهم الإعلام إسهامًا كبيرًا في …
- **الحكم:** 🔴 مجاز مترجم لا تعرفه العربية
- **المصدر:** ص 120
```

ID prefixes: `SYN` syntax, `MOR` morphology, `VOC` vocabulary, `USE` usage,
`STY` style, `REM` remedies. Number each prefix sequentially.

`العلامة` is the grep-able cue, the literal words to look for in a text.
Keep it short and concrete.

## Distill, don't transcribe

Entries record the **pattern** in our own words plus short example pairs. Do
not copy the author's paragraphs, arguments or long quotations into the
repo. A one-line paraphrase of why the pattern is foreign is enough, plus the
printed page number so a reader can go back to the book.
