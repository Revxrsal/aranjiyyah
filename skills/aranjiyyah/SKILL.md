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
2. **Scan for cues.** Check the **Most common patterns** table below first.
   Then use each entry's `العلامة` line, which holds the literal words to
   look for. For a long text, grep the references for words that appear in
   it rather than reading every file:
   `grep -n "يلعب\|من خلال\|الخاص ب" references/*.md`
   The references hold the book's examples, not every calque. If a phrase
   looks translated but matches no cue, gloss it into English word for
   word: if that already reads as idiomatic English, in the same order and
   with the same parts of speech, the frame is English. `remedies.md` has
   this test and two others.
3. **Open the matching category file** when you need the full entry:

   | File | Covers |
   |------|--------|
   | `references/syntax.md` | Particles, connectors, tense markers, modal verbs (SYN-001–034) |
   | `references/syntax-phrases.md` | إضافة and adjectives, head nouns, relative clauses, word order, question forms (SYN-035–054) |
   | `references/morphology.md` | Helper words and ‎-ly adverbs where Arabic has a derived form (MOR) |
   | `references/vocabulary.md` | Nouns used in a foreign sense, loanwords (VOC-001–035) |
   | `references/vocabulary-verbs.md` | Verbs and adjectives used in a foreign sense (VOC-036–059) |
   | `references/vocabulary-dominance.md` | Sound words that crowd out their native synonyms, mostly 🟡 (VOC-060–084) |
   | `references/usage.md` | Calqued collocations and fixed compounds (USE) |
   | `references/style.md` | Translated idioms and images, nominal style, reporting speech, stock phrases (STY) |
   | `references/remedies.md` | How to judge borderline cases, tests for uncovered phrases, how to rewrite, a one-word lookup table and a **Do not flag** list |

4. **Judge the sentence, not the word.** A cue word is a reason to look
   closer, not proof of a problem. Many entries have a `الاستثناء` line,
   and `remedies.md` ends with constructions to leave alone. The main
   criteria:
   - **Grammatical is not the test.** A sentence with Arabic words and
     correct endings can still be foreign in its frame, sense or image.
     Judge the construction, not the إعراب.
   - **Familiar or defensible is not native.** "It sounds normal", an
     academy ruling, a derivation found after the fact, a famous writer
     using it, or one old instance does not clear a calque. Ask whether
     the usage spread through translation and displaced a native word.
   - **New concept or old meaning?** A coinage for something Arabic never
     named (a technical term) is fine. A foreign word or sense for a
     meaning Arabic already expressed is the fault.
   - **Find the displaced native form.** Calques usually replace an
     Arabic construction rather than fill a gap. If everyday speech still
     uses the native form (ثوب صوف، أقام يومين، قسا قلبه، ما عندنا خبر),
     the rewrite is safe.
   - **Fix the frame, not one word.** Swapping the visible word keeps the
     calque (لعب ← أدّى دورًا، كـ ← بوصفه، حرفيًّا ← فعليًّا). Helper words
     standing in for a derived form (جعل، أكثر، أصبح، بعضهم بعضًا، بشكل،
     يبدو) point to Arabic morphology English lacks: suggest the form.
   - **Weigh density.** 🟡 items (هناك، بعض، سوف، فقط، قائد) are
     suggestions on their own. When nearly every choice in a passage
     mirrors English, say so, and when a paragraph is dense with calques,
     rewrite it from its meaning instead of listing patches.
5. **Rewrite from meaning.** If a sentence copies a foreign frame, restate
   the meaning the way Arabic would say it. Swapping single words usually
   leaves the frame in place.
6. **Keep the register.** Default to clear modern فصحى. Don't make the text
   archaic to sound "more Arabic", and don't introduce dialect. Native
   doesn't mean rare: prefer plain current words.

## Most common patterns

| Cue | Better | ID |
|-----|--------|----|
| تمّ / يتمّ + مصدر | فعل مبني للمجهول: أُرسلت | SYN-001 |
| من خلال / عبر (للوسيلة) | الباء: بمقاله | SYN-002 |
| الخاص بك / خاصّتي | ضمير متصل: حسابك | SYN-003 |
| هناك / يوجد في صدر الجملة | خبر مقدّم: في المحفظة ريال | SYN-004 🟡 |
| عندما (للشرط) | إذا + ماضٍ: إذا مرضتُ | SYN-005 |
| يمكنك أن تجد | تجد | SYN-006 |
| أيّ + نكرة (any) | التنوين / هل من / قطّ | SYN-007 |
| لا يجب أن تفعل | لا تفعل | SYN-010 |
| الآخرين (بعد الناس) | الناس / احذفها | SYN-035 |
| الشخص الذي / أولئك الذين | مَن / الذين | SYN-037 |
| أكثر جمالًا | أجمل | MOR-001 |
| جعله يضحك | أضحكه | MOR-002 |
| سلبيات وإيجابيات | محاسن ومساوئ | VOC-001 |
| معلومات عن | خبر عن | VOC-002 |
| على المستوى / على الصعيد | في + المجال: هو في العلم حسن | VOC-004 |
| يلعب / يؤدّي دورًا | له أثر / أسهم | STY-001 |
| وفقًا لفلان | ذكر فلان / فيما يقول فلان | STY-004 |
| وأضاف قائلًا / أجاب: | وقال / قال | STY-005 |

Unmarked rows are 🔴 in their entries.

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
entry cites the printed page. The build covers the whole book (printed
pages 1–217).
