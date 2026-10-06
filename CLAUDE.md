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
- `scripts/page.sh N` renders PDF page N to a small grayscale PNG and prints
  its path.
- `.claude/skills/extract-next/` is the `/extract-next` command that runs one
  extraction session.

## Rule entry format

Each reference file is a list of entries in this shape:

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
