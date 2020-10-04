nextflow.enable.dsl=2

process getVersionNo {
   output:
   	stdout  emit: version_no
   script:

   """
   echo "v1.2.4"|tr -d '\n'
   """
	
}

process categorize {
    input:
	tuple val(x) , path(hello_file)
	val(version_no)
    output:
	path "${hello_file}.${x}.${version_no}.copy.txt"
    script:
    """
    cat  ${hello_file}>${hello_file}.${x}.${version_no}.copy.txt
    """
}

process handle_valid {
    input:
        path file_name
	tuple val(x) , path(hello_file)
    output:
        path "${file_name}.yet.another.copy.txt"
    """
     cat ${hello_file} ${file_name} > ${file_name}.yet.another.copy.txt
    """
}


workflow {
    file_list=channel
	    .fromPath("./fofn.txt")
	    .splitCsv(header: false, strip: true)
	    .map { line ->[ line[0].tokenize("/")[-1].tokenize('.')[0],file(line[0])] }

	bwa = getVersionNo()    
	results = categorize(file_list,bwa)
	valid_results = handle_valid(results,file_list)

}
