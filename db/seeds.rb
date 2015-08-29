# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


languages = ["Ruby", "Javascript", "HTML", "CSS"];

languages.each do |x|
  Language.create(name:x)
end


@ruby_snippet = Snippet.create(title:"random ruby23", language_id: 1,body: "10.times do puts 
                                                                    \'hello\' 
                                                                    end"  );

@html_snippet = Snippet.create(title: "random html2",language_id: 3, body: "<head>title</head>
                                                                        <body>dsfsaf</body>"
                                                                                 );

@css_snippet = Snippet.create(title: "random css2", language_id: 4, body: "#idcheck:

                                                                   {text-align:center}",  );

@javascript_snippet = Snippet.create(title: "random javascript2", language_id: 2, body: "function myFunction()
                                                                    {dfa}");


