# Decisions

Rulings by the user that `/build-skill` applies on every build, ahead of
its own judgment. One entry per decision. Edit freely; this is the place
to correct the skill.

Format:

```
## <short topic>
- applies to: <IDs, cue words, or a general rule>
- decision: <what to do>
- why: <optional, one line>
```

## Severity of widespread calques
- applies to: all entries
- decision: being widespread doesn't lower a calque to 🟡. Use 🔴 when a clear native form exists; 🟡 only when the native form is heavier or would surprise readers.

## Book rulings softened to 🟡
- applies to: أو after negation (SYN-033), كن + صفة (MOR-010), أو in تسوية (SYN-034), الجنسين (VOC-031), العربية الكلاسيكية (VOC-034)
- decision: keep them at 🟡.
- why: classical counterexamples, or entrenched technical usage.

## Extensions beyond the book
- applies to: الخاصة بك in UI copy (SYN-003); the cue الوقت in يوفّر عليك (USE-021); the exception lines for «جعل يفعل» = began (MOR-002), «فقط» after an amount (SYN-011) and the spatial sense of من خلال / عبر (SYN-002)
- decision: keep them.

## Rare entries
- applies to: Van Dyck phrases (STY-019), فوق من انفتاق الفجر (STY-020), انتصاب (VOC-059), diminutives (MOR-014), and similar low-frequency patterns
- decision: keep them, at the bottom of their files.
- why: the skill searches the references, so rare entries cost almost nothing.

## التفكير النقدي
- applies to: التفكير النقدي / الناقد، مهارات التفكير النقدي، العقل النقدي، الحسّ النقدي (a usage.md entry, outside the book)
- decision: add an entry at 🔴 as a literal calque of "critical thinking". Don't clear it as a technical coinage: the meaning is old, and Arabic says it with تمحيص، نظر، موازنة، تمييز، or a verb (لا يُسلّم بقول حتى يمحّصه). Exception: نقدي for criticism as a discipline (النقد الأدبي، نقد الحديث، الدراسات النقدية). Examples are ours, and المصدر names this decision instead of a page.
- why: the user's ruling (2026-10-07), after a review left it alone as a technical term.

## Pending

Questions awaiting an answer. `/build-skill` keeps its current handling
until they're decided and moved above this heading.

IDs in the decisions above were renumbered in the full build (pdf 1-215);
each now names its cue as well, so the next renumbering can't orphan it.

## Very common words the author rejects firmly
- applies to: آسف (VOC-041), معلومات (VOC-002), يمكن / يستطيع (SYN-006), يجب / ينبغي (SYN-010), عندما (SYN-005), أيّ (SYN-007), وفقًا لـ (STY-004), الآخرين (SYN-035), أحد / إحدى + جمع (SYN-036), السبب الرئيسي (SYN-038), العالم العربي (VOC-022), جهود (VOC-008), إضافي (VOC-060)
- current handling: 🔴, following the ruling that being widespread doesn't lower a calque. Each has an exception line for its sound uses.
- question: these appear in almost every modern text, so a review will flag a lot. Keep them all 🔴, or move some to 🟡?

## Patterns seen only in the book's back-translations
- applies to: SYN-042 to SYN-054 (most), USE-019, USE-020, USE-028, MOR-013, STY-007, VOC-084
- current handling: 🟡. The author shows the native original next to an English-shaped back-translation but gives no verdict on the single construction.
- question: is 🟡 right for these, or should some be dropped as too weak to flag?

## على الرغم من / رغم
- applies to: SYN-015
- current handling: the preview build listed them under Do not flag. The new pages show the author replacing رغم with مع (ص 207) and marking رغم أنّ … إلا أنّ as a calque (ص 172), so they moved into SYN-015 as a 🟡 suggestion, and the double marker is the main cue.
- question: keep them as a suggestion, or back on Do not flag?

## Extensions beyond the book in this build
- applies to: SYN-038 exception for fixed names (الشارع الرئيسي); VOC-002 exception for technical terms (تقنية المعلومات); VOC-048 exception for insurance (التأمين); SYN-043 (two مصادر sharing one مضاف إليه), whose verdict comes from the grammarians, not the author
- question: keep them?

## Splitting files and numbering IDs
- applies to: syntax.md + syntax-phrases.md; vocabulary.md + vocabulary-verbs.md + vocabulary-dominance.md
- current handling: a prefix spread over several files keeps one sequence (SYN-001-054, VOC-001-084), so IDs stay unique. /build-skill says to number from 001 in each file.
- question: keep one sequence per prefix (and update the command), or give each split file its own prefix?
