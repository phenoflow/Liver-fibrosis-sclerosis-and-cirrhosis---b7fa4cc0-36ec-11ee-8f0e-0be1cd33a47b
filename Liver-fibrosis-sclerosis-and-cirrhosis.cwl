cwlVersion: v1.0
steps:
  read-potential-cases-i2b2:
    run: read-potential-cases-i2b2.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule1
  hepatic-liver-fibrosis-sclerosis-and-cirrhosis---primary:
    run: hepatic-liver-fibrosis-sclerosis-and-cirrhosis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule2
      potentialCases:
        id: potentialCases
        source: read-potential-cases-i2b2/output
  liver-fibrosis-sclerosis-and-cirrhosis---primary:
    run: liver-fibrosis-sclerosis-and-cirrhosis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule3
      potentialCases:
        id: potentialCases
        source: hepatic-liver-fibrosis-sclerosis-and-cirrhosis---primary/output
  liver-fibrosis-sclerosis-and-cirrhosis-varice---primary:
    run: liver-fibrosis-sclerosis-and-cirrhosis-varice---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule4
      potentialCases:
        id: potentialCases
        source: liver-fibrosis-sclerosis-and-cirrhosis---primary/output
  chronic-liver-fibrosis-sclerosis-and-cirrhosis---primary:
    run: chronic-liver-fibrosis-sclerosis-and-cirrhosis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule5
      potentialCases:
        id: potentialCases
        source: liver-fibrosis-sclerosis-and-cirrhosis-varice---primary/output
  alcoholic-liver-fibrosis-sclerosis-and-cirrhosis---primary:
    run: alcoholic-liver-fibrosis-sclerosis-and-cirrhosis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule6
      potentialCases:
        id: potentialCases
        source: chronic-liver-fibrosis-sclerosis-and-cirrhosis---primary/output
  liver-fibrosis-sclerosis-and-cirrhosis-unspecified---primary:
    run: liver-fibrosis-sclerosis-and-cirrhosis-unspecified---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule7
      potentialCases:
        id: potentialCases
        source: alcoholic-liver-fibrosis-sclerosis-and-cirrhosis---primary/output
  portal-liver-fibrosis-sclerosis-and-cirrhosis---primary:
    run: portal-liver-fibrosis-sclerosis-and-cirrhosis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule8
      potentialCases:
        id: potentialCases
        source: liver-fibrosis-sclerosis-and-cirrhosis-unspecified---primary/output
  liver-fibrosis-sclerosis-and-cirrhosis-biliary---primary:
    run: liver-fibrosis-sclerosis-and-cirrhosis-biliary---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule9
      potentialCases:
        id: potentialCases
        source: portal-liver-fibrosis-sclerosis-and-cirrhosis---primary/output
  liver-fibrosis-sclerosis-and-cirrhosis-hepatitis---primary:
    run: liver-fibrosis-sclerosis-and-cirrhosis-hepatitis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule10
      potentialCases:
        id: potentialCases
        source: liver-fibrosis-sclerosis-and-cirrhosis-biliary---primary/output
  alcoholic-liver-fibrosis-sclerosis-and-cirrhosis---secondary:
    run: alcoholic-liver-fibrosis-sclerosis-and-cirrhosis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule11
      potentialCases:
        id: potentialCases
        source: liver-fibrosis-sclerosis-and-cirrhosis-hepatitis---primary/output
  liver-fibrosis-sclerosis-and-cirrhosis---secondary:
    run: liver-fibrosis-sclerosis-and-cirrhosis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule12
      potentialCases:
        id: potentialCases
        source: alcoholic-liver-fibrosis-sclerosis-and-cirrhosis---secondary/output
  hepatic-liver-fibrosis-sclerosis-and-cirrhosis---secondary:
    run: hepatic-liver-fibrosis-sclerosis-and-cirrhosis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule13
      potentialCases:
        id: potentialCases
        source: liver-fibrosis-sclerosis-and-cirrhosis---secondary/output
  liver-fibrosis-sclerosis-and-cirrhosis-biliary---secondary:
    run: liver-fibrosis-sclerosis-and-cirrhosis-biliary---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule14
      potentialCases:
        id: potentialCases
        source: hepatic-liver-fibrosis-sclerosis-and-cirrhosis---secondary/output
  liver-fibrosis-sclerosis-and-cirrhosis-unspecified---secondary:
    run: liver-fibrosis-sclerosis-and-cirrhosis-unspecified---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule15
      potentialCases:
        id: potentialCases
        source: liver-fibrosis-sclerosis-and-cirrhosis-biliary---secondary/output
  output-cases:
    run: output-cases.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule16
      potentialCases:
        id: potentialCases
        source: liver-fibrosis-sclerosis-and-cirrhosis-unspecified---secondary/output
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
outputs:
  cases:
    id: cases
    type: File
    outputSource: output-cases/output
    outputBinding:
      glob: '*.csv'
requirements:
  SubworkflowFeatureRequirement: {}
