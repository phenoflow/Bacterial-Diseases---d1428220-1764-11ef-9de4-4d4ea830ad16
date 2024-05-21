cwlVersion: v1.0
steps:
  read-potential-cases-omop:
    run: read-potential-cases-omop.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule1
  bacterial-diseases-excl-tb-pneumoniae---secondary:
    run: bacterial-diseases-excl-tb-pneumoniae---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule2
      potentialCases:
        id: potentialCases
        source: read-potential-cases-omop/output
  bacterial-diseases-excl-tb---secondary:
    run: bacterial-diseases-excl-tb---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule3
      potentialCases:
        id: potentialCases
        source: bacterial-diseases-excl-tb-pneumoniae---secondary/output
  infectious-bacterial-diseases-excl-tb---secondary:
    run: infectious-bacterial-diseases-excl-tb---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule4
      potentialCases:
        id: potentialCases
        source: bacterial-diseases-excl-tb---secondary/output
  bacterial-diseases-excl-tb-rickettsioses---secondary:
    run: bacterial-diseases-excl-tb-rickettsioses---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule5
      potentialCases:
        id: potentialCases
        source: infectious-bacterial-diseases-excl-tb---secondary/output
  bacterial-diseases-excl-tb-streptococcu---secondary:
    run: bacterial-diseases-excl-tb-streptococcu---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule6
      potentialCases:
        id: potentialCases
        source: bacterial-diseases-excl-tb-rickettsioses---secondary/output
  bacterial-diseases-excl-tb-erysipelas---secondary:
    run: bacterial-diseases-excl-tb-erysipelas---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule7
      potentialCases:
        id: potentialCases
        source: bacterial-diseases-excl-tb-streptococcu---secondary/output
  bacterial-diseases-excl-tb-valve---secondary:
    run: bacterial-diseases-excl-tb-valve---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule8
      potentialCases:
        id: potentialCases
        source: bacterial-diseases-excl-tb-erysipelas---secondary/output
  bacterial-diseases-excl-tb-brucellosis---secondary:
    run: bacterial-diseases-excl-tb-brucellosis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule9
      potentialCases:
        id: potentialCases
        source: bacterial-diseases-excl-tb-valve---secondary/output
  bacterial-diseases-excl-tb-agent---secondary:
    run: bacterial-diseases-excl-tb-agent---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule10
      potentialCases:
        id: potentialCases
        source: bacterial-diseases-excl-tb-brucellosis---secondary/output
  bacterial-diseases-excl-tb-sequelae---secondary:
    run: bacterial-diseases-excl-tb-sequelae---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule11
      potentialCases:
        id: potentialCases
        source: bacterial-diseases-excl-tb-agent---secondary/output
  meningococcal-bacterial-diseases-excl-tb---secondary:
    run: meningococcal-bacterial-diseases-excl-tb---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule12
      potentialCases:
        id: potentialCases
        source: bacterial-diseases-excl-tb-sequelae---secondary/output
  bacterial-diseases-excl-tb-involvement---secondary:
    run: bacterial-diseases-excl-tb-involvement---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule13
      potentialCases:
        id: potentialCases
        source: meningococcal-bacterial-diseases-excl-tb---secondary/output
  other-bacterial-diseases-excl-tb---secondary:
    run: other-bacterial-diseases-excl-tb---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule14
      potentialCases:
        id: potentialCases
        source: bacterial-diseases-excl-tb-involvement---secondary/output
  bacterial-diseases-excl-tb-classified---secondary:
    run: bacterial-diseases-excl-tb-classified---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule15
      potentialCases:
        id: potentialCases
        source: other-bacterial-diseases-excl-tb---secondary/output
  bacterial-diseases-excl-tb-abscess---secondary:
    run: bacterial-diseases-excl-tb-abscess---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule16
      potentialCases:
        id: potentialCases
        source: bacterial-diseases-excl-tb-classified---secondary/output
  bacterial-diseases-excl-tb-carbuncle---secondary:
    run: bacterial-diseases-excl-tb-carbuncle---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule17
      potentialCases:
        id: potentialCases
        source: bacterial-diseases-excl-tb-abscess---secondary/output
  bacterial-diseases-excl-tb-chlamydia---secondary:
    run: bacterial-diseases-excl-tb-chlamydia---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule18
      potentialCases:
        id: potentialCases
        source: bacterial-diseases-excl-tb-carbuncle---secondary/output
  chancroid-bacterial-diseases-excl-tb---secondary:
    run: chancroid-bacterial-diseases-excl-tb---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule19
      potentialCases:
        id: potentialCases
        source: bacterial-diseases-excl-tb-chlamydia---secondary/output
  bacterial-diseases-excl-tb-yaws---secondary:
    run: bacterial-diseases-excl-tb-yaws---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule20
      potentialCases:
        id: potentialCases
        source: chancroid-bacterial-diseases-excl-tb---secondary/output
  bacterial-diseases-excl-tb-cervix---secondary:
    run: bacterial-diseases-excl-tb-cervix---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule21
      potentialCases:
        id: potentialCases
        source: bacterial-diseases-excl-tb-yaws---secondary/output
  bacterial-diseases-excl-tb-unspecified---secondary:
    run: bacterial-diseases-excl-tb-unspecified---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule22
      potentialCases:
        id: potentialCases
        source: bacterial-diseases-excl-tb-cervix---secondary/output
  bacterial-diseases-excl-tb-prostatocystitis---secondary:
    run: bacterial-diseases-excl-tb-prostatocystitis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule23
      potentialCases:
        id: potentialCases
        source: bacterial-diseases-excl-tb-unspecified---secondary/output
  bacterial-diseases-excl-tb-erythrasma---secondary:
    run: bacterial-diseases-excl-tb-erythrasma---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule24
      potentialCases:
        id: potentialCases
        source: bacterial-diseases-excl-tb-prostatocystitis---secondary/output
  bacterial-diseases-excl-tb-peritonitis---secondary:
    run: bacterial-diseases-excl-tb-peritonitis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule25
      potentialCases:
        id: potentialCases
        source: bacterial-diseases-excl-tb-erythrasma---secondary/output
  rheumatic-bacterial-diseases-excl-tb---secondary:
    run: rheumatic-bacterial-diseases-excl-tb---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule26
      potentialCases:
        id: potentialCases
        source: bacterial-diseases-excl-tb-peritonitis---secondary/output
  bacterial-diseases-excl-tb-meningitis---secondary:
    run: bacterial-diseases-excl-tb-meningitis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule27
      potentialCases:
        id: potentialCases
        source: rheumatic-bacterial-diseases-excl-tb---secondary/output
  bacterial-diseases-excl-tb-bronchitis---secondary:
    run: bacterial-diseases-excl-tb-bronchitis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule28
      potentialCases:
        id: potentialCases
        source: bacterial-diseases-excl-tb-meningitis---secondary/output
  staphylococcal-bacterial-diseases-excl-tb---secondary:
    run: staphylococcal-bacterial-diseases-excl-tb---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule29
      potentialCases:
        id: potentialCases
        source: bacterial-diseases-excl-tb-bronchitis---secondary/output
  bacterial-diseases-excl-tb-diphtheria---secondary:
    run: bacterial-diseases-excl-tb-diphtheria---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule30
      potentialCases:
        id: potentialCases
        source: staphylococcal-bacterial-diseases-excl-tb---secondary/output
  bacterial-diseases-excl-tb-cholera---secondary:
    run: bacterial-diseases-excl-tb-cholera---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule31
      potentialCases:
        id: potentialCases
        source: bacterial-diseases-excl-tb-diphtheria---secondary/output
  bacterial-diseases-excl-tb-polyarthritis---secondary:
    run: bacterial-diseases-excl-tb-polyarthritis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule32
      potentialCases:
        id: potentialCases
        source: bacterial-diseases-excl-tb-cholera---secondary/output
  bacterial-diseases-excl-tb-listeriosis---secondary:
    run: bacterial-diseases-excl-tb-listeriosis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule33
      potentialCases:
        id: potentialCases
        source: bacterial-diseases-excl-tb-polyarthritis---secondary/output
  bacterial-diseases-excl-tb-sepsis---secondary:
    run: bacterial-diseases-excl-tb-sepsis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule34
      potentialCases:
        id: potentialCases
        source: bacterial-diseases-excl-tb-listeriosis---secondary/output
  erysipeloid-bacterial-diseases-excl-tb---secondary:
    run: erysipeloid-bacterial-diseases-excl-tb---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule35
      potentialCases:
        id: potentialCases
        source: bacterial-diseases-excl-tb-sepsis---secondary/output
  bacterial-diseases-excl-tb-plague---secondary:
    run: bacterial-diseases-excl-tb-plague---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule36
      potentialCases:
        id: potentialCases
        source: erysipeloid-bacterial-diseases-excl-tb---secondary/output
  bacterial-diseases-excl-tb-actinomycosis---secondary:
    run: bacterial-diseases-excl-tb-actinomycosis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule37
      potentialCases:
        id: potentialCases
        source: bacterial-diseases-excl-tb-plague---secondary/output
  infective-bacterial-diseases-excl-tb---secondary:
    run: infective-bacterial-diseases-excl-tb---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule38
      potentialCases:
        id: potentialCases
        source: bacterial-diseases-excl-tb-actinomycosis---secondary/output
  bacterial-diseases-excl-tb-pyothorax---secondary:
    run: bacterial-diseases-excl-tb-pyothorax---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule39
      potentialCases:
        id: potentialCases
        source: infective-bacterial-diseases-excl-tb---secondary/output
  bacterial-diseases-excl-tb-spondylitis---secondary:
    run: bacterial-diseases-excl-tb-spondylitis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule40
      potentialCases:
        id: potentialCases
        source: bacterial-diseases-excl-tb-pyothorax---secondary/output
  bacterial-diseases-excl-tb-otitis---secondary:
    run: bacterial-diseases-excl-tb-otitis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule41
      potentialCases:
        id: potentialCases
        source: bacterial-diseases-excl-tb-spondylitis---secondary/output
  bacterial-diseases-excl-tb-trachoma---secondary:
    run: bacterial-diseases-excl-tb-trachoma---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule42
      potentialCases:
        id: potentialCases
        source: bacterial-diseases-excl-tb-otitis---secondary/output
  bacterial-diseases-excl-tb-syphilis---secondary:
    run: bacterial-diseases-excl-tb-syphilis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule43
      potentialCases:
        id: potentialCases
        source: bacterial-diseases-excl-tb-trachoma---secondary/output
  congenital-bacterial-diseases-excl-tb---secondary:
    run: congenital-bacterial-diseases-excl-tb---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule44
      potentialCases:
        id: potentialCases
        source: bacterial-diseases-excl-tb-syphilis---secondary/output
  bacterial-diseases-excl-tb-chapter---secondary:
    run: bacterial-diseases-excl-tb-chapter---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule45
      potentialCases:
        id: potentialCases
        source: congenital-bacterial-diseases-excl-tb---secondary/output
  bacterial-diseases-excl-tb-nocardiosis---secondary:
    run: bacterial-diseases-excl-tb-nocardiosis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule46
      potentialCases:
        id: potentialCases
        source: bacterial-diseases-excl-tb-chapter---secondary/output
  bacterial-diseases-excl-tb-fever---secondary:
    run: bacterial-diseases-excl-tb-fever---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule47
      potentialCases:
        id: potentialCases
        source: bacterial-diseases-excl-tb-nocardiosis---secondary/output
  bacterial-diseases-excl-tb-influenzae---secondary:
    run: bacterial-diseases-excl-tb-influenzae---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule48
      potentialCases:
        id: potentialCases
        source: bacterial-diseases-excl-tb-fever---secondary/output
  bacterial-diseases-excl-tb-bursitis---secondary:
    run: bacterial-diseases-excl-tb-bursitis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule49
      potentialCases:
        id: potentialCases
        source: bacterial-diseases-excl-tb-influenzae---secondary/output
  gonococcal-bacterial-diseases-excl-tb---secondary:
    run: gonococcal-bacterial-diseases-excl-tb---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule50
      potentialCases:
        id: potentialCases
        source: bacterial-diseases-excl-tb-bursitis---secondary/output
  bacterial-diseases-excl-tb-bartonellosis---secondary:
    run: bacterial-diseases-excl-tb-bartonellosis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule51
      potentialCases:
        id: potentialCases
        source: gonococcal-bacterial-diseases-excl-tb---secondary/output
  bacterial-diseases-excl-tb-leptospirosis---secondary:
    run: bacterial-diseases-excl-tb-leptospirosis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule52
      potentialCases:
        id: potentialCases
        source: bacterial-diseases-excl-tb-bartonellosis---secondary/output
  bacterial-diseases-excl-tb-heart---secondary:
    run: bacterial-diseases-excl-tb-heart---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule53
      potentialCases:
        id: potentialCases
        source: bacterial-diseases-excl-tb-leptospirosis---secondary/output
  pelvic-bacterial-diseases-excl-tb---secondary:
    run: pelvic-bacterial-diseases-excl-tb---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule54
      potentialCases:
        id: potentialCases
        source: bacterial-diseases-excl-tb-heart---secondary/output
  bacterial-diseases-excl-tb-osteomyelitis---secondary:
    run: bacterial-diseases-excl-tb-osteomyelitis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule55
      potentialCases:
        id: potentialCases
        source: pelvic-bacterial-diseases-excl-tb---secondary/output
  bacterial-diseases-excl-tb-shigellosis---secondary:
    run: bacterial-diseases-excl-tb-shigellosis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule56
      potentialCases:
        id: potentialCases
        source: bacterial-diseases-excl-tb-osteomyelitis---secondary/output
  bacterial-diseases-excl-tb-impetigo---secondary:
    run: bacterial-diseases-excl-tb-impetigo---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule57
      potentialCases:
        id: potentialCases
        source: bacterial-diseases-excl-tb-shigellosis---secondary/output
  bacterial-diseases-excl-tb-anthrax---secondary:
    run: bacterial-diseases-excl-tb-anthrax---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule58
      potentialCases:
        id: potentialCases
        source: bacterial-diseases-excl-tb-impetigo---secondary/output
  bacterial-diseases-excl-tb-pyonephrosis---secondary:
    run: bacterial-diseases-excl-tb-pyonephrosis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule59
      potentialCases:
        id: potentialCases
        source: bacterial-diseases-excl-tb-anthrax---secondary/output
  bacterial-diseases-excl-tb-tularaemia---secondary:
    run: bacterial-diseases-excl-tb-tularaemia---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule60
      potentialCases:
        id: potentialCases
        source: bacterial-diseases-excl-tb-pyonephrosis---secondary/output
  bacterial-diseases-excl-tb-synovitis---secondary:
    run: bacterial-diseases-excl-tb-synovitis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule61
      potentialCases:
        id: potentialCases
        source: bacterial-diseases-excl-tb-tularaemia---secondary/output
  acute-bacterial-diseases-excl-tb---secondary:
    run: acute-bacterial-diseases-excl-tb---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule62
      potentialCases:
        id: potentialCases
        source: bacterial-diseases-excl-tb-synovitis---secondary/output
  bacterial-diseases-excl-tb-cellulitis---secondary:
    run: bacterial-diseases-excl-tb-cellulitis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule63
      potentialCases:
        id: potentialCases
        source: acute-bacterial-diseases-excl-tb---secondary/output
  bacterial-diseases-excl-tb-leprosy---secondary:
    run: bacterial-diseases-excl-tb-leprosy---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule64
      potentialCases:
        id: potentialCases
        source: bacterial-diseases-excl-tb-cellulitis---secondary/output
  output-cases:
    run: output-cases.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule65
      potentialCases:
        id: potentialCases
        source: bacterial-diseases-excl-tb-leprosy---secondary/output
