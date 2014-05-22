
// just for the demos, avoids form submit
jQuery.validator.setDefaults({
  debug: true,
  success: "valid"
});
$( "#myform" ).validate({
  rules: {
    sexo: {
      required: true
    },
    nome: {
      required: true,
      minlength: 10
    },
    password: {
      required: true,
      minlength: 5
    },
    dataNascimento: {
      required: true,
      date: true
    },
    morada: {
      required: true,
      minlength: 10
    },
    telefone: {
      required: true,
      minlength: 9,
      digits: true
    },
    email: {
      required: true,
      email: true
    },
    altura: {
      required: true,
      number: true
    },
    peso: {
      required: true,
      number: true
    },
    saltoVertical: {
      required: true,
      number: true
    },
    velocidadeDeslocamento: {
      required: true,
      number: true
    },
    alcanceAtaque: {
      required: true,
      number: true
    },
    alcanceBloco: {
      required: true,
      number: true
    },
    examesClinicos: {
      required: true,
      minlength: 10
    },
  }
});
