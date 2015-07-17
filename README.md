Title: Portfolio/Epicoding

Author: Enrique Esparza

Describe:this app lets you add, edit, delete Skill/Languages and their descriptions and allows you to add, edit, delete Projects (along with description and links) for each individual Skill.

Github:https://github.com/EnriqueEsparza/epicoding.git
Heroku: 

Built using: Ruby on Rails, HTML, Bootstrap, PSQL
to start postres and setup tables run:
>$postgres
in new tab run:
>$rake db:create
>$rails generate migration create_skills
create columns for: name, description, timestamps
>$rake db:migrate
>$rails generate migration create_projects
create columns for: name, description, links, skill_id, timestamps
>$rake db:migrate
>$rake db:test:prepare

to start rails server: run cmd $ rails s (then go to localhost:3000 on browser)

MIT License: Copyright (c) 2009-2015 Plataformatec http://plataformatec.com.br/

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
