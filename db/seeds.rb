# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)






#Users
user = User.create(email: 'user@user.com' ,  password: "123123", password_confirmation: "123123")
puts "1 User created"

admin = AdminUser.create(email: "admin@admin.com", password: "123123", password_confirmation: "123123")
puts "1 AdminUser created"


#Categories
category_1 = Category.create(category_name: "Pertinencia", escala_bajo: 3.3, escala_medio: 6.6, escala_alto: 10)
category_2 = Category.create(category_name: "Optimización de Recursos", escala_bajo: 3.3, escala_medio: 6.6, escala_alto: 10)
category_3 = Category.create(category_name: "Causalidad de Efectos", escala_bajo: 3.3, escala_medio: 6.6, escala_alto: 10)
category_4 = Category.create(category_name: "Evaluabilidad", escala_bajo: 3.3, escala_medio: 6.6, escala_alto: 10)
category_5 = Category.create(category_name: "Sostenibilidad", escala_bajo: 3.3, escala_medio: 6.6, escala_alto: 10)
# category_6 = Category.create(category_name: "Valor por Dinero", escala_bajo: 3.3, escala_medio: 6.6, escala_alto: 10)

puts "Categories created"

##Questions for Category 1
question_1 = Question.create(category_id: category_1.id, question_body: "Las intervenciones responden a una demanda clara, sentida y registrable por parte de la localidad o de la población que se beneficia con éstas, por estar en una situación de privación o carencia, vulnerabilidad, exclusión social, desventaja, etc., más que a posibles oportunidades de mercado, que no necesariamente conllevan servicios asistencia o desarrollo social relevantes.", yes_value: 1.5, no_value: 0)
question_2 = Question.create(category_id: category_1.id, question_body: "Las intervenciones se diseñan con base en un diagnóstico formal o informal que ayuda a tener una descripción detallada de las distintas necesidades, problemática y características (socio-culturales, económicas, etc.) de los beneficiarios.  ", yes_value: 1.5, no_value: 0)
question_3 = Question.create(category_id: category_1.id, question_body: "Las intervenciones responden con sensibilidad a la variedad de demandas y circunstancias de los beneficiarios, diferenciando su oferta cuando es necesario para considerar especificidades del contexto en que se opera.", yes_value: 0.5, no_value: 0)
question_4 = Question.create(category_id: category_1.id, question_body: "La población objetivo a la cual se prevé prestar las intervenciones ha sido previamente identificada y/o predelimitada y/o seleccionada, con criterios de selección y/o participación claros.", yes_value: 1.5, no_value: 0)
question_5 = Question.create(category_id: category_1.id, question_body: "Las intervenciones incluyen explícitamente una serie de componentes, etapas y/o fases operativas que permite organizar y orientar su quehacer en función de la(s) problemática(s) prioritaria(s) identificadas en sus diagnósticos.", yes_value: 0.5, no_value: 0)
question_6 = Question.create(category_id: category_1.id, question_body: "La institución tiene claridad sobre en qué aspectos de la problemática se centran sus intervenciones: las causas, los efectos y/o los síntomas.", yes_value: 0.5, no_value: 0)
question_7 = Question.create(category_id: category_1.id, question_body: "Las intervenciones están formuladas con base en supuestos teóricos y/o metodológicos explícitos y conocidos que determinan el cómo se desarrollan las acciones.", yes_value: 1.5, no_value: 0)
question_8 = Question.create(category_id: category_1.id, question_body: "Al diseñarse las intervenciones se valoraron otras alternativas de solución y/o evidencias generadas por otros actores para comprender de mejor forma el problema social que se atiende.", yes_value: 0.5, no_value: 0)
question_9 = Question.create(category_id: category_1.id, question_body: "Se realizó un análisis o mapeo que identifica a los diversos actores, instituciones o programas públicos y privados influyentes e interesados con los que se podría trabajar en colaboración / coordinación para brindar un mejor servicio, que incremente los efectos positivos de las intervenciones y contrarreste los efectos no deseados.", yes_value: 1.5, no_value: 0)
question_10 = Question.create(category_id: category_1.id, question_body: "La institución tiene claridad de cuál es el valor distintivo de sus intervenciones y del cual se considera que depende más su eficacia.", yes_value: 0.5, no_value: 0)