class: Workflow
inputs:
  inputModule1:
    id: inputModule1
    doc: Js implementation unit
    type: File
  inputModule2:
    id: inputModule2
    doc: Python implementation unit
    type: File
  inputModule3:
    id: inputModule3
    doc: Python implementation unit
    type: File
  inputModule4:
    id: inputModule4
    doc: Python implementation unit
    type: File
  inputModule5:
    id: inputModule5
    doc: Python implementation unit
    type: File
  inputModule6:
    id: inputModule6
    doc: Python implementation unit
    type: File
  inputModule7:
    id: inputModule7
    doc: Python implementation unit
    type: File
  inputModule8:
    id: inputModule8
    doc: Python implementation unit
    type: File
  inputModule9:
    id: inputModule9
    doc: Python implementation unit
    type: File
  inputModule10:
    id: inputModule10
    doc: Python implementation unit
    type: File
  inputModule11:
    id: inputModule11
    doc: Python implementation unit
    type: File
  inputModule12:
    id: inputModule12
    doc: Python implementation unit
    type: File
  inputModule13:
    id: inputModule13
    doc: Python implementation unit
    type: File
  inputModule14:
    id: inputModule14
    doc: Python implementation unit
    type: File
  inputModule15:
    id: inputModule15
    doc: Python implementation unit
    type: File
  inputModule16:
    id: inputModule16
    doc: Python implementation unit
    type: File
  inputModule17:
    id: inputModule17
    doc: Python implementation unit
    type: File
  inputModule18:
    id: inputModule18
    doc: Python implementation unit
    type: File
  inputModule19:
    id: inputModule19
    doc: Python implementation unit
    type: File
  inputModule20:
    id: inputModule20
    doc: Python implementation unit
    type: File
  inputModule21:
    id: inputModule21
    doc: Python implementation unit
    type: File
  inputModule22:
    id: inputModule22
    doc: Python implementation unit
    type: File
  inputModule23:
    id: inputModule23
    doc: Python implementation unit
    type: File
  inputModule24:
    id: inputModule24
    doc: Python implementation unit
    type: File
  inputModule25:
    id: inputModule25
    doc: Python implementation unit
    type: File
  inputModule26:
    id: inputModule26
    doc: Python implementation unit
    type: File
  inputModule27:
    id: inputModule27
    doc: Python implementation unit
    type: File
  inputModule28:
    id: inputModule28
    doc: Python implementation unit
    type: File
  inputModule29:
    id: inputModule29
    doc: Python implementation unit
    type: File
  inputModule30:
    id: inputModule30
    doc: Python implementation unit
    type: File
  inputModule31:
    id: inputModule31
    doc: Python implementation unit
    type: File
  inputModule32:
    id: inputModule32
    doc: Python implementation unit
    type: File
  inputModule33:
    id: inputModule33
    doc: Python implementation unit
    type: File
  inputModule34:
    id: inputModule34
    doc: Python implementation unit
    type: File
  inputModule35:
    id: inputModule35
    doc: Python implementation unit
    type: File
  inputModule36:
    id: inputModule36
    doc: Python implementation unit
    type: File
  inputModule37:
    id: inputModule37
    doc: Python implementation unit
    type: File
  inputModule38:
    id: inputModule38
    doc: Python implementation unit
    type: File
  inputModule39:
    id: inputModule39
    doc: Python implementation unit
    type: File
  inputModule40:
    id: inputModule40
    doc: Python implementation unit
    type: File
  inputModule41:
    id: inputModule41
    doc: Python implementation unit
    type: File
  inputModule42:
    id: inputModule42
    doc: Python implementation unit
    type: File
  inputModule43:
    id: inputModule43
    doc: Python implementation unit
    type: File
  inputModule44:
    id: inputModule44
    doc: Python implementation unit
    type: File
  inputModule45:
    id: inputModule45
    doc: Python implementation unit
    type: File
  inputModule46:
    id: inputModule46
    doc: Python implementation unit
    type: File
  inputModule47:
    id: inputModule47
    doc: Python implementation unit
    type: File
  inputModule48:
    id: inputModule48
    doc: Python implementation unit
    type: File
  inputModule49:
    id: inputModule49
    doc: Python implementation unit
    type: File
  inputModule50:
    id: inputModule50
    doc: Python implementation unit
    type: File
  inputModule51:
    id: inputModule51
    doc: Python implementation unit
    type: File
  inputModule52:
    id: inputModule52
    doc: Python implementation unit
    type: File
  inputModule53:
    id: inputModule53
    doc: Python implementation unit
    type: File
  inputModule54:
    id: inputModule54
    doc: Python implementation unit
    type: File
  inputModule55:
    id: inputModule55
    doc: Python implementation unit
    type: File
  inputModule56:
    id: inputModule56
    doc: Python implementation unit
    type: File
  inputModule57:
    id: inputModule57
    doc: Python implementation unit
    type: File
  inputModule58:
    id: inputModule58
    doc: Python implementation unit
    type: File
  inputModule59:
    id: inputModule59
    doc: Python implementation unit
    type: File
  inputModule60:
    id: inputModule60
    doc: Python implementation unit
    type: File
  inputModule61:
    id: inputModule61
    doc: Python implementation unit
    type: File
  inputModule62:
    id: inputModule62
    doc: Python implementation unit
    type: File
  inputModule63:
    id: inputModule63
    doc: Python implementation unit
    type: File
  inputModule64:
    id: inputModule64
    doc: Python implementation unit
    type: File
  inputModule65:
    id: inputModule65
    doc: Python implementation unit
    type: File
outputs:
  cases:
    id: cases
    type: File
    outputSource: output-cases/output
    outputBinding:
      glob: '*.csv'
requirements:
  SubworkflowFeatureRequirement: {}
