data NestedList a = Elem a | List [NestedList a]
flatten (Elem elem)=[elem]
flatten (List (x:xs))=flatten x++ flatten (List xs)
flatten (List [])= []
