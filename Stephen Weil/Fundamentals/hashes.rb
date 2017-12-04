test_hash = {
    name: "Stephen Weil",
    age: 28,
    birthday: "8/24/89",
    gender: "Male"
}

p "This got some stuff in it!" unless test_hash.empty?

p "It's got a key for 'age'!'" if test_hash.has_key?(:age)

p "It doesn't have the value 'Badass'...'" unless test_hash.has_value?('Badass')

p "But it does have 'Male'..." if test_hash.has_value?('Male')

p "We're gonna delete the key 'birthday'. It contained: " + test_hash.delete(:birthday)