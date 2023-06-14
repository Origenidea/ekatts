;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;                                                                     ;;;
;;;                     Carnegie Mellon University                      ;;;
;;;                  and Alan W Black and Kevin Lenzo                   ;;;
;;;                      Copyright (c) 1998-2000                        ;;;
;;;                        All Rights Reserved.                         ;;;
;;;                                                                     ;;;
;;; Permission is hereby granted, free of charge, to use and distribute ;;;
;;; this software and its documentation without restriction, including  ;;;
;;; without limitation the rights to use, copy, modify, merge, publish, ;;;
;;; distribute, sublicense, and/or sell copies of this work, and to     ;;;
;;; permit persons to whom this work is furnished to do so, subject to  ;;;
;;; the following conditions:                                           ;;;
;;;  1. The code must retain the above copyright notice, this list of   ;;;
;;;     conditions and the following disclaimer.                        ;;;
;;;  2. Any modifications must be clearly marked as such.               ;;;
;;;  3. Original authors' names are not deleted.                        ;;;
;;;  4. The authors' names are not used to endorse or promote products  ;;;
;;;     derived from this software without specific prior written       ;;;
;;;     permission.                                                     ;;;
;;;                                                                     ;;;
;;; CARNEGIE MELLON UNIVERSITY AND THE CONTRIBUTORS TO THIS WORK        ;;;
;;; DISCLAIM ALL WARRANTIES WITH REGARD TO THIS SOFTWARE, INCLUDING     ;;;
;;; ALL IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS, IN NO EVENT  ;;;
;;; SHALL CARNEGIE MELLON UNIVERSITY NOR THE CONTRIBUTORS BE LIABLE     ;;;
;;; FOR ANY SPECIAL, INDIRECT OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES   ;;;
;;; WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN  ;;;
;;; AN ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION,         ;;;
;;; ARISING OUT OF OR IN CONNECTION WITH THE USE OR PERFORMANCE OF      ;;;
;;; THIS SOFTWARE.                                                      ;;;
;;;                                                                     ;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Lexicon, LTS and Postlexical rules for cdac_marathi
;;;

;;; Load any necessary files here

