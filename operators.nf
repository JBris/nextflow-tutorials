Channel
    .of(1,2,3,4)
    .map { it -> it * it }
    .mix(Channel.of( 1,2,3 )) 
    .collect()
    .flatten()
    .view { "- $it" }

left = Channel.of(['X', 1], ['Y', 2], ['Z', 3], ['P', 7])
right = Channel.of(['Z', 6], ['Y', 5], ['X', 4])
left.join(right).view()

Channel
    .of( [1,'A'], [1,'B'], [2,'C'], [3, 'B'], [1,'C'], [2, 'A'], [3, 'D'] )
    .groupTuple()
    .view()

Channel
    .of(1,2,3,40,50)
    .branch {
        small: it < 10
        large: it > 10
    }
    .set { result }

result.small.view { "$it is small" }
result.large.view { "$it is large" }
