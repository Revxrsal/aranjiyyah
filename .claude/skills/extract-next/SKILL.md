---
name: extract-next
description: Read the next few pages of the العرنجية book and record candidate patterns in extraction/candidates.md, saving progress after every page.
argument-hint: "[page count]"
disable-model-invocation: true
---

# Extract the next pages (phase 1: collect)

This is phase 1 of a one-time pass over the book. The goal here is
**recall**: capture everything that could become a rule. Judging, merging
and pruning happen later in phase 2 with the whole book in view (see
`CLAUDE.md`), so don't filter hard here. A noisy candidate costs little to
drop later, but a missed one is gone for good.

Work one page at a time and save after every page, so a session can stop at
any point and the next one resumes cleanly.

## 1. Load the resume point

Read `extraction/state.json`. Process `$ARGUMENTS` pages if given, otherwise
`pages_per_run`. Stop at `stop_page`. Read every page; don't skip any.

Don't read `extraction/candidates.md` in full; it grows large. Search it
instead:
- `grep -n "<cue word>" extraction/candidates.md` before recording a
  candidate, to find an earlier block to point an `EXAMPLE` at.
- `grep -n "^- open:" extraction/candidates.md` to see open questions this
  page might answer. If it answers one, record the answer in a new block
  that names the earlier one (`resolves: p7 كمبيوتر`).

## 2. For each page

1. Run `scripts/page.sh <next_page>` and Read the PNG it prints.
2. If `carry` is set, continue that thread on this page first.
3. Append to `extraction/candidates.md` one block per thing worth keeping.
   Use the printed page number (PDF page + `printed_page_offset`):

   ```
   ## p120 · RULE · يلعب دورًا
   - cue: يلعب/لعب + دورًا
   - source: play a role
   - ✗ يلعب الإعلام دورًا كبيرًا في … → ✓ للإعلام أثر كبير في …
   - note: one line in your own words on why it's foreign
   ```

   Mark where each rewrite comes from: `✓ (author)` when the book gives the
   alternative, `✓ (ours)` when you supply it. Phase 2 trusts the author's
   rewrites more and may revise ours. When the page leaves something
   unresolved (no verdict, an ambiguous example, an unreadable word), add an
   `- open:` line saying what later pages should settle.

   Kinds:
   - `RULE`: a construction the author treats as foreign, with or without
     a stated alternative. If there's no alternative, write `✓ ?`.
   - `EXAMPLE`: another instance of a pattern already recorded. Point to
     it (`of: p118 يلعب دورًا`) and give only the new example pair.
   - `CRITERION`: a test for borderline cases (when a modern usage is
     acceptable, how to tell a calque from a native construction).
   - `METHOD`: advice on how to rewrite or avoid the problem.
   - `ACCEPTED`: an expression the author defends as sound Arabic. These
     prevent false positives.

   Pages with only history, anecdote or rhetoric get no blocks. Strong
   opinion with no concrete construction behind it is rhetoric. If it does
   name a construction, record that construction as a `RULE` and leave the
   opinion out.
4. If a discussion runs onto the next page, set `carry` to a one-line
   pointer (e.g. `continuing p118 يلعب دورًا`). Otherwise clear it.
5. Append one line to `extraction/log.md` (`pdf N (p M) · RULE×2 EXAMPLE×1`
   or `pdf N (p M) · background: history of translation in Egypt`), set
   `next_page`, and delete the PNG.

Write in your own words with short example pairs, and don't transcribe the
book. If a word is unreadable, mark it `[?]` rather than guessing.

## 3. Wrap up

Commit the changes to state, log and candidates with a message like
`extract: pdf pages 41-45 (6 candidates)`. Tell the user in two lines how
many pages and candidates were added and what the next page is. Suggest
`/clear` before the next `/extract-next`.