(define (cdac_marathi_addenda)
  "(cdac_marathi_addenda)
Basic lexicon should (must ?) have basic letters, symbols and punctuation."

;;; Pronunciation of letters in the alphabet
;(lex.add.entry '("a" nn (((a) 0))))
;(lex.add.entry '("b" nn (((b e) 0))))
;(lex.add.entry '("c" nn (((th e) 0))))
;(lex.add.entry '("d" nn (((d e) 0))))
;(lex.add.entry '("e" nn (((e) 0))))
; ...

;;; Symbols ...
;(lex.add.entry 
; '("*" n (((a s) 0) ((t e) 0) ((r i1 s) 1)  ((k o) 0))))
;(lex.add.entry 
; '("%" n (((p o r) 0) ((th i e1 n) 1) ((t o) 0))))

;; Basic punctuation must be in with nil pronunciation
(lex.add.entry '("." punc nil))
;(lex.add.entry '("." nn (((p u1 n) 1) ((t o) 0))))
(lex.add.entry '("'" punc nil))
(lex.add.entry '(":" punc nil))
(lex.add.entry '(";" punc nil))
(lex.add.entry '("," punc nil))
;(lex.add.entry '("," nn (((k o1) 1) ((m a) 0))))
(lex.add.entry '("-" punc nil))
(lex.add.entry '("\"" punc nil))
(lex.add.entry '("`" punc nil))
(lex.add.entry '("?" punc nil))
(lex.add.entry '("!" punc nil))
(lex.add.entry '("(" punc nil))
(lex.add.entry '(")" punc nil))
(lex.add.entry '("{" punc nil))
(lex.add.entry '("}" punc nil))
(lex.add.entry '("[" punc nil))
(lex.add.entry '("]" punc nil))
(lex.add.entry '("<" punc nil))
(lex.add.entry '(">" punc nil))
(lex.add.entry '("\"" punc nil))
(lex.add.entry '("aŋkagaлeŧa" nn (((a q k) 0) ((g a) 0) ((nx i t a) 0) )))
(lex.add.entry '("aŋkgaлeŧā" nn (((a q k) 0) ((g a) 0) ((nx i t aa) 0) )))
(lex.add.entry '("aŋkagaлeŧā" nn (((a q k a) 0) ((g a) 0) ((nx i t aa) 0) )))
(lex.add.entry '("janare" nn ((("j" "aa" ) 0) (("nx" "aa" ) 0) )))
(lex.add.entry '("ab@kas" nn ((("a") 0) (("b" "ae") 0) (("k" "a" "s") 0) )))
(lex.add.entry '("ab‑hay" nn (((a) 0) ((bh a y) 0) )))
(lex.add.entry '("abasn‑ŧeen" nn (((a b) 0) ((s a q) 0) ((t ii n) 0) )))
(lex.add.entry '("ozλ" nn (((o) 0) ((jh ee) 0) )))
(lex.add.entry '("oraduu" nn (((o r) 0) ((dx uu) 0) )))
(lex.add.entry '("p@kλj" nn (((p ae) 0) ((k ee jx) 0) )))
(lex.add.entry '("āđ‑hār" nn (((aa) 0) ((dh aa) 0) ((r) 0) )))
(lex.add.entry '("mđ‑hu" nn  ( ((m a) 0) ((dh u) 0))))
(lex.add.entry '("mađ‑hu" nn  ( (("m" "a" "a") 0) (("dh" "u") 0))))
(lex.add.entry '("kāgađ" nn  ( (("k" "aa") 0) (("g" "a")0) (("d") 0))))
(lex.add.entry '("kāgađa" nn  ( (("k" "aa") 0) (("g" "a")0) (("d" "a") 0))))
(lex.add.entry '("pλn" nn  ( (("p" "ee") 0) (("n") 0))))
(lex.add.entry '("pλna" nn  ( (("p" "ee") 0) (("n" "a") 0))))
(lex.add.entry '("pλλna" nn  ( (("p" "ee" "ee") 0) (("n" "a") 0))))
(lex.add.entry '("rbr" nn  ( (("r" "a") 0) (("b" "a")0) (("r") 0))))
(lex.add.entry '("rabar" nn  ( (("r" "a" "a") 0) (("b" "a" "a")0) (("r") 0))))
(lex.add.entry '("rabara" nn  ( (("r" "a" "a") 0) (("b" "a" "a")0) (("r" "a") 0))))
(lex.add.entry '("sŋk‑h‑yā" nn  ( (("s" "q") 0) (("kh" "y" "aa") 0))))
(lex.add.entry '("saŋk‑h‑yā" nn  ( (("s" "a" "q") 0) (("kh" "y" "aa") 0))))
(lex.add.entry '("s‑hab‑đ" nn  ( (("sh" "a") 0) (("b" "d") 0))))
(lex.add.entry '("s‑hab‑đa" nn  ( (("sh" "a") 0) (("b" "d" "a") 0))))
(lex.add.entry '("mrāt‑hee" nn  ( (("m") 0) (("r" "aa")0) (("txh" "ii") 0))))
(lex.add.entry '("marāt‑hee" nn  ( (("m" "a") 0) (("r" "aa")0) (("txh" "ii") 0))))
(lex.add.entry '("λkalepee" nn  ( (("ee") 0) (("k" "a")0) (("l" "i")0) (("p" "ii") 0))))
(lex.add.entry '("b‑hās‑høā" nn  ( (("bh" "aa") 0) (("sh" "aa") 0))))
(lex.add.entry '("čān‑đлee" nn  ( (("c" "aa" "q" "d") 0) (("nx" "ii") 0))))
(lex.add.entry '("čān‑đaлee" nn  ( (("c" "aa" "q" "d" "a") 0) (("nx" "ii") 0))))
(lex.add.entry '("cān‑đnee" nn  ( (("cx" "aa" "q" "d") 0) (("n" "ii") 0))))
(lex.add.entry '("chā" nn (((cx) 0) ((h aa) 0) )))
(lex.add.entry '("cahā" nn (((cx a) 0) ((h aa) 0) )))
(lex.add.entry '("čmčā" nn (((c ) 0) ((m ) 0) ((c aa) 0) )))
(lex.add.entry '("čamčā" nn (((c a) 0) ((m ) 0) ((c aa) 0) )))
(lex.add.entry '("cmcā" nn (((cx) 0) ((m ) 0) ((cx aa) 0) )))
(lex.add.entry '("camcā" nn (((cx a) 0) ((m ) 0) ((cx aa) 0) )))
(lex.add.entry '("mɉkuur" nn (((m ) 0) ((j ) 0) ((k uu r) 0) )))
(lex.add.entry '("maɉkuur" nn (((m a) 0) ((j) 0) ((k uu r) 0) )))
(lex.add.entry '("maɉakuur" nn (((m a) 0) ((j a) 0) ((k uu r) 0) )))
(lex.add.entry '("mjkuur" nn (((m a) 0) ((jx) 0) ((k uu r) 0) )))
(lex.add.entry '("majakuur" nn (((m a) 0) ((jx a) 0) ((k uu r) 0) )))
)
(require 'lts)

;;;  Function called when word not found in lexicon
;;;  and you've trained letter to sound rules
(define (cdac_marathi_lts_function word features)
  "(cdac_marathi_lts_function WORD FEATURES)
Return pronunciation of word not in lexicon."
  (if (not boundp 'cdac_marathi_lts_rules)
      (require 'cdac_marathi_lts_rules))
  (let ((dword (downcase word)) (phones) (syls))
    (set! phones (lts_predict dword cdac_marathi_lts_rules))
    (set! syls (cdac_marathi_lex_syllabify_phstress phones))
    (list word features syls)))

;; utf8 letter based one
;(define (cdac_marathi_lts_function word features)
;  "(cdac_marathi_lts_function WORD FEATURES)
;Return pronunciation of word not in lexicon."
;  (let ((dword word) (phones) (syls))
;    (set! phones (utf8explode dword))
;    (set! syls (cdac_marathi_lex_syllabify_phstress phones))
;    (list word features syls)))

(define (cdac_marathi_is_vowel x)
  (string-equal "+" (phone_feature x "vc")))

(define (cdac_marathi_contains_vowel l)
  (member_string
   t
   (mapcar (lambda (x) (cdac_marathi_is_vowel x)) l)))

(define (cdac_marathi_lex_sylbreak currentsyl remainder)
  "(cdac_marathi_lex_sylbreak currentsyl remainder)
t if this is a syl break, nil otherwise."
  (cond
   ((not (cdac_marathi_contains_vowel remainder))
    nil)
   ((not (cdac_marathi_contains_vowel currentsyl))
    nil)
   (t
    ;; overly naive, I mean wrong
    t))
)

(define (cdac_marathi_lex_syllabify_phstress phones)
 (let ((syl nil) (syls nil) (p phones) (stress 0))
    (while p
     (set! syl nil)
     (set! stress 0)
     (while (and p (not (cdac_marathi_lex_sylbreak syl p)))
       (if (string-matches (car p) "xxxx")
           (begin
             ;; whatever you do to identify stress
             (set! stress 1)
             (set syl (cons (car p-stress) syl)))
           (set! syl (cons (car p) syl)))
       (set! p (cdr p)))
     (set! syls (cons (list (reverse syl) stress) syls)))
    (reverse syls)))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; OR: Hand written letter to sound rules
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

 (define (cdac_marathi_lts_function word features)
   "(iitm_hindi_lts_function WORD FEATURES)
 Return pronunciation of word not in lexicon."
(cond
((string-equal "" word )())
(t
(set! myfilepointer (fopen ( path-append cdac_marathi_ganeshnew::dir "parser.sh") "w"))
;(set! myfilepointer1 (fopen ( path-append cdac_marathi_ganeshnew::dir "noOfPhonesInEachWord") "w"))
  
(format myfilepointer "perl %s %s %s" (path-append cdac_marathi_ganeshnew::dir "bin/il_parser_hts_marathi.pl") word cdac_marathi_ganeshnew::dir)
    (format myfilepointer "\n %s" "numberOfPhonesInWord=`cat wordpronunciation | awk -F\'\"\' \'{print (NF-1)/2}\'\`")
     (format myfilepointer "\n %s" "echo $numberOfPhonesInWord >> noOfPhonesInEachWord")
    (fclose myfilepointer)

(system (string-append "chmod +x " ( path-append cdac_marathi_ganeshnew::dir "parser.sh")))
  (system ( path-append cdac_marathi_ganeshnew::dir "parser.sh"))
  (load (path-append cdac_marathi_ganeshnew::dir "wordpronunciation"))
  (list word nil wordstruct)
)

))


(define (cdac_marathi_lts_function_orig word features)
   "(cdac_marathi_lts_function WORD FEATURES)
 Return pronunciation of word not in lexicon."
  ;(system "cd /home/pranaw/cdac_marathi_syllable2/")
(print "pranaw in cdac_marathi_lts_function")
(print "word" )
(print word )
  (cond
   
    ((string-equal "MSIL" word )(set! wordstruct '( (("MSIL") 0)  ))(list word nil wordstruct))
   ((string-equal "VLSIL" word )(set! wordstruct '( (("VLSIL") 0)  ))(list word nil wordstruct))
   ((string-equal "LSIL" word )(set! wordstruct '( (("LSIL") 0)  ))(list word nil wordstruct))
   ((string-equal "SSIL" word )(set! wordstruct '( (("SSIL") 0)  ))(list word nil wordstruct))
 ((string-equal "VSSIL" word )(set! wordstruct '( (("VSSIL") 0)  ))(list word nil wordstruct))
   ((string-equal "VVSSIL" word )(set! wordstruct '( (("VVSSIL") 0)  ))(list word nil wordstruct))
 ((string-equal "VVVSSIL" word )(set! wordstruct '( (("VVVSSIL") 0)  ))(list word nil wordstruct))
 ((string-equal "mono" word )(print "vishal" )(set! myfilepointer (fopen "unit_size.sh" "w")) (format myfilepointer "%s" "mono" )(fclose myfilepointer))  
 ((string-equal "phone" word )(print "vishal" )(set! myfilepointer (fopen "unit_size.sh" "w")) (format myfilepointer "%s" "phone" )(fclose myfilepointer))  
   
   
   (t 
; (set! myfilepointer (fopen "/home/boss/voices/cdac_marathi_bme6a/parser.sh" "w"))
; (set! myfilepointer (fopen "/usr/share/festival/voices/marathi/cdac_marathi_bme7_clunits/parser.sh" "w"))  
(set! myfilepointer (fopen "./parser.sh" "w"))      
 ; (format myfilepointer "perl bin/il_parser.pl %s " word)il_parser_mono_bme_train_pranaw_word_exclisive
;; (format myfilepointer " \n perl ./bin/il_parser_mono_bme_train_pranaw.pl %s " word) 
 (format myfilepointer " \n perl ./bin/il_parser_hts_marathi.pl %s " word)
;(format myfilepointer " \n perl ./bin/il_parser_mono_bme_train_pranaw_word_exclusive.pl %s " word) 

   ;(format myfilepointer " \n perl /usr/share/festival/voices/marathi/cdac_marathi_bme7_clunits/bin/il_parser_mono_bme_test_pranaw1.pl %s " word)  ;;without pause
;(format myfilepointer " \n perl ./bin/il_parser_mono_bme_test_pranaw1.pl %s " word)  ;;without pause
;(format myfilepointer " \n perl ./bin/il_parser_test.pl %s " word)  ;;without pause

; (format myfilepointer " \n perl ./bin/il_parser_mono_bme_test_pranaw_pause.pl %s " word)  ;; pause after only specific words
(fclose myfilepointer)

  ;(system "sudo chmod +x ./parser.sh")
  (system "./parser.sh")
; (system "sh /usr/share/festival/voices/marathi/cdac_marathi_bme7_clunits/parser.sh")
  ;(format t "%l\n" word)
 ; (load "/usr/share/festival/voices/marathi/cdac_marathi_bme7_clunits/wordpronunciation")
 (load "wordpronunciation")

  (list word nil wordstruct)))
)

; ;;;  Function called when word not found in lexicon
; (define (cdac_marathi_lts_function word features)
;   "(cdac_marathi_lts_function WORD FEATURES)
; Return pronunciation of word not in lexicon."
;   (format stderr "failed to find pronunciation for %s\n" word)
;   (let ((dword (downcase word)))
;     ;; Note you may need to use a letter to sound rule set to do
;     ;; casing if the language has non-ascii characters in it.
;     (if (lts.in.alphabet word 'cdac_marathi)
; 	(list
; 	 word
; 	 features
; 	 ;; This syllabification is almost certainly wrong for
; 	 ;; this language (its not even very good for English)
; 	 ;; but it will give you something to start off with
; 	 (lex.syllabify.phstress
; 	   (lts.apply word 'cdac_marathi)))
; 	(begin
; 	  (format stderr "unpronouncable word %s\n" word)
; 	  ;; Put in a word that means "unknown" with its pronunciation
; 	  '("nepoznat" nil (((N EH P) 0) ((AO Z) 0) ((N AA T) 0))))))
; )

; ;; You may or may not be able to write a letter to sound rule set for
; ;; your language.  If its largely lexicon based learning a rule
; ;; set will be better and easier that writing one (probably).
; (lts.ruleset
;  cdac_marathi
;  (  (Vowel WHATEVER) )
;  (
;   ;; LTS rules 
;   ))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Postlexical Rules 
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define (cdac_marathi::postlex_rule1 utt)
  "(cdac_marathi::postlex_rule1 utt)
A postlexical rule form correcting phenomena over word boundaries."
  (mapcar
   (lambda (s)
     ;; do something
     )
   (utt.relation.items utt 'Segment))
   utt)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Lexicon definition
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(lex.create "cdac_marathi")
(lex.set.phoneset "cdac_marathi")
(lex.set.lts.method 'cdac_marathi_lts_function)
(if (probe_file (path-append cdac_marathi_ganeshnew::dir "festvox/cdac_marathi_lex.out"))
    (lex.set.compile.file (path-append cdac_marathi_ganeshnew::dir 
                                       "festvox/cdac_marathi_lex.out")))
(cdac_marathi_addenda)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Lexicon setup
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define (cdac_marathi_ganeshnew::select_lexicon)
  "(cdac_marathi_ganeshnew::select_lexicon)
Set up the lexicon for cdac_marathi."
  (lex.select "cdac_marathi")

  ;; Post lexical rules
  (set! postlex_rules_hooks (list cdac_marathi::postlex_rule1))
)

(define (cdac_marathi_ganeshnew::reset_lexicon)
  "(cdac_marathi_ganeshnew::reset_lexicon)
Reset lexicon information."
  t
)

(provide 'cdac_marathi_ganeshnew_lexicon)
