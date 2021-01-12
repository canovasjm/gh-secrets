![email-from-python](https://github.com/canovasjm/gh-secrets/workflows/email-from-python/badge.svg) ![email-from-r](https://github.com/canovasjm/gh-secrets/workflows/email-from-r/badge.svg)

# gh-secrets

El objetivo de este repositorio es mostrar cómo usar *GitHub Secrets* desde Python y R. Para ello escribí dos scripts (uno en Python y el otro en R) con el mismo propósito: enviar un email.  

La información sensible (direcciones de email y una contraseña) se almacena como *GitHub Secrets* y ambos scripts la leen desde allí. Específicamente, estos *Secrets* son:

`EMAIL_SENDER`: dirección desde donde se envía el email.  
`EMAIL_PASSWORD`: contraseña de la cuenta desde donde se envía el email.  
`EMAIL_RECIPIENT`: dirección que recibe el email.  

# gh-secrets

The objective of this repository is to show how to use *GitHub Secrets* from Python and R. To do so I wrote two scripts (one in Python and the other in R) with the same purpose: to send an email.  

Sensible information (email addresses and a password) is stored as *GitHub Secrets* and both scripts read it from there. Especifically, these *Secrets* are:

`EMAIL_SENDER`: sender's email address.  
`EMAIL_PASSWORD`: password for sender's email address.  
`EMAIL_RECIPIENT`: recipient's email address.  
