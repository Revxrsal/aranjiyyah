---
name: aranjiyyah
description: Detect عرنجية in Arabic text (constructions, word senses, collocations and styles calqued from English or French) and offer natural Arabic rewrites. Use whenever the user asks to review, proofread, edit, polish or translate Arabic text, asks whether an Arabic phrase is correct or "sounds translated", or shares an Arabic draft (article, email, post, UI copy, translation) for feedback, even if they never say "عرنجية". Also use when writing or translating into Arabic and the result should read as native Arabic rather than translated Arabic.
---

# العرنجية: Detecting and Rewriting Calqued Arabic

عرنجية is Arabic that is grammatically Arabic on the surface but follows a
foreign language underneath: its sentence frames, word senses, collocations,
metaphors and rhetorical habits come from English or French. Each rule in
`references/` records one such pattern, the foreign source it copies, and a
natural Arabic alternative.

## Workflow

1. **Read for meaning first.** Work out what the sentence means before
   judging its wording. A rewrite has to carry the same meaning.
2. **Scan for cues.** Each entry's `العلامة` line holds the literal words to
   look for. For a long text, grep the references for words that appear in it
   rather than reading every file:
   `grep -n "يلعب\|من خلال\|الخاص ب" references/*.md`
3. **Open the matching category file** when you need the full entry:

   | File | Covers |
   |------|--------|
   | `references/syntax.md` | Word order, sentence frames, particles, connectors |
   | `references/morphology.md` | Derived forms, nominalization, analytic constructions |
   | `references/vocabulary.md` | Arabic words used in a foreign sense |
   | `references/usage.md` | Calqued collocations and fixed phrases |
   | `references/style.md` | Translated metaphors, transitions, rhetorical habits |
   | `references/remedies.md` | How to judge borderline cases and how to rewrite |

4. **Judge the sentence, not the word.** A cue word is a reason to look
   closer, not proof of a problem. Some modern usages are established and
   clear, so don't flag them just because they arrived through translation.
   `remedies.md` has the criteria.
5. **Rewrite from meaning.** If a sentence copies a foreign frame, restate
   the meaning the way Arabic would say it. Swapping single words usually
   leaves the frame in place.
6. **Keep the register.** Default to clear modern فصحى. Don't make the text
   archaic to sound "more Arabic", and don't introduce dialect.

## Output

For a single phrase or sentence, lead with the answer:

> **الأفضل:** …
> (one line of reason, with the rule ID)

For a document review, list findings by severity and quote only the
fragment in question:

- 🔴 **غيّرها:** a foreign frame or a wrong sense. Gives the rewrite and the rule ID.
- 🟡 **الأحسن تغييرها:** understandable but heavy or translated-sounding.
- 🟢 Leave it. Don't list items that are fine unless the user asked about them.

When the user asks for a rewrite of the whole text, give the clean text
first, then a short list of the main changes with their rule IDs.

## Source

The rules are distilled from أحمد الغامدي، «العرنجية: بلسان عربي هجين». Each
entry cites the printed page.
