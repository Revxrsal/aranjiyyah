# Build report

**Full build** from PDF pages 1–215, which are printed pages 1–217.
Collection is finished (`next_page` 216 > `stop_page` 215). PDF 216–222 are
the bibliography and were not read.

## Counts

561 candidate blocks: 280 RULE, 143 EXAMPLE, 89 CRITERION, 33 METHOD,
16 ACCEPTED.

| File | Lines | Entries | 🔴 | 🟡 |
|---|---|---|---|---|
| syntax.md (SYN-001–034) | 309 | 34 | 23 | 11 |
| syntax-phrases.md (SYN-035–054) | 184 | 20 | 7 | 13 |
| morphology.md | 137 | 14 | 5 | 9 |
| vocabulary.md (VOC-001–035) | 328 | 35 | 31 | 4 |
| vocabulary-verbs.md (VOC-036–059) | 224 | 24 | 23 | 1 |
| vocabulary-dominance.md (VOC-060–084) | 226 | 25 | 2 | 23 |
| usage.md | 239 | 28 | 18 | 10 |
| style.md | 164 | 20 | 14 | 6 |
| **Total rules** | | **200** | **123** | **77** |
| remedies.md | 243 | 10 judging criteria, 4 tests, 9 rewriting methods, a 19-row one-word lookup table, 29 do-not-flag rows | | |

SKILL.md (121 lines): step 2 gains the back-translation test for phrases no
entry covers, step 4 is rewritten around six criteria, the common-patterns
table has 18 rows, the reference table lists the nine files, and the Source
line now says the whole book is covered.

## File layout changes

Syntax and vocabulary grew past 300 lines, so they were split:

- **Syntax:** `syntax.md` holds particles, connectors, tense and modality.
  `syntax-phrases.md` holds noun phrases, relative clauses, word order and
  question forms.
- **Vocabulary:**
  - `vocabulary.md`: nouns with a foreign sense.
  - `vocabulary-verbs.md`: verbs and adjectives with a foreign sense.
  - `vocabulary-dominance.md`: sound words that crowd out their synonyms
    (التغليب). It is mostly 🟡, so a reviewer knows these are suggestions.

IDs run in one sequence per prefix across the split files, so every ID stays
unique. This departs from "number from 001 in each file" and is listed as a
pending question.

## How candidates were consolidated

- **Grouped by mechanism.**
  - Head nouns English needs and Arabic doesn't: الشخص الذي، أولئك الذين،
    شخص فقير، الأشياء التي (SYN-037).
  - Emphasis adverbs and their false fixes: حرفيًّا، فعليًّا، حقيقةً (SYN-020).
  - Multi-word connectors: إلى درجة أن، في حال، حقيقة أنّ (SYN-024).
  - أو for "that is" together with بعبارة أخرى (SYN-026).
  - Every English-shaped question form: لماذا لا، ماذا لو، كيف سيعرف، لا
    يعرف ماذا (SYN-045).
  - The English cleft: السبب الذي … هو أن، كل ما تبقى أن (SYN-046).
  - اتجاه، تيار and مدرسة meaning مذهب (VOC-006).
  - فقد + any state, including فقدت عذريتها (VOC-038).
  - Metaphorical تحت (USE-003) and the تأثير phrases (USE-004).
  - Adverbs built on English ‎-ly (MOR-004 to MOR-006).
  - About 20 stock English phrases from the translation drills (STY-007).
- **Synonym-swapped variants kept under one cue:** أدّى دورًا is in
  STY-001, بوصفه in SYN-017, فعليًّا in SYN-020, التفت بعيدًا in USE-017
  and بعبارة أخرى in SYN-026.
- **All 143 EXAMPLE blocks** were folded into their rules. The best ✗ → ✓
  pairs were kept, at most three per entry, preferring the author's
  classical originals.
- **Severity raised on new evidence from the book:**
  - الكاف الدخيلة (SYN-017, now treated by the author himself on p132).
  - برّر (VOC-045, with author rewrites on p99).
  - حقل (VOC-016, with author rewrites on p106).
  - أصبح/صار + صفة (MOR-003, with more author pairs on p187–191).
  - نحو/تجاه (SYN-016), which now covers موقفه تجاه after the author ruled
    on it (p150).
- **CRITERION and METHOD blocks** were condensed into `remedies.md`.
  Repeated points (taste, habituation, "a justification doesn't clear it",
  the colloquial test, the back-translation test) were merged.

## Dropped (grouped)

- **Ideology, not wording:** الهوية العربية / التراث العربي / الثقافة
  القومية / bare ثقافة (p23–24).
- **Caricatures with no clear English model:** أنا أكون كثيرًا أفعل (p24),
  أفعل حبًّا لك (p24), أنا أفعل الجوع اثنين مرات (p38).
