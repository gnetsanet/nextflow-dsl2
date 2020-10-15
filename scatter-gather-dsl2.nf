#!/usr/bin/env nextflow
nextflow.preview.dsl=2


dict_file = file("${params.dict}")

process test {
    input:
    tuple val(group_name), val(groupdetail), val(sampleId)

    output:
    tuple val(sampleId), path("${sampleId}_${group_name}.file.txt")

    script:
    groupdetail_trimmed = groupdetail.trim().split().join(" -L ")

    """
    echo "${groupdetail_trimmed}" > "${sampleId}_${group_name}.file.txt"
    """
}

process collectFilesBySample {
   echo "true"
   input:
   tuple val(sampleId), path(myfiles)
   
   output:
   path("${sampleId}_final_report.txt")
	
   script:
   files_to_print = myfiles.join("\n")
   """
   echo  "${files_to_print}" > "${sampleId}_final_report.txt"
   """
	
}

workflow {
	
	mydata = channel.fromPath(dict_file).splitText().map{ line ->[ line.tokenize(':')[0], line ] }
	//mydata.combine(channel.from("A","B","C")).view()
	test(mydata.combine(channel.from("A","B","C")))
	collectFilesBySample(test.out.groupTuple())
	//test.out.groupTuple().view()
}
