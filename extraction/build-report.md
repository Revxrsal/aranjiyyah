# Build report

**Preview build** from PDF pages 1–80, which are printed pages 1–82 (candidates run through p82).
Collection is not finished: `next_page` is 81 of 215. The styles chapter
(أساليب الكلام, PDF 130–192) and the remedies chapter (PDF 193–215) are not
yet read, so `style.md` is thin and `remedies.md` is built from the
criteria scattered through chapters 1–3.

## Counts

178 candidate blocks: 90 RULE, 26 EXAMPLE, 47 CRITERION, 6 METHOD, 9 ACCEPTED.

| File | Entries | 🔴 | 🟡 |
|---|---|---|---|
| syntax.md | 23 | 14 | 9 |
| morphology.md | 9 | 3 | 6 |
| vocabulary.md | 18 | 11 | 7 |
| usage.md | 10 | 5 | 5 |
| style.md | 13 | 9 | 4 |
| **Total rules** | **73** | **42** | **31** |
| remedies.md | 9 judging criteria, 8 rewriting methods, 12 do-not-flag rows | | |

SKILL.md: step 4 rewritten with six criteria, a 17-row common-patterns
table added, and the reference table updated (109 lines).

## How candidates were consolidated

- **Merged duplicates:** repeated RULE blocks (تغذية راجعة p7/p38, صنعت يومي p7/p38, لعب دورًا p31/p37, تبنّى p29/p37, حلم p37/p81) and all 26 EXAMPLE blocks were folded into their rules.
- **Generalized:** the causative (جعله يضحك, منحه الحياة) is now one entry (MOR-002). Light-verb and nominal paraphrases (وُضع عليه السجن، جدير بمزيد، بإمكانك العثور) are STY-002. «لبس» for non-clothing (hair, kohl) is USE-006. Odd adjective pairings (قهوة ضعيفة، عين مائية) are USE-008. Three Van Dyck Bible phrases are STY-012. The three uses of سلبي/إيجابي are VOC-001, and both uses of وحدة are VOC-007.
- **Category split:** `usage.md` covers word pairings and compounds. `style.md` covers whole translated images, idioms and writing habits. The book's own styles chapter will mostly land in `style.md`.

## Dropped (grouped)

- **Ideology, not wording:** الهوية العربية / التراث العربي / الثقافة القومية / bare ثقافة (p23–24). The complaint is about how Arabic is valued; no rewrite rule came out of it.
- **Caricature lines with no clear English model:** أنا أكون كثيرًا أفعل (p24), أفعل حبًّا لك (p24), أنا أفعل الجوع اثنين مرات (p38). The author never developed them. If the book later treats كان/يكون + مضارع or اثنين مرات directly, add them then.
- **Unclear reading:** المشورة for "council" (p28, marked [?]).
- **Background and history:** the 19th-century translators, the Van Dyck vs Jesuit Bibles, Shakir's 1891 list, mission schools. Kept only where they yield a test, such as the pre-1300 AH reference writers or "calques spread beyond translation".
- **Framing and rhetoric CRITERIA:** about 47 blocks, condensed into the 17 points in `remedies.md`. Overlapping ones (taste, habituation, "grammatical is not Arabic", which appear 4–5 times each) are merged.

## Open questions decided at 🟡

| Entry | Open question | Why 🟡 |
|---|---|---|
| VOC-013 كمبيوتر | No verdict on technical loanwords | Falls under p72: a new term for a new concept. كيوت stays 🔴 |
| SYN-012 بالرغم من | Is على الرغم من / رغم also rejected? | Not ruled on yet. Only بالرغم من is flagged, and the other two go on the do-not-flag list |
| SYN-008 كمعلّم | The author's own treatment never came | Only quoted from الهلالي |
| VOC-004 برّر | No rewrite in the book | Very widespread and quoted secondhand |
| VOC-011 حقل | Is مجال also rejected? | Not ruled on yet, so مجال isn't flagged |
| STY-003 النسيج الاجتماعي | Concept or wording? | The objection reads as being about the concept |
| USE-004 تغذية راجعة | Accepted as a term in education? | Settled technical term in that field |
| MOR-003 كان + صفة | When is it fine? | The limit (lasting trait vs action) is inferred, not stated |
| VOC-007 وحدة | Is the unit of measure acceptable? | Technical sense allowed; "unity" sense stays 🟡 because the alternative is heavier in political prose |
| VOC-016 مراهق / بالغ | Native age terms? | The book gives none, so the rewrites are ours |
| SYN-014 نحو/تجاه | Extend to موقفه تجاه، المسؤولية تجاه? | Not extended. The entry stays 🔴 for رحمة/رحيم only and says the other nouns get 🟡 at most |
| STY-002 بإمكانك + مصدر | Does the book treat بإمكان separately? | Folded into the nominal-style entry at 🟡 |

**تمّ + مصدر** (SYN-001): the author promised a full treatment later. It's rated 🔴 now on the strength of p45 (well-known error) and p60 (author rewrite).

## Needs your judgment

1. **How I read "widespread → 🟡".** Taken literally, it would make almost every common calque 🟡, including يلعب دورًا, which CLAUDE.md's own example rates 🔴. I read "widespread" as "so settled that the native form would surprise readers or is heavier". So تمّ + مصدر، من خلال، الرئيس المصري، لمدة، باستثناء and ثوب صوفي are 🔴, and فقط، بعض، سوف and وحدة are 🟡. Check whether that matches what you want flagged as "غيّرها".
2. **Places where I softened the book.**
   - SYN-022 (أو after a negation): the author prefers ولا, but أو after a prohibition is Qur'anic (ولا تطع منهم آثمًا أو كفورًا), so it's 🟡.
   - MOR-004 (كن + صفة): كونوا + وصف is Qur'anic (كونوا قوّامين بالقسط), so it's 🟡 with an exception line.
   - SYN-023 (أو in تسوية): some grammarians allow it, so it's 🟡.
   - VOC-012 (الجنسين): the author is firm, but the term is entrenched in administrative and statistical writing, so it's 🟡.
   - VOC-017 (العربية الكلاسيكية): these are standard linguistics terms, so it's 🟡.
3. **Places where I extended the book.**
   - SYN-003: the book's example is القلب خاصّتي. I applied the same mechanism to UI-style «الخاصة بك», which is very common in app copy.
   - USE-003: I added الوقت to the cue (يوفّر عليك الوقت).
   - Exception lines not in the book: «جعل يفعل» = began (MOR-002), «فقط» after an amount (SYN-004), and the spatial senses of من خلال / عبر (SYN-002).
4. **Low-frequency entries.** STY-012 (Van Dyck phrases), STY-013 (فوق من انفتاق الفجر), VOC-018 (انتصاب) and MOR-009 (diminutives) rarely show up in modern prose. They're kept for completeness at the bottom of their files. Drop them if you want leaner files.
5. **Language.** Entries are in Arabic per CLAUDE.md. `remedies.md` and SKILL.md are in English with Arabic examples, to match SKILL.md's voice.

## Checks

- All 73 entries have a cue, a verdict, a page and 1–3 ✗ → ✓ pairs.
- Every ID mentioned in SKILL.md and the references exists. IDs are sequential from 001 in each file.
- Spot-checked SYN-017, SYN-018, SYN-022, USE-002 and MOR-007 against their candidates. Examples, author rewrites and pages match. SYN-022's severity is the deliberate change described in item 2.