##Questions for Category 2
question_11 = Question.create(category_id: category_2.id, question_body: "La estructura operativa (áreas y puestos) de la institución tiene una correspondencia y afinidad clara con el tipo de servicio, los componentes y etapas de sus intervenciones.", yes_value: 0.5, no_value: 0)
question_12 = Question.create(category_id: category_2.id, question_body: "Se han establecido los perfiles operativos y descrito el tipo de funciones y responsabilidades que se requieren para implementar las actividades que incluyen las intervenciones. ", yes_value: 0.5, no_value: 0)
question_13 = Question.create(category_id: category_2.id, question_body: "Se garantiza que los cambios en la estructura organizativa o en los procesos no afecten el cumplimiento y eficacia de las intervenciones.", yes_value: 0.5, no_value: 0)
question_14 = Question.create(category_id: category_2.id, question_body: "Se cuenta con un mecanismo para garantizar que los recursos humanos, materiales y económicos disponibles se inviertan en las actividades o componentes prioritarios de las intervenciones.", yes_value: 1.5, no_value: 0)
question_15 = Question.create(category_id: category_2.id, question_body: "Se puede afirmar que no existe dispersión o cuellos de botella en la implementación de actividades o en la aplicación de recursos, que pueda obstaculizar las intervenciones.", yes_value: 1.5, no_value: 0)
question_16 = Question.create(category_id: category_2.id, question_body: "Se ha desarrollado un mecanismo de monitoreo y/o seguimiento para el cumplimiento de metas y/o actividades que permite asegurar que todas las acciones se realicen ordenadamente en tiempo y forma.", yes_value: 1.5, no_value: 0)
question_17 = Question.create(category_id: category_2.id, question_body: "La institución está poniendo en marcha medidas para economizar, ahorrar u optimizar los recursos disponibles aprovechando todo el margen posible para generar una mejor eficiencia operativa y mayor rentabilidad durante sus intervenciones.", yes_value: 1.5, no_value: 0)
question_18 = Question.create(category_id: category_2.id, question_body: "La institución está captando, movilizando y aprovechando el mayor margen posible de  optimización de recursos externos para buscar complementariedades y potenciar las intervenciones.", yes_value: 1.5, no_value: 0)
question_19 = Question.create(category_id: category_2.id, question_body: "Se cuenta con procedimientos claros que ayudan a asegurar, verificar y controlar la aplicación y optimización de los recursos económicos, humanos y materiales (limite los errores, omisiones y retrasos). ", yes_value: 0.5, no_value: 0)
question_20 = Question.create(category_id: category_2.id, question_body: "Se asegura que la proporción del gasto de operación sea significativamente mayor que el gasto administrativo de la institución.", yes_value: 0.5, no_value: 0)

