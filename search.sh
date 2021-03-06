#fairly simple bash function for searching in one of three different search engines from the command line. Google, Yandex, Duckduckgo

s() {
    search_engine_arg=$1
       
    shift
    search_args=""
       echo "searching for: $@"
        for term in $@; do
                search_args="$search_args+$term"
        done

        if [ $search_engine_arg = 'g' ]
        then
                search_url="https://www.google.com/search?as_q=$search_args"
                links "https://www.google.com/search?as_q=$search_args"
        elif [ $search_engine_arg = 'y' ]
        then
                links "https://www.yandex.com/search/?text=$search_args"
        elif [ $search_engine_arg = 'd' ]
        then
                links "https://duckduckgo.com/?q=$search_args"
        else
                echo "please enter g, y, or d as your first argument"
        fi


}
