# nextflow-dsl2

Take the following data, which is file of file names/paths:

```
/Users/netsanetgebremedhin/nextflow-dsl2/data/101010.txt
/Users/netsanetgebremedhin/nextflow-dsl2/data/111.txt
/Users/netsanetgebremedhin/nextflow-dsl2/data/222.txt
/Users/netsanetgebremedhin/nextflow-dsl2/data/333.txt
/Users/netsanetgebremedhin/nextflow-dsl2/data/444.txt
/Users/netsanetgebremedhin/nextflow-dsl2/data/555.txt
/Users/netsanetgebremedhin/nextflow-dsl2/data/666.txt
/Users/netsanetgebremedhin/nextflow-dsl2/data/777.txt
/Users/netsanetgebremedhin/nextflow-dsl2/data/888.txt
/Users/netsanetgebremedhin/nextflow-dsl2/data/999.txt
```

And convert it to the below channel of tuples.

```
[101010, /Users/netsanetgebremedhin/nextflow-dsl2/data/101010.txt]
[111, /Users/netsanetgebremedhin/nextflow-dsl2/data/111.txt]
[222, /Users/netsanetgebremedhin/nextflow-dsl2/data/222.txt]
[333, /Users/netsanetgebremedhin/nextflow-dsl2/data/333.txt]
[444, /Users/netsanetgebremedhin/nextflow-dsl2/data/444.txt]
[555, /Users/netsanetgebremedhin/nextflow-dsl2/data/555.txt]
[666, /Users/netsanetgebremedhin/nextflow-dsl2/data/666.txt]
[777, /Users/netsanetgebremedhin/nextflow-dsl2/data/777.txt]
[888, /Users/netsanetgebremedhin/nextflow-dsl2/data/888.txt]
[999, /Users/netsanetgebremedhin/nextflow-dsl2/data/999.txt]
```


```
Monitor the execution with Nextflow Tower using this url https://tower.nf/watch/DzFMkP0QbPlbL
executor >  awsbatch (21)
[05/49cad4] process > getVersionNo      [100%] 1 of 1 ✔
[34/c041e2] process > categorize (10)   [100%] 10 of 10 ✔
[b1/3ce25e] process > handle_valid (10) [100%] 10 of 10 ✔
Completed at: 05-Oct-2020 13:55:11
Duration    : 3m 42s
CPU hours   : (a few seconds)
Succeeded   : 21
```



