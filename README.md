# Words Organizer

**`WordsOrganizer`** is a ruby class that stores an array of words and can sort them all in alphabetical order by runing a method called **`sort_words`** that implements the `merge sort` algorithm.

>Merge sort is a sorting technique based on divide and conquer technique. With worst-case time complexity being Ο(n log n), it is one of the most respected algorithms. Merge sort first divides the array into equal halves and then combines them in a sorted manner. [Wikipedia](https://en.wikipedia.org)

## Usage

- Fork repository
- cd into `words_organizer` directory
- Run `bundle install`
- Run `rake console` and a pry console will be loaded with **`WordsOrganizer`** object loaded and ready to be used.

```ruby
organizer = WordsOrganizer.new(['zrb','aba', 'cba', 'bca'])

organizer.sort_words #=> ['aba', 'bca', 'cba', 'zrb']
```

## Methods

```ruby
organizer.len #=> 4

organizer.add('other') #=> ['zrb','aba', 'cba', 'bca, 'other']

organizer.is_empty? #=> false

organizer.is_not_empty? #=> true

organizer.first_element #=> 'zrb'

organizer.remove_at(1) #=> 'aba'
# organizer = ['zrb', 'cba', 'bca, 'other']

organizer.extract_first #=> 'zrb'  
# organizer = ['cba', 'bca, 'other']

organizer.sort_words #=> ['bca', 'cba', 'other']
```
## Assumptions

- All elements added to **`WordsOrganizer`** are lowercase **strings**
- Does not consider special characters
- Does not consider empty strings
- Does not consider case-sensitive comparison

## Tests

All methods used to build the **`WordsOrganizer`** class were tested using Rspec. All tests are located at `/words_organizer/spec/methods`.

Run all tests by typing `rspec spec` in the command line from `/words_organizer` directory.

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/aprietof/WordsOrganizer. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

This project is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
