#!/bin/bash

PS3='Choose your favorite vegetable: '

echo

choice_of ()
{
    select vegetable
do
    echo
    echo "Your favorite veggie is $vegetable."
    echo "Yuck!"
    echo
    break
done
}

choice_of beans rice carrots radishes rutabaga spinach

exit 0
