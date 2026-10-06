---
name: extract-next
description: Process the next few pages of the العرنجية book into aranjiyyah skill rules, saving progress after every page.
argument-hint: "[page count]"
disable-model-invocation: true
---

# Extract the next pages

Run one extraction session. Work one page at a time and save after every
page, so a session can stop at any point and the next one resumes cleanly.

## 1. Load the resume point

Read `extraction/state.json`. Process `$ARGUMENTS` pages if given, otherwise
`pages_per_run`. Stop early when you reach `stop_page`.

Do not read the reference files in full; they grow large. Use `grep` to
check for duplicates and to find the last ID per prefix:
`grep -ho '^### [A-Z]*-[0-9]*' aranjiyyah/references/*.md | sort | tail`.

## 2. For each page

1. Run `scripts/page.sh <next_page>` and Read the PNG it prints.
2. If `carry` is set, finish that pattern using this page first.
3. Decide what the page offers:
   - **Patterns** (a foreign construction, its source, a better Arabic
     form): write entries in the format from `CLAUDE.md`. Put each one in the
     reference file for its category. Use the printed page number
     (PDF page + `printed_page_offset`).
   - **Background only** (history, anecdotes, acknowledgements): add
     nothing to the references. Do note any rule of thumb that would help
     judge borderline cases (for example, when a modern usage is acceptable);
     those go in `remedies.md`.
   - **Chapter start**: record the PDF page under `chapters` in state.
4. Before adding an entry, grep the cue words. If the pattern already
   exists, add the new example pair to that entry instead of duplicating it.
5. If a pattern runs past the bottom of the page, put a one-line note in
   `carry` and finish it on the next page. Otherwise clear `carry`.
6. Append one line to `extraction/log.md`, set `next_page` to the next
   page, then delete the PNG.

Write entries in your own words with short example pairs. Do not transcribe
the book (see `CLAUDE.md`). If a scan is hard to read, say what you could
not read in the log line rather than guessing at Arabic text.

## 3. Wrap up

Commit the changes to state, log and references with a message like
`extract: pdf pages 41-45 (+3 rules)`. Then tell the user, in two or three
lines, how many pages were done, how many rules were added or extended, and
the next page. Suggest `/clear` before the next `/extract-next` so the old
page images drop out of context.