```
(base) Netsanets-MacBook-Pro-2:nextflow-dsl2 netsanetgebremedhin$ tree work/
work/
├── 19
│   └── a1b1d66103a6fb634f9265b7ed9d53
│       ├── 111.txt -> /Users/netsanetgebremedhin/nextflow-dsl2/data/111.txt
│       └── 111.txt.111.v1.2.4.copy.txt
├── 3a
│   └── c8862bc66a19b13f7cd8083acc788a
│       ├── 333.txt -> /Users/netsanetgebremedhin/nextflow-dsl2/data/333.txt
│       └── 333.txt.333.v1.2.4.copy.txt
├── 3d
│   └── 1cce157550e321d62d50d43be9b711
│       ├── 222.txt -> /Users/netsanetgebremedhin/nextflow-dsl2/data/222.txt
│       └── 222.txt.222.v1.2.4.copy.txt
├── 55
│   └── add8462fdd464a9bafca48d8bfbfb7
│       ├── 222.txt -> /Users/netsanetgebremedhin/nextflow-dsl2/data/222.txt
│       ├── 222.txt.222.v1.2.4.copy.txt -> /Users/netsanetgebremedhin/nextflow-dsl2/work/3d/1cce157550e321d62d50d43be9b711/222.txt.222.v1.2.4.copy.txt
│       └── 222.txt.222.v1.2.4.copy.txt.yet.another.copy.txt
├── 62
│   └── 9ed1b0e361476133e298659b50732e
│       ├── 101010.txt.101010.v1.2.4.copy.txt -> /Users/netsanetgebremedhin/nextflow-dsl2/work/b4/ec6c95ad038de82b13c297c988262e/101010.txt.101010.v1.2.4.copy.txt
│       ├── 101010.txt.101010.v1.2.4.copy.txt.yet.another.copy.txt
│       └── 111.txt -> /Users/netsanetgebremedhin/nextflow-dsl2/data/111.txt
├── 6d
│   └── a64d1f063ad3f57fb3fc5accfea8a4
│       ├── 111.txt.111.v1.2.4.copy.txt -> /Users/netsanetgebremedhin/nextflow-dsl2/work/19/a1b1d66103a6fb634f9265b7ed9d53/111.txt.111.v1.2.4.copy.txt
│       ├── 111.txt.111.v1.2.4.copy.txt.yet.another.copy.txt
│       └── 555.txt -> /Users/netsanetgebremedhin/nextflow-dsl2/data/555.txt
├── 86
│   ├── 5aa13d5bbc5f0a6cd6a8088212582e
│   │   ├── 999.txt -> /Users/netsanetgebremedhin/nextflow-dsl2/data/999.txt
│   │   └── 999.txt.999.v1.2.4.copy.txt
│   └── 9351150df638d780736e778e4cb13d
│       ├── 555.txt.555.v1.2.4.copy.txt -> /Users/netsanetgebremedhin/nextflow-dsl2/work/e8/a93254b8edfeedc7550762a8de60ff/555.txt.555.v1.2.4.copy.txt
│       ├── 555.txt.555.v1.2.4.copy.txt.yet.another.copy.txt
│       └── 666.txt -> /Users/netsanetgebremedhin/nextflow-dsl2/data/666.txt
├── 9b
│   └── 52787b76540d1a3352d0e4e81beeca
├── ab
│   └── 7f11a8bb197355fd1d18a9b6bed97b
│       ├── 333.txt.333.v1.2.4.copy.txt -> /Users/netsanetgebremedhin/nextflow-dsl2/work/3a/c8862bc66a19b13f7cd8083acc788a/333.txt.333.v1.2.4.copy.txt
│       ├── 333.txt.333.v1.2.4.copy.txt.yet.another.copy.txt
│       └── 888.txt -> /Users/netsanetgebremedhin/nextflow-dsl2/data/888.txt
├── b4
│   └── ec6c95ad038de82b13c297c988262e
│       ├── 101010.txt -> /Users/netsanetgebremedhin/nextflow-dsl2/data/101010.txt
│       └── 101010.txt.101010.v1.2.4.copy.txt
├── bb
│   └── a5c9ad867ad5ca1624950ff920500e
│       ├── 444.txt -> /Users/netsanetgebremedhin/nextflow-dsl2/data/444.txt
│       ├── 888.txt.888.v1.2.4.copy.txt -> /Users/netsanetgebremedhin/nextflow-dsl2/work/e6/a75c99c74ba7bc51d5a4baed2cf60b/888.txt.888.v1.2.4.copy.txt
│       └── 888.txt.888.v1.2.4.copy.txt.yet.another.copy.txt
├── be
│   └── e571029ca8dbc8510bb3684cad1112
│       ├── 101010.txt -> /Users/netsanetgebremedhin/nextflow-dsl2/data/101010.txt
│       ├── 666.txt.666.v1.2.4.copy.txt -> /Users/netsanetgebremedhin/nextflow-dsl2/work/d3/5026959e9091c99bf63a627ca73e93/666.txt.666.v1.2.4.copy.txt
│       └── 666.txt.666.v1.2.4.copy.txt.yet.another.copy.txt
├── bf
│   └── 92f5a084b02890ca46e0c8ff990d73
│       ├── 777.txt -> /Users/netsanetgebremedhin/nextflow-dsl2/data/777.txt
│       └── 777.txt.777.v1.2.4.copy.txt
├── c6
│   └── 7aaa0b608ccdddd38c139d78f729ac
│       ├── 444.txt -> /Users/netsanetgebremedhin/nextflow-dsl2/data/444.txt
│       └── 444.txt.444.v1.2.4.copy.txt
├── d3
│   └── 5026959e9091c99bf63a627ca73e93
│       ├── 666.txt -> /Users/netsanetgebremedhin/nextflow-dsl2/data/666.txt
│       └── 666.txt.666.v1.2.4.copy.txt
├── da
│   └── 00592882b68eaa35f7ba5ee0730a94
│       ├── 333.txt -> /Users/netsanetgebremedhin/nextflow-dsl2/data/333.txt
│       ├── 444.txt.444.v1.2.4.copy.txt -> /Users/netsanetgebremedhin/nextflow-dsl2/work/c6/7aaa0b608ccdddd38c139d78f729ac/444.txt.444.v1.2.4.copy.txt
│       └── 444.txt.444.v1.2.4.copy.txt.yet.another.copy.txt
├── e6
│   └── a75c99c74ba7bc51d5a4baed2cf60b
│       ├── 888.txt -> /Users/netsanetgebremedhin/nextflow-dsl2/data/888.txt
│       └── 888.txt.888.v1.2.4.copy.txt
├── e8
│   └── a93254b8edfeedc7550762a8de60ff
│       ├── 555.txt -> /Users/netsanetgebremedhin/nextflow-dsl2/data/555.txt
│       └── 555.txt.555.v1.2.4.copy.txt
├── f5
│   └── 71758f0ed972fed27aa99728e56ae7
│       ├── 777.txt.777.v1.2.4.copy.txt -> /Users/netsanetgebremedhin/nextflow-dsl2/work/bf/92f5a084b02890ca46e0c8ff990d73/777.txt.777.v1.2.4.copy.txt
│       ├── 777.txt.777.v1.2.4.copy.txt.yet.another.copy.txt
│       └── 999.txt -> /Users/netsanetgebremedhin/nextflow-dsl2/data/999.txt
└── fe
    └── 5be70ac2a00ed81a7b4fee57a1517a
        ├── 777.txt -> /Users/netsanetgebremedhin/nextflow-dsl2/data/777.txt
        ├── 999.txt.999.v1.2.4.copy.txt -> /Users/netsanetgebremedhin/nextflow-dsl2/work/86/5aa13d5bbc5f0a6cd6a8088212582e/999.txt.999.v1.2.4.copy.txt
        └── 999.txt.999.v1.2.4.copy.txt.yet.another.copy.txt

41 directories, 50 files
```

