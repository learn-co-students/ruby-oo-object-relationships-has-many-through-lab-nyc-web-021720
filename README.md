# Ruby Object Relations: Has-Many-Through Lab

## Objectives

- Write classes that are related to each other via the "has-many-through"
  relationship.
- Write methods that use the "has-many-through" relationship to deliver
  information on related objects.

## Overview

In this lab, we'll be dealing with two sets of three classes.

We have a `Song`, `Artist` and `Genre` class. Songs belong to an artist and
belong to a genre. A genre has many songs and an artist has many songs. An
artist has many genres through its songs and a genre has many artists through
its songs.

We also have an `Appointment`, `Doctor` and `Patient` class. `Appointment`s
belong to a `Patient` and a `Doctor`. A `Doctor` has many `Appointment`s and a
`Patient` has many `Appointment`s. A `Doctor` has many `Patient`s through its
`Appointment`s and a `Patient` has many `Doctor`s through its `Appointment`s.

```ruby
madonna = Artist.new("Madonna")
```

```ruby
pop = Genre.new("pop")
```

```ruby
madonna = Artist.new("Madonna")
pop = Genre.new("pop")

into_the_groove = Song.new("Into the Groove", madonna, pop)
```

```ruby
doogie = Doctor.new("Doogie Howser")
```

**The `Patient` model:**


```ruby
ferris = Patient.new("Ferris Bueller")
```

```ruby
ferris = Patient.new("Ferris Bueller")
doogie = Doctor.new("Doogie Howser")

new_appointment = Appointment.new('January 1st, 1989', ferris, doogie)
```

<p class='util--hide'>View <a href='https://learn.co/lessons/ruby-objects-has-many-through-lab'>Has Many Objects Through Lab</a> on Learn.co and start learning to code for free.</p>
