# Terraform_Variables_Conditonals_Loops

Terraform loads variables in the following order:

- Any -var and -var-file options on the command line, in the order they are provided.
- Any *.auto.tfvars or *.auto.tfvars.json files, processed in lexical order of their filenames.
- The terraform.tfvars.json file, if present.
- The terraform.tfvars file, if present.
- Environment variables

- refresh  command
The terraform refresh command is used to update the state file with the real-world infrastructure. This can be used to detect any drift from the last-known state, and to update the state file. 

Locals
A local value assigns a name to an expression, so you can use it multiple times within a module without repeating it.

Conditionals and Loops

- count
By default, a resource block configures one real infrastructure object. However, sometimes you want to manage several similar objects (like a fixed pool of compute instances) without writing a separate block for each one. Terraform has two ways to do this: count and for_each.

The count argument accepts a whole number, and creates that many instances of the resource or module. Each instance has a distinct infrastructure object associated with it, and each is separately created, updated, or destroyed when the configuration is applied.

- for_each
The for_each meta-argument accepts a map or a set of strings, and creates an instance for each item in that map or set. Each instance has a distinct infrastructure object associated with it, and each is separately created, updated, or destroyed when the configuration is applied.

- Conditional Expressions
A conditional expression uses the value of a boolean expression to select one of two values.