## Scatter-gather

```
(base) Netsanets-MacBook-Pro-2:scatter netsanetgebremedhin$ nextflow run scatter-gather-dsl2.nf  --dict ${PWD}/sequence_grouping.txt  -process.executor local
N E X T F L O W  ~  version 20.07.1
Launching `scatter-gather-dsl2.nf` [friendly_marconi] - revision: bff2dfed77
WARN: DSL 2 IS AN EXPERIMENTAL FEATURE UNDER DEVELOPMENT -- SYNTAX MAY CHANGE IN FUTURE RELEASE
executor >  local (51)
[b2/4c2396] process > test (14)                [100%] 48 of 48 ✔
[53/beeda5] process > collectFilesBySample (2) [100%] 3 of 3 ✔
```
Use groupTuple() to convert 

```
[C, /Users/netsanetgebremedhin/AWS/aws-nextflow-gatk/scatter/work/8e/dc5555794c1e200f396ad84f76e54a/C_chr2.file.txt]
[A, /Users/netsanetgebremedhin/AWS/aws-nextflow-gatk/scatter/work/25/dd305440de468da3d13712d88d463f/A_chr6.file.txt]
[A, /Users/netsanetgebremedhin/AWS/aws-nextflow-gatk/scatter/work/fb/99f102b8dae681742abe3143c42627/A_chr5.file.txt]
[B, /Users/netsanetgebremedhin/AWS/aws-nextflow-gatk/scatter/work/cf/67fbfb079ddc37dc5288d69dae8fe5/B_chr2.file.txt]
[C, /Users/netsanetgebremedhin/AWS/aws-nextflow-gatk/scatter/work/a2/0918c3e66c061c44a7e4fadc257239/C_chr5.file.txt]
[B, /Users/netsanetgebremedhin/AWS/aws-nextflow-gatk/scatter/work/0f/3fd0fa3713b7e413cd8514ac45694e/B_chr1.file.txt]
[B, /Users/netsanetgebremedhin/AWS/aws-nextflow-gatk/scatter/work/ee/a8d822e2f38578684a6c3f93df26b5/B_chr5.file.txt]
[B, /Users/netsanetgebremedhin/AWS/aws-nextflow-gatk/scatter/work/71/9e7a803bc53c871c2dca85bfde4823/B_chr3.file.txt]
[C, /Users/netsanetgebremedhin/AWS/aws-nextflow-gatk/scatter/work/2f/3a90419c9324e7d7ab3b8021ccc635/C_chr4.file.txt]
[A, /Users/netsanetgebremedhin/AWS/aws-nextflow-gatk/scatter/work/fe/e01708079ff793473ff115e438ff10/A_chr3.file.txt]
[A, /Users/netsanetgebremedhin/AWS/aws-nextflow-gatk/scatter/work/55/8b0ed7932b17b354fea640ade5ca60/A_chr1.file.txt]
[C, /Users/netsanetgebremedhin/AWS/aws-nextflow-gatk/scatter/work/79/c027964e3b0d61afa4f6f1e2b56186/C_chr3.file.txt]
[B, /Users/netsanetgebremedhin/AWS/aws-nextflow-gatk/scatter/work/2b/9691a86a0654f673ff8f63be486833/B_chr4.file.txt]
[A, /Users/netsanetgebremedhin/AWS/aws-nextflow-gatk/scatter/work/19/f0dc1425e3f61001570a3cda724183/A_chr4.file.txt]
[A, /Users/netsanetgebremedhin/AWS/aws-nextflow-gatk/scatter/work/b3/c374f3903b581ce18c159822492593/A_chr2.file.txt]
[C, /Users/netsanetgebremedhin/AWS/aws-nextflow-gatk/scatter/work/7d/2a2408901a85e9d4a7c70250ed6b28/C_chr6.file.txt]
[B, /Users/netsanetgebremedhin/AWS/aws-nextflow-gatk/scatter/work/3b/869468be864b0ed76822e8ec6d273d/B_chr6.file.txt]
[A, /Users/netsanetgebremedhin/AWS/aws-nextflow-gatk/scatter/work/09/9eb152db8a179972a669a9f3485148/A_chr7.file.txt]
[B, /Users/netsanetgebremedhin/AWS/aws-nextflow-gatk/scatter/work/86/2c01ef387fcb258800d82edca7f0ef/B_chr7.file.txt]
[C, /Users/netsanetgebremedhin/AWS/aws-nextflow-gatk/scatter/work/62/dcef2410764bb22ba67e6c2332b342/C_chr7.file.txt]
[A, /Users/netsanetgebremedhin/AWS/aws-nextflow-gatk/scatter/work/07/d0f06f60a97e93c5cb6c8a79260a6e/A_chr8.file.txt]
[A, /Users/netsanetgebremedhin/AWS/aws-nextflow-gatk/scatter/work/78/7cc859dc3fe4995d537926a6ba57ba/A_chr14.file.txt]
[B, /Users/netsanetgebremedhin/AWS/aws-nextflow-gatk/scatter/work/37/5e84bc64ab74c823d656aed5d3a77c/B_chr8.file.txt]
[C, /Users/netsanetgebremedhin/AWS/aws-nextflow-gatk/scatter/work/ae/6116daeb91b0421df5e118c0b04903/C_chr8.file.txt]
[A, /Users/netsanetgebremedhin/AWS/aws-nextflow-gatk/scatter/work/91/94f1a49387e0adf468638bf8c4fdd7/A_chr9.file.txt]
[B, /Users/netsanetgebremedhin/AWS/aws-nextflow-gatk/scatter/work/8f/e5e3022557e567f1645a7ed996925a/B_chr9.file.txt]
[A, /Users/netsanetgebremedhin/AWS/aws-nextflow-gatk/scatter/work/47/b6eb6cf55c47fb4ca1ac2cf3c23670/A_chr10.file.txt]
[B, /Users/netsanetgebremedhin/AWS/aws-nextflow-gatk/scatter/work/b5/50cd94f626de16d1d495650c3eba6d/B_chr10.file.txt]
[C, /Users/netsanetgebremedhin/AWS/aws-nextflow-gatk/scatter/work/eb/160813080c2d277b437c0d11c3e6d3/C_chr10.file.txt]
[A, /Users/netsanetgebremedhin/AWS/aws-nextflow-gatk/scatter/work/90/d2d631b7da26f60dbb1f30d2a4d479/A_chr11.file.txt]
[B, /Users/netsanetgebremedhin/AWS/aws-nextflow-gatk/scatter/work/25/b9365023b7792729c4d9ddb3db1866/B_chr11.file.txt]
[C, /Users/netsanetgebremedhin/AWS/aws-nextflow-gatk/scatter/work/ec/65341f7f5765909572b148d90564a8/C_chr11.file.txt]
[A, /Users/netsanetgebremedhin/AWS/aws-nextflow-gatk/scatter/work/4e/328ebe22a9b03e3108de8960be53b8/A_chr12.file.txt]
[C, /Users/netsanetgebremedhin/AWS/aws-nextflow-gatk/scatter/work/c5/9cc990bf2ef2e14ca95cac3797c552/C_chr1.file.txt]
[C, /Users/netsanetgebremedhin/AWS/aws-nextflow-gatk/scatter/work/13/a101b7c72b22306fb26641f7dd9229/C_chr9.file.txt]
[B, /Users/netsanetgebremedhin/AWS/aws-nextflow-gatk/scatter/work/8c/9934a33ea2c3fa3e26c5f902d65b47/B_chr12.file.txt]
[C, /Users/netsanetgebremedhin/AWS/aws-nextflow-gatk/scatter/work/65/fc3bf734167e154cad5591803dae05/C_chr12.file.txt]
[C, /Users/netsanetgebremedhin/AWS/aws-nextflow-gatk/scatter/work/5b/157d995cbb1610681d001f2ad8e005/C_chr14.file.txt]
[A, /Users/netsanetgebremedhin/AWS/aws-nextflow-gatk/scatter/work/fb/98f9943c4d1821be20666522567cda/A_chr16.file.txt]
[B, /Users/netsanetgebremedhin/AWS/aws-nextflow-gatk/scatter/work/8c/d9840fe0ff4db6e6d8b38ac78b452d/B_chr16.file.txt]
[C, /Users/netsanetgebremedhin/AWS/aws-nextflow-gatk/scatter/work/bf/d135a1180de65e94d573e2e68c5caa/C_chr16.file.txt]
[A, /Users/netsanetgebremedhin/AWS/aws-nextflow-gatk/scatter/work/09/ec97cd6051c38b704af9f0eeedef4c/A_chr18.file.txt]
[B, /Users/netsanetgebremedhin/AWS/aws-nextflow-gatk/scatter/work/7f/affc209e331572139aa739e1f48f9b/B_chr18.file.txt]
[C, /Users/netsanetgebremedhin/AWS/aws-nextflow-gatk/scatter/work/8b/72626d4a6b3e98365478277501d6d1/C_chr18.file.txt]
[A, /Users/netsanetgebremedhin/AWS/aws-nextflow-gatk/scatter/work/e0/950b69ad28bd5eff334e356738eacb/A_chr21.file.txt]
[B, /Users/netsanetgebremedhin/AWS/aws-nextflow-gatk/scatter/work/9f/0307a4c6fdc7e7d9be817b6acb0a69/B_chr21.file.txt]
[C, /Users/netsanetgebremedhin/AWS/aws-nextflow-gatk/scatter/work/30/7b86e63ef3453567507cc8b44bbfaa/C_chr21.file.txt]
[B, /Users/netsanetgebremedhin/AWS/aws-nextflow-gatk/scatter/work/0d/ce17e29166168a3f2a3111f71dded3/B_chr14.file.txt]
```
to the following to gather/merge later by

