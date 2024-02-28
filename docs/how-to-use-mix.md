
## creating new project


```sh
mix new app-name
```

## open the the project on vscode 
## compiling the code

```sh
mix compile
```
## new you can interact with the compiler app with in elixir sheel

```sh
iex -S mix
```
## call hello function from shell

**Here if There as a vue to return will display but**
**if there is a value to be printed will just displat :ok**

```iex
Les02.hello 
```
## You Will get  returned value or do this

**Here if the value if for return will not be**
**printed but if there is print will be printed**

```sh
mix run -e "Example.hello"
```


## making outside the demodule and run the command

```elixir
    Les02.hello()
```
```sh
mix run
```
**It Will Be Showing in The first time compilation if there is no changes occured on the code so it will not showing any thing**

## Making Changes on mix.exs

wen you will find this comment
```elixir
# Run "mix help compile.app" to learn about applications.

def application do
    [
        mod: { Les02 : []},
        extra_application: [:logger]
    ]
end
```