##Questions for Category 3
question_21 = Question.create(category_id: category_3.id, question_body: "La implementación se ha apegado al diseño de las intervenciones, aunque en los casos en que se consideró necesario y pertinente, éste fue cuestionado y modificado intencionalmente.", yes_value: 0.5, no_value: 0)
question_22 = Question.create(category_id: category_3.id, question_body: "Se implementan los programas y proyectos prioritarios, de forma focalizada, de forma metódica y sistemática, para evitar la dispersión.", yes_value: 1.5, no_value: 0)
question_23 = Question.create(category_id: category_3.id, question_body: "Se trabaja de forma continua y suficiente con la población objetivo, de tal manera que ésta recibe o participa en todos los componentes que se han previsto en el diseño de las intervenciones.", yes_value: 1.5, no_value: 0)
question_24 = Question.create(category_id: category_3.id, question_body: "Los procesos de trabajo se llevan a cabo sin retrasos, alteraciones, omisiones o dispersión significativa de los componentes comprometidos.", yes_value: 0.5, no_value: 0)
question_25 = Question.create(category_id: category_3.id, question_body: "Los implementadores/as  indican de forma puntual en qué consisten los cambios que se han generado en la mayoría de los beneficiarios de la intervención.", yes_value: 0.5, no_value: 0)
question_26 = Question.create(category_id: category_3.id, question_body: "Los implementadores/as pueden describir cómo se han venido produciendo los cambios en la mayoría de los beneficiarios a partir de las intervenciones, y la relación entre unos efectos y los otros.", yes_value: 1.5, no_value: 0)
question_27 = Question.create(category_id: category_3.id, question_body: "Los implementadores/as pueden fundamentar el periodo de tiempo que las intervenciones requieren para producir los cambios que ha comprometido.", yes_value: 1.5, no_value: 0)
question_28 = Question.create(category_id: category_3.id, question_body: "La institución actúa directamente sobre  los aspectos sobre los cuales hay fundamentos de que son determinantes de la problemática que se busca reducir o aliviar.", yes_value: 1.5, no_value: 0)
question_29 = Question.create(category_id: category_3.id, question_body: "Durante la implementación se actúa sobre las externalidades o factores no esperados que se identifican y analizan detenidamente, que están afectando los efectos de las intervenciones.", yes_value: 0.5, no_value: 0)
question_30 = Question.create(category_id: category_3.id, question_body: "Se reducen las duplicidades de efectos y beneficios sociales a partir de la coordinación y comunicación oportuna con otras instituciones (públicas y/o privadas).", yes_value: 0.5, no_value: 0)


##Questions for Category 4
question_31 = Question.create(category_id: category_4.id, question_body: "Los implementadores han producido registros de las características y datos personales de la población beneficiada.", yes_value: 1.5, no_value: 0)
question_32 = Question.create(category_id: category_4.id, question_body: "Se lleva un registro básico o base de datos de los servicios o intervenciones realizadas que documenta el proceso seguido por beneficiario(a).", yes_value: 1.5, no_value: 0)
question_33 = Question.create(category_id: category_4.id, question_body: "Se han identificado y conceptualizado las variables de cambio que se operacionalizan en las intervenciones de la institución, lo que posibilita interpretar hallazgos de sus acciones de evaluación", yes_value: 1.5, no_value: 0)
question_34 = Question.create(category_id: category_4.id, question_body: "Se ha establecido un conjunto básico de indicadores de resultados e impactos que orientan u orientarían la evaluación de los efectos o beneficios de las intervenciones.", yes_value: 1.5, no_value: 0)
question_35 = Question.create(category_id: category_4.id, question_body: "Se han generado instrumentos de valoración que posibilitan o posibilitarían obtener hallazgos sobre la situación de sus intervenciones y de sus beneficiarios.", yes_value: 0.5, no_value: 0)
question_36 = Question.create(category_id: category_4.id, question_body: "El servicio o la intervención ha sido sometido a evaluaciones externas para generar información de sus efectos o beneficios.", yes_value: 0.5, no_value: 0)
question_37 = Question.create(category_id: category_4.id, question_body: "Los implementadores pueden identificar cuáles avances o logros de los comprometidos o deseados están aún pendientes.", yes_value: 0.5, no_value: 0)
question_38 = Question.create(category_id: category_4.id, question_body: "Los implementadores tienen explicaciones razonables sobre las causas o motivos por las cuáles aún no se generan los efectos o beneficios pendientes.", yes_value: 0.5, no_value: 0)
question_39 = Question.create(category_id: category_4.id, question_body: "Los implementadores tienen claridad de qué tipo de medidas de evaluación serían adecuadas para la institución, aunque a la fecha no se hayan realizado.", yes_value: 1.5, no_value: 0)
question_40 = Question.create(category_id: category_4.id, question_body: "Los implementadores conocen cuál ha sido la utilidad de sus esfuerzos de evaluación  porque se han tomado decisiones para la mejora de las intervenciones derivadas del aprendizaje generado.", yes_value: 0.5, no_value: 0)