```
[C, [/Users/netsanetgebremedhin/AWS/aws-nextflow-gatk/scatter/work/8e/dc5555794c1e200f396ad84f76e54a/C_chr2.file.txt, /Users/netsanetgebremedhin/AWS/aws-nextflow-gatk/scatter/work/a2/0918c3e66c061c44a7e4fadc257239/C_chr5.file.txt, /Users/netsanetgebremedhin/AWS/aws-nextflow-gatk/scatter/work/2f/3a90419c9324e7d7ab3b8021ccc635/C_chr4.file.txt, /Users/netsanetgebremedhin/AWS/aws-nextflow-gatk/scatter/work/79/c027964e3b0d61afa4f6f1e2b56186/C_chr3.file.txt, /Users/netsanetgebremedhin/AWS/aws-nextflow-gatk/scatter/work/7d/2a2408901a85e9d4a7c70250ed6b28/C_chr6.file.txt, /Users/netsanetgebremedhin/AWS/aws-nextflow-gatk/scatter/work/62/dcef2410764bb22ba67e6c2332b342/C_chr7.file.txt, /Users/netsanetgebremedhin/AWS/aws-nextflow-gatk/scatter/work/ae/6116daeb91b0421df5e118c0b04903/C_chr8.file.txt, /Users/netsanetgebremedhin/AWS/aws-nextflow-gatk/scatter/work/eb/160813080c2d277b437c0d11c3e6d3/C_chr10.file.txt, /Users/netsanetgebremedhin/AWS/aws-nextflow-gatk/scatter/work/ec/65341f7f5765909572b148d90564a8/C_chr11.file.txt, /Users/netsanetgebremedhin/AWS/aws-nextflow-gatk/scatter/work/c5/9cc990bf2ef2e14ca95cac3797c552/C_chr1.file.txt, /Users/netsanetgebremedhin/AWS/aws-nextflow-gatk/scatter/work/13/a101b7c72b22306fb26641f7dd9229/C_chr9.file.txt, /Users/netsanetgebremedhin/AWS/aws-nextflow-gatk/scatter/work/65/fc3bf734167e154cad5591803dae05/C_chr12.file.txt, /Users/netsanetgebremedhin/AWS/aws-nextflow-gatk/scatter/work/5b/157d995cbb1610681d001f2ad8e005/C_chr14.file.txt, /Users/netsanetgebremedhin/AWS/aws-nextflow-gatk/scatter/work/bf/d135a1180de65e94d573e2e68c5caa/C_chr16.file.txt, /Users/netsanetgebremedhin/AWS/aws-nextflow-gatk/scatter/work/8b/72626d4a6b3e98365478277501d6d1/C_chr18.file.txt, /Users/netsanetgebremedhin/AWS/aws-nextflow-gatk/scatter/work/30/7b86e63ef3453567507cc8b44bbfaa/C_chr21.file.txt]]
[A, [/Users/netsanetgebremedhin/AWS/aws-nextflow-gatk/scatter/work/25/dd305440de468da3d13712d88d463f/A_chr6.file.txt, /Users/netsanetgebremedhin/AWS/aws-nextflow-gatk/scatter/work/fb/99f102b8dae681742abe3143c42627/A_chr5.file.txt, /Users/netsanetgebremedhin/AWS/aws-nextflow-gatk/scatter/work/fe/e01708079ff793473ff115e438ff10/A_chr3.file.txt, /Users/netsanetgebremedhin/AWS/aws-nextflow-gatk/scatter/work/55/8b0ed7932b17b354fea640ade5ca60/A_chr1.file.txt, /Users/netsanetgebremedhin/AWS/aws-nextflow-gatk/scatter/work/19/f0dc1425e3f61001570a3cda724183/A_chr4.file.txt, /Users/netsanetgebremedhin/AWS/aws-nextflow-gatk/scatter/work/b3/c374f3903b581ce18c159822492593/A_chr2.file.txt, /Users/netsanetgebremedhin/AWS/aws-nextflow-gatk/scatter/work/09/9eb152db8a179972a669a9f3485148/A_chr7.file.txt, /Users/netsanetgebremedhin/AWS/aws-nextflow-gatk/scatter/work/07/d0f06f60a97e93c5cb6c8a79260a6e/A_chr8.file.txt, /Users/netsanetgebremedhin/AWS/aws-nextflow-gatk/scatter/work/78/7cc859dc3fe4995d537926a6ba57ba/A_chr14.file.txt, /Users/netsanetgebremedhin/AWS/aws-nextflow-gatk/scatter/work/91/94f1a49387e0adf468638bf8c4fdd7/A_chr9.file.txt, /Users/netsanetgebremedhin/AWS/aws-nextflow-gatk/scatter/work/47/b6eb6cf55c47fb4ca1ac2cf3c23670/A_chr10.file.txt, /Users/netsanetgebremedhin/AWS/aws-nextflow-gatk/scatter/work/90/d2d631b7da26f60dbb1f30d2a4d479/A_chr11.file.txt, /Users/netsanetgebremedhin/AWS/aws-nextflow-gatk/scatter/work/4e/328ebe22a9b03e3108de8960be53b8/A_chr12.file.txt, /Users/netsanetgebremedhin/AWS/aws-nextflow-gatk/scatter/work/fb/98f9943c4d1821be20666522567cda/A_chr16.file.txt, /Users/netsanetgebremedhin/AWS/aws-nextflow-gatk/scatter/work/09/ec97cd6051c38b704af9f0eeedef4c/A_chr18.file.txt, /Users/netsanetgebremedhin/AWS/aws-nextflow-gatk/scatter/work/e0/950b69ad28bd5eff334e356738eacb/A_chr21.file.txt]]
[B, [/Users/netsanetgebremedhin/AWS/aws-nextflow-gatk/scatter/work/cf/67fbfb079ddc37dc5288d69dae8fe5/B_chr2.file.txt, /Users/netsanetgebremedhin/AWS/aws-nextflow-gatk/scatter/work/0f/3fd0fa3713b7e413cd8514ac45694e/B_chr1.file.txt, /Users/netsanetgebremedhin/AWS/aws-nextflow-gatk/scatter/work/ee/a8d822e2f38578684a6c3f93df26b5/B_chr5.file.txt, /Users/netsanetgebremedhin/AWS/aws-nextflow-gatk/scatter/work/71/9e7a803bc53c871c2dca85bfde4823/B_chr3.file.txt, /Users/netsanetgebremedhin/AWS/aws-nextflow-gatk/scatter/work/2b/9691a86a0654f673ff8f63be486833/B_chr4.file.txt, /Users/netsanetgebremedhin/AWS/aws-nextflow-gatk/scatter/work/3b/869468be864b0ed76822e8ec6d273d/B_chr6.file.txt, /Users/netsanetgebremedhin/AWS/aws-nextflow-gatk/scatter/work/86/2c01ef387fcb258800d82edca7f0ef/B_chr7.file.txt, /Users/netsanetgebremedhin/AWS/aws-nextflow-gatk/scatter/work/37/5e84bc64ab74c823d656aed5d3a77c/B_chr8.file.txt, /Users/netsanetgebremedhin/AWS/aws-nextflow-gatk/scatter/work/8f/e5e3022557e567f1645a7ed996925a/B_chr9.file.txt, /Users/netsanetgebremedhin/AWS/aws-nextflow-gatk/scatter/work/b5/50cd94f626de16d1d495650c3eba6d/B_chr10.file.txt, /Users/netsanetgebremedhin/AWS/aws-nextflow-gatk/scatter/work/25/b9365023b7792729c4d9ddb3db1866/B_chr11.file.txt, /Users/netsanetgebremedhin/AWS/aws-nextflow-gatk/scatter/work/8c/9934a33ea2c3fa3e26c5f902d65b47/B_chr12.file.txt, /Users/netsanetgebremedhin/AWS/aws-nextflow-gatk/scatter/work/8c/d9840fe0ff4db6e6d8b38ac78b452d/B_chr16.file.txt, /Users/netsanetgebremedhin/AWS/aws-nextflow-gatk/scatter/work/7f/affc209e331572139aa739e1f48f9b/B_chr18.file.txt, /Users/netsanetgebremedhin/AWS/aws-nextflow-gatk/scatter/work/9f/0307a4c6fdc7e7d9be817b6acb0a69/B_chr21.file.txt, /Users/netsanetgebremedhin/AWS/aws-nextflow-gatk/scatter/work/0d/ce17e29166168a3f2a3111f71dded3/B_chr14.file.txt]]
```
