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
  death-by-mental-and-behavioural-disorders-natural-cause-classified---secondary:
    run: death-by-mental-and-behavioural-disorders-natural-cause-classified---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule2
      potentialCases:
        id: potentialCases
        source: read-potential-cases-omop/output
  death-by-mental-and-behavioural-disorders-natural-cause-disturbance---secondary:
    run: death-by-mental-and-behavioural-disorders-natural-cause-disturbance---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule3
      potentialCases:
        id: potentialCases
        source: death-by-mental-and-behavioural-disorders-natural-cause-classified---secondary/output
  death-by-mental-and-behavioural-disorders-natural-cause-undifferentiated---secondary:
    run: death-by-mental-and-behavioural-disorders-natural-cause-undifferentiated---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule4
      potentialCases:
        id: potentialCases
        source: death-by-mental-and-behavioural-disorders-natural-cause-disturbance---secondary/output
  death-by-mental-and-behavioural-disorders-natural-cause-affect---secondary:
    run: death-by-mental-and-behavioural-disorders-natural-cause-affect---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule5
      potentialCases:
        id: potentialCases
        source: death-by-mental-and-behavioural-disorders-natural-cause-undifferentiated---secondary/output
  current-death-by-mental-and-behavioural-disorders-natural-cause---secondary:
    run: current-death-by-mental-and-behavioural-disorders-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule6
      potentialCases:
        id: potentialCases
        source: death-by-mental-and-behavioural-disorders-natural-cause-affect---secondary/output
  death-by-mental-and-behavioural-disorders-natural-cause-development---secondary:
    run: death-by-mental-and-behavioural-disorders-natural-cause-development---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule7
      potentialCases:
        id: potentialCases
        source: current-death-by-mental-and-behavioural-disorders-natural-cause---secondary/output
  death-by-mental-and-behavioural-disorders-natural-cause-unspec---secondary:
    run: death-by-mental-and-behavioural-disorders-natural-cause-unspec---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule8
      potentialCases:
        id: potentialCases
        source: death-by-mental-and-behavioural-disorders-natural-cause-development---secondary/output
  death-by-mental-and-behavioural-disorders-natural-cause-depress---secondary:
    run: death-by-mental-and-behavioural-disorders-natural-cause-depress---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule9
      potentialCases:
        id: potentialCases
        source: death-by-mental-and-behavioural-disorders-natural-cause-unspec---secondary/output
  death-by-mental-and-behavioural-disorders-natural-cause-delir---secondary:
    run: death-by-mental-and-behavioural-disorders-natural-cause-delir---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule10
      potentialCases:
        id: potentialCases
        source: death-by-mental-and-behavioural-disorders-natural-cause-depress---secondary/output
  death-by-mental-and-behavioural-disorders-natural-cause-mania---secondary:
    run: death-by-mental-and-behavioural-disorders-natural-cause-mania---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule11
      potentialCases:
        id: potentialCases
        source: death-by-mental-and-behavioural-disorders-natural-cause-delir---secondary/output
  death-by-mental-and-behavioural-disorders-natural-cause-phobia---secondary:
    run: death-by-mental-and-behavioural-disorders-natural-cause-phobia---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule12
      potentialCases:
        id: potentialCases
        source: death-by-mental-and-behavioural-disorders-natural-cause-mania---secondary/output
  death-by-mental-and-behavioural-disorders-natural-cause-associated---secondary:
    run: death-by-mental-and-behavioural-disorders-natural-cause-associated---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule13
      potentialCases:
        id: potentialCases
        source: death-by-mental-and-behavioural-disorders-natural-cause-phobia---secondary/output
  death-by-mental-and-behavioural-disorders-natural-cause-substance---secondary:
    run: death-by-mental-and-behavioural-disorders-natural-cause-substance---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule14
      potentialCases:
        id: potentialCases
        source: death-by-mental-and-behavioural-disorders-natural-cause-associated---secondary/output
  death-by-mental-and-behavioural-disorders-natural-cause-organ---secondary:
    run: death-by-mental-and-behavioural-disorders-natural-cause-organ---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule15
      potentialCases:
        id: potentialCases
        source: death-by-mental-and-behavioural-disorders-natural-cause-substance---secondary/output
  psychosexual-death-by-mental-and-behavioural-disorders-natural-cause---secondary:
    run: psychosexual-death-by-mental-and-behavioural-disorders-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule16
      potentialCases:
        id: potentialCases
        source: death-by-mental-and-behavioural-disorders-natural-cause-organ---secondary/output
  subcortical-death-by-mental-and-behavioural-disorders-natural-cause---secondary:
    run: subcortical-death-by-mental-and-behavioural-disorders-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule17
      potentialCases:
        id: potentialCases
        source: psychosexual-death-by-mental-and-behavioural-disorders-natural-cause---secondary/output
  death-by-mental-and-behavioural-disorders-natural-cause-mention---secondary:
    run: death-by-mental-and-behavioural-disorders-natural-cause-mention---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule18
      potentialCases:
        id: potentialCases
        source: subcortical-death-by-mental-and-behavioural-disorders-natural-cause---secondary/output
  death-by-mental-and-behavioural-disorders-natural-cause-conduct---secondary:
    run: death-by-mental-and-behavioural-disorders-natural-cause-conduct---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule19
      potentialCases:
        id: potentialCases
        source: death-by-mental-and-behavioural-disorders-natural-cause-mention---secondary/output
  manic-death-by-mental-and-behavioural-disorders-natural-cause---secondary:
    run: manic-death-by-mental-and-behavioural-disorders-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule20
      potentialCases:
        id: potentialCases
        source: death-by-mental-and-behavioural-disorders-natural-cause-conduct---secondary/output
  death-by-mental-and-behavioural-disorders-natural-cause-adjustment---secondary:
    run: death-by-mental-and-behavioural-disorders-natural-cause-adjustment---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule21
      potentialCases:
        id: potentialCases
        source: manic-death-by-mental-and-behavioural-disorders-natural-cause---secondary/output
  death-by-mental-and-behavioural-disorders-natural-cause-schizophrenialike---secondary:
    run: death-by-mental-and-behavioural-disorders-natural-cause-schizophrenialike---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule22
      potentialCases:
        id: potentialCases
        source: death-by-mental-and-behavioural-disorders-natural-cause-adjustment---secondary/output
  death-by-mental-and-behavioural-disorders-natural-cause-somatoform---secondary:
    run: death-by-mental-and-behavioural-disorders-natural-cause-somatoform---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule23
      potentialCases:
        id: potentialCases
        source: death-by-mental-and-behavioural-disorders-natural-cause-schizophrenialike---secondary/output
  other-death-by-mental-and-behavioural-disorders-natural-cause---secondary:
    run: other-death-by-mental-and-behavioural-disorders-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule24
      potentialCases:
        id: potentialCases
        source: death-by-mental-and-behavioural-disorders-natural-cause-somatoform---secondary/output
  vascular-death-by-mental-and-behavioural-disorders-natural-cause---secondary:
    run: vascular-death-by-mental-and-behavioural-disorders-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule25
      potentialCases:
        id: potentialCases
        source: other-death-by-mental-and-behavioural-disorders-natural-cause---secondary/output
  death-by-mental-and-behavioural-disorders-natural-cause-anxiety---secondary:
    run: death-by-mental-and-behavioural-disorders-natural-cause-anxiety---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule26
      potentialCases:
        id: potentialCases
        source: vascular-death-by-mental-and-behavioural-disorders-natural-cause---secondary/output
  death-by-mental-and-behavioural-disorders-natural-cause-treatment---secondary:
    run: death-by-mental-and-behavioural-disorders-natural-cause-treatment---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule27
      potentialCases:
        id: potentialCases
        source: death-by-mental-and-behavioural-disorders-natural-cause-anxiety---secondary/output
  death-by-mental-and-behavioural-disorders-natural-cause-statement---secondary:
    run: death-by-mental-and-behavioural-disorders-natural-cause-statement---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule28
      potentialCases:
        id: potentialCases
        source: death-by-mental-and-behavioural-disorders-natural-cause-treatment---secondary/output
  death-by-mental-and-behavioural-disorders-natural-cause-lateonset---secondary:
    run: death-by-mental-and-behavioural-disorders-natural-cause-lateonset---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule29
      potentialCases:
        id: potentialCases
        source: death-by-mental-and-behavioural-disorders-natural-cause-statement---secondary/output
  death-by-mental-and-behavioural-disorders-natural-cause-induced---secondary:
    run: death-by-mental-and-behavioural-disorders-natural-cause-induced---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule30
      potentialCases:
        id: potentialCases
        source: death-by-mental-and-behavioural-disorders-natural-cause-lateonset---secondary/output
  death-by-mental-and-behavioural-disorders-natural-cause-schizotypal---secondary:
    run: death-by-mental-and-behavioural-disorders-natural-cause-schizotypal---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule31
      potentialCases:
        id: potentialCases
        source: death-by-mental-and-behavioural-disorders-natural-cause-induced---secondary/output
  social-death-by-mental-and-behavioural-disorders-natural-cause---secondary:
    run: social-death-by-mental-and-behavioural-disorders-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule32
      potentialCases:
        id: potentialCases
        source: death-by-mental-and-behavioural-disorders-natural-cause-schizotypal---secondary/output
  mixed-death-by-mental-and-behavioural-disorders-natural-cause---secondary:
    run: mixed-death-by-mental-and-behavioural-disorders-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule33
      potentialCases:
        id: potentialCases
        source: social-death-by-mental-and-behavioural-disorders-natural-cause---secondary/output
  death-by-mental-and-behavioural-disorders-natural-cause-specified---secondary:
    run: death-by-mental-and-behavioural-disorders-natural-cause-specified---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule34
      potentialCases:
        id: potentialCases
        source: mixed-death-by-mental-and-behavioural-disorders-natural-cause---secondary/output
  death-by-mental-and-behavioural-disorders-natural-cause-psych---secondary:
    run: death-by-mental-and-behavioural-disorders-natural-cause-psych---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule35
      potentialCases:
        id: potentialCases
        source: death-by-mental-and-behavioural-disorders-natural-cause-specified---secondary/output
  death-by-mental-and-behavioural-disorders-natural-cause-conversion---secondary:
    run: death-by-mental-and-behavioural-disorders-natural-cause-conversion---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule36
      potentialCases:
        id: potentialCases
        source: death-by-mental-and-behavioural-disorders-natural-cause-psych---secondary/output
  mental---secondary:
    run: mental---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule37
      potentialCases:
        id: potentialCases
        source: death-by-mental-and-behavioural-disorders-natural-cause-conversion---secondary/output
  delusional-death-by-mental-and-behavioural-disorders-natural-cause---secondary:
    run: delusional-death-by-mental-and-behavioural-disorders-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule38
      potentialCases:
        id: potentialCases
        source: mental---secondary/output
  death-by-mental-and-behavioural-disorders-natural-cause-dysfunc---secondary:
    run: death-by-mental-and-behavioural-disorders-natural-cause-dysfunc---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule39
      potentialCases:
        id: potentialCases
        source: delusional-death-by-mental-and-behavioural-disorders-natural-cause---secondary/output
  profound-death-by-mental-and-behavioural-disorders-natural-cause---secondary:
    run: profound-death-by-mental-and-behavioural-disorders-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule40
      potentialCases:
        id: potentialCases
        source: death-by-mental-and-behavioural-disorders-natural-cause-dysfunc---secondary/output
  death-by-mental-and-behavioural-disorders-natural-cause-motor---secondary:
    run: death-by-mental-and-behavioural-disorders-natural-cause-motor---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule41
      potentialCases:
        id: potentialCases
        source: profound-death-by-mental-and-behavioural-disorders-natural-cause---secondary/output
  death-by-mental-and-behavioural-disorders-natural-cause-transvestism---secondary:
    run: death-by-mental-and-behavioural-disorders-natural-cause-transvestism---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule42
      potentialCases:
        id: potentialCases
        source: death-by-mental-and-behavioural-disorders-natural-cause-motor---secondary/output
  neurotic-death-by-mental-and-behavioural-disorders-natural-cause---secondary:
    run: neurotic-death-by-mental-and-behavioural-disorders-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule43
      potentialCases:
        id: potentialCases
        source: death-by-mental-and-behavioural-disorders-natural-cause-transvestism---secondary/output
  death-by-mental-and-behavioural-disorders-natural-cause-retard---secondary:
    run: death-by-mental-and-behavioural-disorders-natural-cause-retard---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule44
      potentialCases:
        id: potentialCases
        source: neurotic-death-by-mental-and-behavioural-disorders-natural-cause---secondary/output
  death-by-mental-and-behavioural-disorders-natural-cause-cocaine---secondary:
    run: death-by-mental-and-behavioural-disorders-natural-cause-cocaine---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule45
      potentialCases:
        id: potentialCases
        source: death-by-mental-and-behavioural-disorders-natural-cause-retard---secondary/output
  death-by-mental-and-behavioural-disorders-natural-cause-impulse---secondary:
    run: death-by-mental-and-behavioural-disorders-natural-cause-impulse---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule46
      potentialCases:
        id: potentialCases
        source: death-by-mental-and-behavioural-disorders-natural-cause-cocaine---secondary/output
  moderate-death-by-mental-and-behavioural-disorders-natural-cause---secondary:
    run: moderate-death-by-mental-and-behavioural-disorders-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule47
      potentialCases:
        id: potentialCases
        source: death-by-mental-and-behavioural-disorders-natural-cause-impulse---secondary/output
  death-by-mental-and-behavioural-disorders-natural-cause-bulimia---secondary:
    run: death-by-mental-and-behavioural-disorders-natural-cause-bulimia---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule48
      potentialCases:
        id: potentialCases
        source: moderate-death-by-mental-and-behavioural-disorders-natural-cause---secondary/output
  death-by-mental-and-behavioural-disorders-natural-cause-thought---secondary:
    run: death-by-mental-and-behavioural-disorders-natural-cause-thought---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule49
      potentialCases:
        id: potentialCases
        source: death-by-mental-and-behavioural-disorders-natural-cause-bulimia---secondary/output
  pathological-death-by-mental-and-behavioural-disorders-natural-cause---secondary:
    run: pathological-death-by-mental-and-behavioural-disorders-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule50
      potentialCases:
        id: potentialCases
        source: death-by-mental-and-behavioural-disorders-natural-cause-thought---secondary/output
  death-by-mental-and-behavioural-disorders-natural-cause-remission---secondary:
    run: death-by-mental-and-behavioural-disorders-natural-cause-remission---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule51
      potentialCases:
        id: potentialCases
        source: pathological-death-by-mental-and-behavioural-disorders-natural-cause---secondary/output
  adult-death-by-mental-and-behavioural-disorders-natural-cause---secondary:
    run: adult-death-by-mental-and-behavioural-disorders-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule52
      potentialCases:
        id: potentialCases
        source: death-by-mental-and-behavioural-disorders-natural-cause-remission---secondary/output
  death-by-mental-and-behavioural-disorders-natural-cause-infancy---secondary:
    run: death-by-mental-and-behavioural-disorders-natural-cause-infancy---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule53
      potentialCases:
        id: potentialCases
        source: adult-death-by-mental-and-behavioural-disorders-natural-cause---secondary/output
  death-by-mental-and-behavioural-disorders-natural-cause-attachment---secondary:
    run: death-by-mental-and-behavioural-disorders-natural-cause-attachment---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule54
      potentialCases:
        id: potentialCases
        source: death-by-mental-and-behavioural-disorders-natural-cause-infancy---secondary/output
  polymorphic-death-by-mental-and-behavioural-disorders-natural-cause---secondary:
    run: polymorphic-death-by-mental-and-behavioural-disorders-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule55
      potentialCases:
        id: potentialCases
        source: death-by-mental-and-behavioural-disorders-natural-cause-attachment---secondary/output
  sedative-death-by-mental-and-behavioural-disorders-natural-cause---secondary:
    run: sedative-death-by-mental-and-behavioural-disorders-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule56
      potentialCases:
        id: potentialCases
        source: polymorphic-death-by-mental-and-behavioural-disorders-natural-cause---secondary/output
  death-by-mental-and-behavioural-disorders-natural-cause-impairm---secondary:
    run: death-by-mental-and-behavioural-disorders-natural-cause-impairm---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule57
      potentialCases:
        id: potentialCases
        source: sedative-death-by-mental-and-behavioural-disorders-natural-cause---secondary/output
  vocal-death-by-mental-and-behavioural-disorders-natural-cause---secondary:
    run: vocal-death-by-mental-and-behavioural-disorders-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule58
      potentialCases:
        id: potentialCases
        source: death-by-mental-and-behavioural-disorders-natural-cause-impairm---secondary/output
  hyperkinetic-death-by-mental-and-behavioural-disorders-natural-cause---secondary:
    run: hyperkinetic-death-by-mental-and-behavioural-disorders-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule59
      potentialCases:
        id: potentialCases
        source: vocal-death-by-mental-and-behavioural-disorders-natural-cause---secondary/output
  death-by-mental-and-behavioural-disorders-natural-cause-autism---secondary:
    run: death-by-mental-and-behavioural-disorders-natural-cause-autism---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule60
      potentialCases:
        id: potentialCases
        source: hyperkinetic-death-by-mental-and-behavioural-disorders-natural-cause---secondary/output
  paranoid-death-by-mental-and-behavioural-disorders-natural-cause---secondary:
    run: paranoid-death-by-mental-and-behavioural-disorders-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule61
      potentialCases:
        id: potentialCases
        source: death-by-mental-and-behavioural-disorders-natural-cause-autism---secondary/output
  cannabinoid-death-by-mental-and-behavioural-disorders-natural-cause---secondary:
    run: cannabinoid-death-by-mental-and-behavioural-disorders-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule62
      potentialCases:
        id: potentialCases
        source: paranoid-death-by-mental-and-behavioural-disorders-natural-cause---secondary/output
  death-by-mental-and-behavioural-disorders-natural-cause-identity---secondary:
    run: death-by-mental-and-behavioural-disorders-natural-cause-identity---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule63
      potentialCases:
        id: potentialCases
        source: cannabinoid-death-by-mental-and-behavioural-disorders-natural-cause---secondary/output
  death-by-mental-and-behavioural-disorders-natural-cause-functioning---secondary:
    run: death-by-mental-and-behavioural-disorders-natural-cause-functioning---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule64
      potentialCases:
        id: potentialCases
        source: death-by-mental-and-behavioural-disorders-natural-cause-identity---secondary/output
  death-by-mental-and-behavioural-disorders-natural-cause-alcohol---secondary:
    run: death-by-mental-and-behavioural-disorders-natural-cause-alcohol---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule65
      potentialCases:
        id: potentialCases
        source: death-by-mental-and-behavioural-disorders-natural-cause-functioning---secondary/output
  death-by-mental-and-behavioural-disorders-natural-cause-volatil---secondary:
    run: death-by-mental-and-behavioural-disorders-natural-cause-volatil---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule66
      potentialCases:
        id: potentialCases
        source: death-by-mental-and-behavioural-disorders-natural-cause-alcohol---secondary/output
  death-by-mental-and-behavioural-disorders-natural-cause-cannabis---secondary:
    run: death-by-mental-and-behavioural-disorders-natural-cause-cannabis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule67
      potentialCases:
        id: potentialCases
        source: death-by-mental-and-behavioural-disorders-natural-cause-volatil---secondary/output
  death-by-mental-and-behavioural-disorders-natural-cause-anorexia---secondary:
    run: death-by-mental-and-behavioural-disorders-natural-cause-anorexia---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule68
      potentialCases:
        id: potentialCases
        source: death-by-mental-and-behavioural-disorders-natural-cause-cannabis---secondary/output
  catatonic-death-by-mental-and-behavioural-disorders-natural-cause---secondary:
    run: catatonic-death-by-mental-and-behavioural-disorders-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule69
      potentialCases:
        id: potentialCases
        source: death-by-mental-and-behavioural-disorders-natural-cause-anorexia---secondary/output
  death-by-mental-and-behavioural-disorders-natural-cause-alzheimer---secondary:
    run: death-by-mental-and-behavioural-disorders-natural-cause-alzheimer---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule70
      potentialCases:
        id: potentialCases
        source: catatonic-death-by-mental-and-behavioural-disorders-natural-cause---secondary/output
  obsessivecompulsive-death-by-mental-and-behavioural-disorders-natural-cause---secondary:
    run: obsessivecompulsive-death-by-mental-and-behavioural-disorders-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule71
      potentialCases:
        id: potentialCases
        source: death-by-mental-and-behavioural-disorders-natural-cause-alzheimer---secondary/output
  emotional-death-by-mental-and-behavioural-disorders-natural-cause---secondary:
    run: emotional-death-by-mental-and-behavioural-disorders-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule72
      potentialCases:
        id: potentialCases
        source: obsessivecompulsive-death-by-mental-and-behavioural-disorders-natural-cause---secondary/output
  death-by-mental-and-behavioural-disorders-natural-cause-eating---secondary:
    run: death-by-mental-and-behavioural-disorders-natural-cause-eating---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule73
      potentialCases:
        id: potentialCases
        source: emotional-death-by-mental-and-behavioural-disorders-natural-cause---secondary/output
  symptomatic-death-by-mental-and-behavioural-disorders-natural-cause---secondary:
    run: symptomatic-death-by-mental-and-behavioural-disorders-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule74
      potentialCases:
        id: potentialCases
        source: death-by-mental-and-behavioural-disorders-natural-cause-eating---secondary/output
  death-by-mental-and-behavioural-disorders-natural-cause-terror---secondary:
    run: death-by-mental-and-behavioural-disorders-natural-cause-terror---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule75
      potentialCases:
        id: potentialCases
        source: symptomatic-death-by-mental-and-behavioural-disorders-natural-cause---secondary/output
  atypical-death-by-mental-and-behavioural-disorders-natural-cause---secondary:
    run: atypical-death-by-mental-and-behavioural-disorders-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule76
      potentialCases:
        id: potentialCases
        source: death-by-mental-and-behavioural-disorders-natural-cause-terror---secondary/output
  obsessional-death-by-mental-and-behavioural-disorders-natural-cause---secondary:
    run: obsessional-death-by-mental-and-behavioural-disorders-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule77
      potentialCases:
        id: potentialCases
        source: atypical-death-by-mental-and-behavioural-disorders-natural-cause---secondary/output
  amnesic-death-by-mental-and-behavioural-disorders-natural-cause---secondary:
    run: amnesic-death-by-mental-and-behavioural-disorders-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule78
      potentialCases:
        id: potentialCases
        source: obsessional-death-by-mental-and-behavioural-disorders-natural-cause---secondary/output
  opioid-death-by-mental-and-behavioural-disorders-natural-cause---secondary:
    run: opioid-death-by-mental-and-behavioural-disorders-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule79
      potentialCases:
        id: potentialCases
        source: amnesic-death-by-mental-and-behavioural-disorders-natural-cause---secondary/output
  death-by-mental-and-behavioural-disorders-natural-cause-hallucinogens---secondary:
    run: death-by-mental-and-behavioural-disorders-natural-cause-hallucinogens---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule80
      potentialCases:
        id: potentialCases
        source: opioid-death-by-mental-and-behavioural-disorders-natural-cause---secondary/output
  death-by-mental-and-behavioural-disorders-natural-cause-tobacco---secondary:
    run: death-by-mental-and-behavioural-disorders-natural-cause-tobacco---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule81
      potentialCases:
        id: potentialCases
        source: death-by-mental-and-behavioural-disorders-natural-cause-hallucinogens---secondary/output
  output-cases:
    run: output-cases.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule82
      potentialCases:
        id: potentialCases
        source: death-by-mental-and-behavioural-disorders-natural-cause-tobacco---secondary/output
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
  inputModule66:
    id: inputModule66
    doc: Python implementation unit
    type: File
  inputModule67:
    id: inputModule67
    doc: Python implementation unit
    type: File
  inputModule68:
    id: inputModule68
    doc: Python implementation unit
    type: File
  inputModule69:
    id: inputModule69
    doc: Python implementation unit
    type: File
  inputModule70:
    id: inputModule70
    doc: Python implementation unit
    type: File
  inputModule71:
    id: inputModule71
    doc: Python implementation unit
    type: File
  inputModule72:
    id: inputModule72
    doc: Python implementation unit
    type: File
  inputModule73:
    id: inputModule73
    doc: Python implementation unit
    type: File
  inputModule74:
    id: inputModule74
    doc: Python implementation unit
    type: File
  inputModule75:
    id: inputModule75
    doc: Python implementation unit
    type: File
  inputModule76:
    id: inputModule76
    doc: Python implementation unit
    type: File
  inputModule77:
    id: inputModule77
    doc: Python implementation unit
    type: File
  inputModule78:
    id: inputModule78
    doc: Python implementation unit
    type: File
  inputModule79:
    id: inputModule79
    doc: Python implementation unit
    type: File
  inputModule80:
    id: inputModule80
    doc: Python implementation unit
    type: File
  inputModule81:
    id: inputModule81
    doc: Python implementation unit
    type: File
  inputModule82:
    id: inputModule82
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
