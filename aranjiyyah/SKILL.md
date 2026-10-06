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
3. **Open the matching category file** when you need the full entry:

   | File | Covers |
   |------|--------|
   | `references/syntax.md` | Sentence frames, particles, connectors, adjectives and إضافة (SYN) |
   | `references/morphology.md` | Helper-word paraphrases where Arabic has a derived form (MOR) |
   | `references/vocabulary.md` | Arabic words used in a foreign sense, loanwords (VOC) |
   | `references/usage.md` | Calqued collocations and fixed compounds (USE) |
   | `references/style.md` | Translated idioms and metaphors, nominal style, quotation order (STY) |
   | `references/remedies.md` | How to judge borderline cases, how to rewrite, and a **Do not flag** list |

4. **Judge the sentence, not the word.** A cue word is a reason to look
   closer, not proof of a problem. Many entries have a `الاستثناء` line,
   and `remedies.md` ends with constructions to leave alone. The main
   criteria:
   - **Grammatical is not the test.** A sentence with Arabic words and
     correct endings can still be foreign in its frame, sense or image.
     Judge the construction, not the إعراب.
   - **Familiar is not native.** "It sounds normal", an academy
     ruling, a derivation found after the fact, or a famous writer using
     it does not clear a calque. Habit is how calques stop being noticed.
   - **New concept or old meaning?** A coinage for something Arabic never
     named (a technical term) is fine. A foreign word or sense for a
     meaning Arabic already expressed is the fault.
   - **Find the displaced native form.** Calques usually replace an
     Arabic construction rather than fill a gap. If everyday speech still
     uses the native form (ثوب صوف، أقام يومين، قسا قلبه), the rewrite is
     safe.
   - **Helper words standing in for a derived form** (جعل، أكثر، بعضهم
     بعضًا، كثيرًا، كان + صفة) point to Arabic morphology English lacks.
     Suggest the derived form.
   - **Weigh density.** 🟡 items (بعض، سوف، فقط) are suggestions on their
     own. When nearly every choice in a passage mirrors English, say so.
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
| فقط (للحصر) | إنما / ما … إلا | SYN-004 🟡 |
| لمدة / لـ + مدة | ظرف بلا حرف: أقام يومين | SYN-006 |
| الرئيس المصري | رئيس مصر | SYN-007 |
| باستثناء | إلا / غير / سوى | SYN-010 |
| الشخص الأفضل / الأكثر | أفضل الناس | SYN-013 |
| ضدّ (بعد فعل) | حرف الفعل: استعان به على، حذّر من | SYN-015 |
| أكثر جمالًا | أجمل | MOR-001 |
| جعله يضحك | أضحكه | MOR-002 |
| مع بعضهم البعض (بعد تفاعل) | احذفها: تعاونوا | MOR-005 |
| سلبيات وإيجابيات / كن إيجابيًّا | محاسن ومساوئ / تفاءل | VOC-001 |
| حلمي أن / يحلم بـ | أمنيتي / يطمع في | VOC-002 |
| تبنّى رأيًا | أخذ به / قال به | VOC-003 |
| يصنع فرقًا | له أثر | USE-001 |
| يلعب دورًا | له أثر / أسهم | STY-001 |

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
entry cites the printed page. This is a preview build covering printed
pages 1–82; the book's chapter on styles (أساليب الكلام) and its remedies
chapter are not yet included.
