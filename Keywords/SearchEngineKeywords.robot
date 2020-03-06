*** Keywords ***

I Am Searching For Something
    Input Text  ${main_nav_search_field}  ${search_word_macbook}
    Press Keys   ${main_nav_search_field}  RETURN

Check That Search Results Page URL Conatins The Searched Word
    ${search_url}=  Catenate  SEPARATOR=  ${SEARCH_RESULTS_URL}  ${search_word_macbook}
    Location Should Be  ${search_url}

The Search Results Page Shows Only Products That Contain The Searched Word
   Check That Search Results Page URL Conatins The Searched Word
## With next line we get count of products returned from the search
   ${count}=    Get Element Count    ${product_name_plp_locator_without_xpath}
## With next line we create empty list, where we can store some values
   ${items_name}=    Create List
## With next line we start cycle that will run from first value of list (1) till list ends (${count} + 1)
   :FOR    ${i}    IN RANGE    1    ${count} + 1
## With next line we are getting the name of the product that is on the corresponding index of the list
   \    ${name}=    Get Text    xpath=(${product_name_plp_locator_without_xpath})[${i}]
## With next line we store the name of the product from previous line into the created list
   \    Append To List    ${items_name}   ${name}
## We log list contain for debugging purposes
   Log   ${items_name}
## With next line we check how many times the searched word is contained in the list and store the value in ${count_list}
   ${count_list}=  Get Match Count  ${items_name}  regexp=${search_word_macbook}*  case_insensitive=${True}
## Next we check that the product count in search results page and the count of products that contain searched word are should be equal
## this verifies that the search returns matching results
   Should Be Equal  ${count}  ${count_list}