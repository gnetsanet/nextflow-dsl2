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
NOTE: Nextflow is not tested with Java 14.0.2 -- It's recommended the use of version 8 up to 12

N E X T F L O W  ~  version 20.07.1
Launching `nf-test-ds2.nf` [voluminous_engelbart] - revision: 2128069b96
executor >  local (21)
[9b/52787b] process > getVersionNo      [100%] 1 of 1 ✔
[bf/92f5a0] process > categorize (8)    [100%] 10 of 10 ✔
[f5/71758f] process > handle_valid (10) [100%] 10 of 10 ✔
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