##Questions for Category 5
question_41 = Question.create(category_id: category_5.id, question_body: "Se están realizando acciones encaminadas a garantizar la solvencia necesaria para la permanencia, continuidad y replicabilidad de las intervenciones desarrolladas.", yes_value: 1.5, no_value: 0)
question_42 = Question.create(category_id: category_5.id, question_body: "Los implementadores pueden distinguir entre los factores internos y externos que resultan clave para la sostenibilidad  de las intervenciones.", yes_value: 1.5, no_value: 0)
question_43 = Question.create(category_id: category_5.id, question_body: "Se están previendo y tomando medidas para aprovechar los factores internos favorables y/o para hacer frente los riesgos relevantes, identificando los más prioritarios y críticos para la sostenibilidad.", yes_value: 0.5, no_value: 0)
question_44 = Question.create(category_id: category_5.id, question_body: "Se están previendo y tomando medidas para aprovechar los factores externos favorables y/o para hacer frente a las amenazas relevantes, identificando los más prioritarios y críticos para la sostenibilidad.", yes_value: 0.5, no_value: 0)
question_45 = Question.create(category_id: category_5.id, question_body: "Se están tomando medidas para incrementar la sustentabilidad financiera de la institución (patrimonio, diversificación de fuentes de financiamiento, movilización de recursos, fondos de previsión, modelo de coinversión, etc.) de forma que pueda mantenerse e incrementarse la inversión en las intervenciones.", yes_value: 1.5, no_value: 0)
question_46 = Question.create(category_id: category_5.id, question_body: "Existen esfuerzos o iniciativas en proceso y acuerdos generales de articulación y vinculación con aquellos actores que favorecen las intervenciones (organizaciones pares, autoridades, líderes locales, etc.). ", yes_value: 0.5, no_value: 0)
question_47 = Question.create(category_id: category_5.id, question_body: "Se están tomando medidas para el desarrollo de capacidades y/o liderazgo social de colaboradores y/o participantes involucrados en las intervenciones.", yes_value: 0.5, no_value: 0)
question_48 = Question.create(category_id: category_5.id, question_body: "Se establecen estrategias de salida y/o mecanismos de no-dependencia de los beneficiarios (instalación de capacidades, canalización, formación de otras instancias, etc.)", yes_value: 1.5, no_value: 0)
question_49 = Question.create(category_id: category_5.id, question_body: "La institución ha demostrado requerir el apoyo de su donante (o donantes) relevante(s) para poder mantener su trabajo.  ", yes_value: 1.5, no_value: 0)
question_50 = Question.create(category_id: category_5.id, question_body: "Se están llevando a cabo esfuerzos para escalar (evolucionar o mejorar) y/o expandir las intervenciones.", yes_value: 0.5, no_value: 0)


##Questions for Category 6
# question_51 = Question.create(category_id: category_6.id, question_body: "", yes_value: 1, no_value: 0)
# question_52 = Question.create(category_id: category_6.id, question_body: "", yes_value: 1, no_value: 0)
# question_53 = Question.create(category_id: category_6.id, question_body: "", yes_value: 1, no_value: 0)
# question_54 = Question.create(category_id: category_6.id, question_body: "", yes_value: 1, no_value: 0)
# question_55 = Question.create(category_id: category_6.id, question_body: "", yes_value: 1, no_value: 0)
# question_56 = Question.create(category_id: category_6.id, question_body: "", yes_value: 1, no_value: 0)
# question_57 = Question.create(category_id: category_6.id, question_body: "", yes_value: 1, no_value: 0)
# question_58 = Question.create(category_id: category_6.id, question_body: "", yes_value: 1, no_value: 0)
# question_59 = Question.create(category_id: category_6.id, question_body: "", yes_value: 1, no_value: 0)
# question_60 = Question.create(category_id: category_6.id, question_body: "", yes_value: 1, no_value: 0)


puts "Questions created"



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


puts "Answers created"
