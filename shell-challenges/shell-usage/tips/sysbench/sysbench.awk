#! /bin/sh

function ltrim(s){
    sub(/^[ \t\r\n]+/,"",s);
    return s;
}

function rtrim(s){
    sub(/[ \t\r\n]+$/,"",s);
    return s ;
}

function trims(s){
    return rtrim(ltrim(s)); 
}

function printKV(key,value){
    printf(",\"%s\":%s",key,value)
}

function output(key,value){
    idx=index(value,"per")
    if(idx>0){
        split(value,assigned_items," ")
        printKV(key"_num",assigned_items[1])
        printKV(key"_tps",substr(assigned_items[2],2))
    }else{
                idx2=index(value,"ms")
                idx3=index(value,"s")
                idx4=index(value,"/")
                if(idx2 > 0){
                        printKV(key,substr(value,1,idx2-1))
                } else if(idx3 > 0) {
                        printKV(key,substr(value,1,idx3-1))
                } else if(idx4 > 0) {
                        printKV(key,substr(value,1,idx4-1))
                } else {
                        printKV(key,value)
                }
    }
}

BEGIN{
        FS=":"
        printf("{\"table_size\":%s", table_size)
        printf(",\"engine\":\"%s\"", engine)
        if(length(custom_tag) > 0) {
                printf(",%s", custom_tag)
        }
}{
        if(NF>=2) {
                key = trim($1)
                value = trim($2)
                if(length(key) >0 && length(value) >0 ) {
                        output(key, value)
                }
        }
}END
printf("\n")