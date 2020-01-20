# Cuddly Dollop

## Usage

Add a token in the file `apitoken` and run:

```
$ bin/run 2020-01-10
```

## Task

There are two tasks:

### Client

Implement the `download_report` method in the `client.rb` file. As can
be seen in the bin-script, the class is called with Ruby's `Net::HTTP`
class. Use that to access the Criteo API (docs
https://publisherdocs.criteotilt.com/pmc-api/#reporting-api-overview).

The response format from the client should be such that it works with
the `run` method in the importer.

### Importer

Implement the method `top_ten_countries_sorted_by_revenue` in the
`importer.rb` file. The name of the method explains what the method
should do.
