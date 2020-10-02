nextflow.enable.dsl=2

process categorize {
    input:
	tuple val(x) , path(hello_file)
    output:
	path "${hello_file}.${x}.copy.txt"
    script:
    """
    cat  ${hello_file}>${hello_file}.${x}.copy.txt
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
    
	results = categorize(file_list)
	valid_results = handle_valid(results,file_list)

}
