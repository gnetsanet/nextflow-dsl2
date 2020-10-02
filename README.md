# nextflow-dsl2

```
NOTE: Nextflow is not tested with Java 14.0.2 -- It's recommended the use of version 8 up to 12

N E X T F L O W  ~  version 20.07.1
Launching `nf-test-ds2.nf` [angry_spence] - revision: ed68253b3b
executor >  local (20)
[ad/8b05de] process > categorize (8)    [100%] 10 of 10 ✔
[66/a2be08] process > handle_valid (2)  [100%] 10 of 10 ✔
```



```
(base) Netsanets-MacBook-Pro-2:nextflow-dsl2 netsanetgebremedhin$ tree work/
work/
├── 09
│   └── 6437fbe76f625b94e06c719a78ee7f
│       ├── 444.txt.444.copy.txt -> /Users/netsanetgebremedhin/nextflow-dsl2/work/b3/2881742a3bed659c8cc68cab0d6181/444.txt.444.copy.txt
│       ├── 444.txt.444.copy.txt.yet.another.copy.txt
│       └── 888.txt -> /Users/netsanetgebremedhin/nextflow-dsl2/data/888.txt
├── 3f
│   └── a15bbf19154fe0cc2a89ac439e090a
│       ├── 222.txt.222.copy.txt -> /Users/netsanetgebremedhin/nextflow-dsl2/work/5e/0d2b525fab9f482e1b1da0bd61f3d4/222.txt.222.copy.txt
│       ├── 222.txt.222.copy.txt.yet.another.copy.txt
│       └── 666.txt -> /Users/netsanetgebremedhin/nextflow-dsl2/data/666.txt
├── 42
│   └── ba35d2b078cac7f4a4c10c22cb9189
│       ├── 666.txt -> /Users/netsanetgebremedhin/nextflow-dsl2/data/666.txt
│       └── 666.txt.666.copy.txt
├── 5e
│   └── 0d2b525fab9f482e1b1da0bd61f3d4
│       ├── 222.txt -> /Users/netsanetgebremedhin/nextflow-dsl2/data/222.txt
│       └── 222.txt.222.copy.txt
├── 64
│   └── d471b21ac279af202dec195a7d9759
│       ├── 111.txt -> /Users/netsanetgebremedhin/nextflow-dsl2/data/111.txt
│       └── 111.txt.111.copy.txt
├── 66
│   ├── a2be0857d62f7e2477fab4d4d3e314
│   │   ├── 111.txt -> /Users/netsanetgebremedhin/nextflow-dsl2/data/111.txt
│   │   ├── 555.txt.555.copy.txt -> /Users/netsanetgebremedhin/nextflow-dsl2/work/66/f6cf415bdb6ef193c311a7f0ce1588/555.txt.555.copy.txt
│   │   └── 555.txt.555.copy.txt.yet.another.copy.txt
│   └── f6cf415bdb6ef193c311a7f0ce1588
│       ├── 555.txt -> /Users/netsanetgebremedhin/nextflow-dsl2/data/555.txt
│       └── 555.txt.555.copy.txt
├── 6c
│   └── cb10516a2926ac29b6aa54b2c756a7
│       ├── 888.txt -> /Users/netsanetgebremedhin/nextflow-dsl2/data/888.txt
│       └── 888.txt.888.copy.txt
├── 71
│   └── 0e033d933b92be664942185ce6a60d
│       ├── 101010.txt -> /Users/netsanetgebremedhin/nextflow-dsl2/data/101010.txt
│       ├── 111.txt.111.copy.txt -> /Users/netsanetgebremedhin/nextflow-dsl2/work/64/d471b21ac279af202dec195a7d9759/111.txt.111.copy.txt
│       └── 111.txt.111.copy.txt.yet.another.copy.txt
├── 94
│   └── 138552ab03e7a22636f755cb85f82f
│       ├── 333.txt.333.copy.txt -> /Users/netsanetgebremedhin/nextflow-dsl2/work/ea/d1807fe19284ed1d4031832720071f/333.txt.333.copy.txt
│       ├── 333.txt.333.copy.txt.yet.another.copy.txt
│       └── 777.txt -> /Users/netsanetgebremedhin/nextflow-dsl2/data/777.txt
├── 95
│   └── 46fe2fe74a8c20e7b9f38802e8ec88
│       ├── 101010.txt.101010.copy.txt -> /Users/netsanetgebremedhin/nextflow-dsl2/work/b3/c30ad4296ce1424dc7028bea98df2a/101010.txt.101010.copy.txt
│       ├── 101010.txt.101010.copy.txt.yet.another.copy.txt
│       └── 444.txt -> /Users/netsanetgebremedhin/nextflow-dsl2/data/444.txt
├── 97
│   └── 3c84183e7dfd5538792bdeb6b5b4d5
│       ├── 333.txt -> /Users/netsanetgebremedhin/nextflow-dsl2/data/333.txt
│       ├── 999.txt.999.copy.txt -> /Users/netsanetgebremedhin/nextflow-dsl2/work/ea/527091d62252bedc59261d9fd2f4fb/999.txt.999.copy.txt
│       └── 999.txt.999.copy.txt.yet.another.copy.txt
├── a3
│   └── 37a35821cc20ce61fa3f290c57e4e0
│       ├── 777.txt.777.copy.txt -> /Users/netsanetgebremedhin/nextflow-dsl2/work/ad/8b05de16d59d5182fb58ffb7efabf2/777.txt.777.copy.txt
│       ├── 777.txt.777.copy.txt.yet.another.copy.txt
│       └── 999.txt -> /Users/netsanetgebremedhin/nextflow-dsl2/data/999.txt
├── ad
│   └── 8b05de16d59d5182fb58ffb7efabf2
│       ├── 777.txt -> /Users/netsanetgebremedhin/nextflow-dsl2/data/777.txt
│       └── 777.txt.777.copy.txt
├── b3
│   ├── 2881742a3bed659c8cc68cab0d6181
│   │   ├── 444.txt -> /Users/netsanetgebremedhin/nextflow-dsl2/data/444.txt
│   │   └── 444.txt.444.copy.txt
│   └── c30ad4296ce1424dc7028bea98df2a
│       ├── 101010.txt -> /Users/netsanetgebremedhin/nextflow-dsl2/data/101010.txt
│       └── 101010.txt.101010.copy.txt
├── cc
│   └── 4afc0a37a2aa0950fb22c1711d43da
│       ├── 222.txt -> /Users/netsanetgebremedhin/nextflow-dsl2/data/222.txt
│       ├── 888.txt.888.copy.txt -> /Users/netsanetgebremedhin/nextflow-dsl2/work/6c/cb10516a2926ac29b6aa54b2c756a7/888.txt.888.copy.txt
│       └── 888.txt.888.copy.txt.yet.another.copy.txt
├── ea
│   ├── 527091d62252bedc59261d9fd2f4fb
│   │   ├── 999.txt -> /Users/netsanetgebremedhin/nextflow-dsl2/data/999.txt
│   │   └── 999.txt.999.copy.txt
│   └── d1807fe19284ed1d4031832720071f
│       ├── 333.txt -> /Users/netsanetgebremedhin/nextflow-dsl2/data/333.txt
│       └── 333.txt.333.copy.txt
└── ee
    └── 13b6f6a57eff6cee06d1fa4995ce61
        ├── 555.txt -> /Users/netsanetgebremedhin/nextflow-dsl2/data/555.txt
        ├── 666.txt.666.copy.txt -> /Users/netsanetgebremedhin/nextflow-dsl2/work/42/ba35d2b078cac7f4a4c10c22cb9189/666.txt.666.copy.txt
        └── 666.txt.666.copy.txt.yet.another.copy.txt

37 directories, 50 files
```
