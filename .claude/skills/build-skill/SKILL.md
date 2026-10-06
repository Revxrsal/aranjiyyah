---
name: build-skill
description: Phase 2. Turn extraction/candidates.md into the final aranjiyyah skill (SKILL.md and references/), with the whole book's candidates in view.
disable-model-invocation: true
---

# Build the skill from the candidates (phase 2: edit)

Phase 1 collected generously, page by page. Your job is the judgment it
couldn't make: with every candidate in view, decide what is a real pattern,
how patterns relate, and how to present them so a model reviewing Arabic text
catches عرنجية without flagging sound Arabic.

## 1. Check the inputs

Read `extraction/state.json`. If `next_page` ≤ `stop_page`, collection is
not finished. Say so, and treat this as a **preview build** of the pages
done so far.

Read `extraction/candidates.md` in full. This is the one place where that
is the point. Read `CLAUDE.md` for the entry format.

## 2. Consolidate

1. **Group** candidates by pattern. Attach every `EXAMPLE` to the `RULE`
   it points to, and apply every `resolves:` block to the question it
   answers.
2. **Generalize** where several candidates share one mechanism, for
   example many verbs calqued the same way, or the same particle used in a
   foreign sense. Write one entry that names the mechanism, lists its cues
   and gives the best examples. Keep fixed idioms (صنعت يومي) as their own
   entries; they don't generalize.
3. **Drop** anything with no concrete construction behind it: rhetoric,
   complaints, history.
4. **Handle open questions.** If an `open:` line was never resolved, use
   the book's overall stance to decide. If it's still unclear, keep the
   entry at 🟡 and say why in one line. Never 🔴 on a guess.
5. **Pick examples.** Keep at most three ✗ → ✓ pairs per entry, choosing
   the clearest. Prefer `(author)` rewrites; keep an `(ours)` rewrite only
   when the book gives none, and check it is natural modern فصحى.
6. **Assign severity.** 🔴 when the author treats it as plainly foreign
   and the native alternative is just as clear. 🟡 when the usage is
   widespread, the author is less firm, or the alternative is heavier.

## 3. Write the references

Regenerate each file in `aranjiyyah/references/` from scratch, in the
`CLAUDE.md` entry format, numbering IDs from 001 in each file. Order
entries by how often the pattern shows up in modern writing, most common
first.

- `syntax.md`, `morphology.md`, `vocabulary.md`, `usage.md`, `style.md`: the
  `RULE` entries by category.
- `remedies.md`: the `CRITERION` and `METHOD` candidates, written as
  short, usable guidance, followed by a **Do not flag** list built from the
  `ACCEPTED` candidates (expression, one-line reason, page).

If a category ends up with only one or two entries, or one grows past
about 300 lines, adjust: merge it into a neighbor or split it by
sub-topic, add a table of contents, and update the table in `SKILL.md`.

Write in your own words with short examples, and don't reproduce the
book's text. Each entry cites printed pages, so a reader can go back to
the source.

## 4. Update SKILL.md

Keep the existing structure and voice. Update:
- step 4 (judge the sentence), with the three to six most important
  criteria from `remedies.md`, so the model has them without opening the
  file;
- a short **Most common patterns** table (about 15 rows: cue → better form
  → ID), so frequent cases are caught without searching the references;
- the reference table, if the files changed.

Keep `SKILL.md` under about 200 lines. Detail belongs in `references/`.

## 5. Check and report

- Every entry has a cue, at least one ✗ → ✓ pair and a page.
- Spot-check five random entries against their candidates.
- Grep `SKILL.md` and the references for every ID they mention and
  confirm each one exists.

Write `extraction/build-report.md`: counts per file, candidates dropped and
why (grouped, not one by one), open questions decided at 🟡, and anything
that needs the user's judgment. Commit with a message like
`build: 142 rules from pdf 1-215` (or `preview build: pdf 1-60`). Then give
the user the counts and the items needing their judgment.