- **No rewrite and no clear native target:** حركة إصلاح / نقطة تحوّل (p88),
  يملك الانتباه / يحسن اجتذاب (p89), صفحة الوعي (p96, which the author
  himself couldn't parse), يتموضع (p97), and the satirical coinage list
  (عقلية، نفسية، تحبيذ, p90).
- **Recorded from samples and never confirmed by the author, too weak to
  flag:**
  - وحتى + اسم (p178)
  - لا يمت بصلة لـ (p180)
  - the relative clause stating a general rule (p190)
  - the stranded preposition (p191)
  - هذه الأخيرة and similar sample cues (p169)
  - الاثنان after a dual (p148)
  - نفس + اسم (p144, never discussed)
- **Unclear reading:** المشورة for "council" (p28).
- **Background, history and remedy narrative:**
  - the 19th-century translators and the two Bibles
  - Shakir's list as history
  - mission schools
  - the reading lists (p198–199)
  - audiobooks and imitation drills (p202–203)

  Where any of these gives a usable test, the test is kept in
  `remedies.md`.
- **Drill pairs on p208–213** that the author didn't comment on: kept only
  as STY-007 cues and a few examples elsewhere, not as separate entries.

## Open questions decided at 🟡

| Entry | Open question | Why 🟡 |
|---|---|---|
| SYN-015 بالرغم من / رغم | Does the author reject على الرغم من / رغم too? | Not ruled outright. The author's originals replace رغم with مع, and he marks رغم أنّ … إلا أنّ. The entry suggests and doesn't correct |
| SYN-042–054 (most), USE-019/020/028, MOR-013, STY-007 | Seen only in back-translations | The author shows the native original but gives no verdict on the single construction |
| SYN-043 shared مضاف إليه | Does the author treat it? | No. The verdict comes from the grammarians |
| VOC-065 خطة | Plan vs plot | Plot (يخطط ضد) is the clear case. خطة العمل is an entrenched administrative term |
| VOC-077 متطرّف | Native الغلو clear? | Settled political and legal term. The alternative would surprise readers |
| VOC-067 القيم | Does أخلاق cover it? | Not in every modern use |
| VOC-061 دعم | Evidence sense? | The author calls it tolerable there and foreign in its spread |
| VOC-084 sociology jargon | Single verdicts? | Covered only by the author's verdict on the whole sample |
| VOC-075 شخصي، VOC-076 جذّاب، USE-011 نقطة ضعف | Examples? | From the author's closing list with no examples, so the rewrites are ours |
| VOC-019 اقتنع | Same as قناعة? | Only قناعة has author pairs |
| USE-012 administrative collocations | Rewrites? | The author lists them as European with no rewrite |
| SYN-029 خلال + مدة | Treated directly? | Only in back-translations, with the author's originals |
| SYN-032 كان وما زال | Singled out? | Seen in two samples, no separate verdict |

## Decisions applied

- **Widespread doesn't lower severity:**
  - Applied throughout. Very common calques with a clear native form are
    🔴: آسف، معلومات، يمكن، يجب، عندما، أيّ، وفقًا لـ، الآخرين، أحد + جمع،
    الرئيسي، العالم العربي، جهود، إضافي.
  - 🟡 is used where the native form is heavier or would surprise readers
    (VOC-024، VOC-065، VOC-077), and where the book itself frames the word
    as dominance (التغليب) rather than a wrong sense.
- **Book rulings softened to 🟡:** kept, now SYN-033, MOR-010, SYN-034,
  VOC-031 and VOC-034.
- **Extensions beyond the book:** kept: SYN-003 الخاصة بك, USE-021 الوقت,
  and the exception lines in MOR-002, SYN-011 and SYN-002.
- **Rare entries:** kept at the bottom of their files: STY-019, STY-020,
  VOC-059 and MOR-014.

The decisions' "applies to" lines now name each cue alongside its new ID,
since the IDs were renumbered.

## Needs your judgment

New questions are under **Pending** in `decisions.md`:

1. The 13 very common words rated 🔴 under your widespread ruling. Is that
   the intended strength?
2. 🟡 for patterns seen only in back-translations.
3. على الرغم من / رغم moved from Do not flag into SYN-015 as a suggestion.
4. Four new extensions beyond the book.
5. One ID sequence per prefix across split files, or separate prefixes.

## Checks

- All 200 entries have a cue, a verdict, a page and 1–3 ✗ → ✓ pairs.
- IDs are sequential per prefix with no duplicates. Every ID mentioned in
  SKILL.md and the references exists.
- Spot-checked VOC-015, SYN-039, VOC-034, USE-015 and SYN-013 against their
  candidates. Examples, author rewrites and pages match. SYN-039 now also
  holds the p160 المغني الأفضل case, which the candidate marked low
  confidence; it is the same mechanism as the p49 rule.
