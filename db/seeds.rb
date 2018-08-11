# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


#Users
admin = User.create(email: 'admin@admin.com' ,  password: "password", 
										password_confirmation: "password")

#Categories
category_1 = Category.create(category_name: "Pertinencia", escala_bajo: 3.3, escala_medio: 6.6, escala_alto: 10)
category_2 = Category.create(category_name: "Optimización de Recursos", escala_bajo: 3.3, escala_medio: 6.6, escala_alto: 10)
category_3 = Category.create(category_name: "Causalidad de Efectos", escala_bajo: 3.3, escala_medio: 6.6, escala_alto: 10)
category_4 = Category.create(category_name: "Evaluabilidad", escala_bajo: 3.3, escala_medio: 6.6, escala_alto: 10)
category_5 = Category.create(category_name: "Valor por Dinero", escala_bajo: 3.3, escala_medio: 6.6, escala_alto: 10)
category_6 = Category.create(category_name: "Sostenibilidad", escala_bajo: 3.3, escala_medio: 6.6, escala_alto: 10)

#Questions
question_1 = Question.create(category_id: category_1.id, question_body: "Las intervenciones responden a una demanda clara, sentida y registrable por parte de la localidad o de la población que se beneficia con éstas, por estar en una situación de privación o carencia, vulnerabilidad, exclusión social, desventaja, etc., más que a posibles oportunidades de mercado, que no necesariamente conllevan servicios asistencia o desarrollo social relevantes.", yes_value: 1.5, no_value: 0)
question_2 = Question.create(category_id: category_1.id, question_body: "Las intervenciones se diseñan con base en un diagnóstico formal o informal que ayuda a tener una descripción detallada de las distintas necesidades, problemática y características (socio-culturales, económicas, etc.) de los beneficiarios.  ", yes_value: 1.5, no_value: 0)
question_3 = Question.create(category_id: category_1.id, question_body: "Las intervenciones responden con sensibilidad a la variedad de demandas y circunstancias de los beneficiarios, diferenciando su oferta cuando es necesario para considerar especificidades del contexto en que se opera.", yes_value: 1.5, no_value: 0)
question_4 = Question.create(category_id: category_1.id, question_body: "La población objetivo a la cual se prevé prestar las intervenciones ha sido previamente identificada y/o predelimitada y/o seleccionada, con criterios de selección y/o participación claros.", yes_value: 1.5, no_value: 0)
question_5 = Question.create(category_id: category_1.id, question_body: "Las intervenciones incluyen explícitamente una serie de componentes, etapas y/o fases operativas que permite organizar y orientar su quehacer en función de la(s) problemática(s) prioritaria(s) identificadas en sus diagnósticos.", yes_value: 1.5, no_value: 0)
question_6 = Question.create(category_id: category_1.id, question_body: "La institución tiene claridad sobre en qué aspectos de la problemática se centran sus intervenciones: las causas, los efectos y/o los síntomas.", yes_value: 1.5, no_value: 0)
question_7 = Question.create(category_id: category_1.id, question_body: "Las intervenciones están formuladas con base en supuestos teóricos y/o metodológicos explícitos y conocidos que determinan el cómo se desarrollan las acciones.", yes_value: 1.5, no_value: 0)
question_8 = Question.create(category_id: category_1.id, question_body: "Al diseñarse las intervenciones se valoraron otras alternativas de solución y/o evidencias generadas por otros actores para comprender de mejor forma el problema social que se atiende.", yes_value: 1.5, no_value: 0)
question_9 = Question.create(category_id: category_1.id, question_body: "Se realizó un análisis o mapeo que identifica a los diversos actores, instituciones o programas públicos y privados influyentes e interesados con los que se podría trabajar en colaboración / coordinación para brindar un mejor servicio, que incremente los efectos positivos de las intervenciones y contrarreste los efectos no deseados.", yes_value: 1.5, no_value: 0)
question_10 = Question.create(category_id: category_1.id, question_body: "La institución tiene claridad de cuál es el valor distintivo de sus intervenciones y del cual se considera que depende más su eficacia.", yes_value: 1.5, no_value: 0)

#Answers
answer_1 = Answer.create(user_id: admin.id, question_id: question_1.id, ques_category: question_1.category_id, value: true)
answer_2 = Answer.create(user_id: admin.id, question_id: question_2.id, ques_category: question_2.category_id, value: false)
answer_3 = Answer.create(user_id: admin.id, question_id: question_3.id, ques_category: question_3.category_id, value: true)
answer_4 = Answer.create(user_id: admin.id, question_id: question_4.id, ques_category: question_4.category_id, value: false)
answer_5 = Answer.create(user_id: admin.id, question_id: question_5.id, ques_category: question_5.category_id, value: false)
answer_6 = Answer.create(user_id: admin.id, question_id: question_6.id, ques_category: question_6.category_id, value: true)
answer_7 = Answer.create(user_id: admin.id, question_id: question_7.id, ques_category: question_7.category_id, value: false)
answer_8 = Answer.create(user_id: admin.id, question_id: question_8.id, ques_category: question_8.category_id, value: true)
answer_9 = Answer.create(user_id: admin.id, question_id: question_9.id, ques_category: question_9.category_id, value: false)
answer_10 = Answer.create(user_id: admin.id, question_id: question_10.id, ques_category: question_10.category_id, value: true)



