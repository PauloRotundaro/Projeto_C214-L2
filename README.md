[![CI](https://github.com/PauloRotundaro/Projeto_C214-L2/actions/workflows/flutter.yml/badge.svg)](https://github.com/PauloRotundaro/Projeto_C214-L2/actions/workflows/flutter.yml)

<h1 align="center"> Hello, dev!🤓💻 </h1>

## Quer ir direto ao ponto? 🔖

- [O Projeto](#o-projeto-)
- [Equipe](#equipe)
- [Instalação](#instalação)
   - [Pré-requisitos](#pré-requisitos)
   - [Variável de ambiente](#variável-de-ambiente)
   - [Android Studio](#android-studio)
   - [Flutter Doctor](#flutter-doctor)
   - [Licenças do Android](#concordar-com-as-licenças-do-android)
   - [Vídeos tutoriais(Para facilitar)](#para-facilitar)
- [Testes](#testes-%EF%B8%8F%EF%B8%8F)
- [Arquivos](#arquivos-open_file_folder)
- [Utilizando a aplicação](#utilizando-a-aplicação)

# O Projeto 📈
![logo](https://user-images.githubusercontent.com/58473930/145679567-3875b966-4677-4482-8a80-371ce10f9519.png) </br>
💻 O projeto consiste em um aplicativo, no qual o usuário insere os valores do Álcool e da Gasolina e então é informado qual combustível compensa para abastecer.

# Equipe
* 👧 Ana Luiza Terra
* 👦 Leonardo Brandão
* 👦 Paulo Rotundaro

# Framework
🧑‍💻 O projeto foi feito utilizando do <a href="https://flutter.dev/?gclid=CjwKCAjwkvWKBhB4EiwA-GHjFop1Q7OVUEWgTx3fWIRhxP0oBNPxVinR1dKDmdGhOtGIbLb2sQL8SBoCLtUQAvD_BwE&gclsrc=aw.ds">Flutter</a>, framework que foi utilizado nas aulas com o monitor Leonardo. </br>
⚠️ A versão utilizada nesse projeto é a 1.22.6.

# Instalação

⚙️ Se você entende um pouco de inglês, e quer ler a documentação oficial de instalação do Flutter para <a href="https://docs.flutter.dev/get-started/install/windows">Windows</a>, <a href="https://docs.flutter.dev/get-started/install/macos">MacOS</a>, <a href="https://docs.flutter.dev/get-started/install/linux">Linux</a> e <a href="https://docs.flutter.dev/get-started/install/chromeos">ChromeOS</a>, basta <a href="https://docs.flutter.dev/get-started/install"/>clicar aqui</a>

Mas não se preocupe, o processo de instalação é simples, e vamos te passar o passo a passo aqui em baixo. ⬇️ 😄

### Pré-requisitos
![image](https://user-images.githubusercontent.com/58473930/145691872-c20d124a-145e-4a9a-9a42-5752e5b2a89b.png)

#### Para obter o SDK Flutter <a href="https://storage.googleapis.com/flutter_infra_release/releases/stable/windows/flutter_windows_2.8.0-stable.zip">clique aqui</a>.

#### Para outros canais de lançamento e compilações mais antigas, consulte a página de <a href="https://docs.flutter.dev/development/tools/sdk/releases">lançamentos</a> do SDK .

Extraia o arquivo zip e coloque a pasta flutter em um local apropriado de instalação para o SDK Flutter. (por exemplo, C:\Users\<your-user-name>\Documents)

### Variável de ambiente
📝 Se você desejar executar comandos Flutter pelo console do windows, precisa configurar uma variável para o Flutter às suas <a href="https://www.java.com/pt-BR/download/help/path_pt-br.html">variáveis de ambiente</a>
* Na barra de pesquisa do windows, procure por 'env' e selecione "Editar variáveis de ambiente do sistema"
* Em 'Variáveis de Ambiente', verifique se há uma entrada chamada PATH. Se a entrada existir, anexe à ela o caminho completo para seu "flutter\bin" (use ; como separador dos valores já existentes).</br>
Se não existir, crie uma variável nomeada "Path" e anexe à ela o caminho completo para seu "flutter\bin".

### Android Studio

* Baixe e instale <a href="https://developer.android.com/studio">Android Studio</a>
* Inicie o Android Studio e siga o 'Android Studio Setup Wizard'. Isso instala o Android SDK, as ferramentas de linha de comando do Android SDK e as ferramentas de construção do Android SDK, que são exigidas pelo Flutter ao desenvolver para Android

### Flutter Doctor
Em um console que entendo o comando **flutter**, rode o comando
```bash
flutter doctor
```

Este comando verifica seu ambiente e exibe um relatório do status da instalação do Flutter. </br>
Se o Flutter não conseguir localizá-lo, execute o código abaixo para definir o diretório em que o Android Studio está instalado.
```bash
flutter config --android-studio-dir <directory>
```

⚠️ *Verifique a saída com cuidado para observar eventuais erros/problemas.* ⚠️

*Observação:* Se **flutter doctor** retornar que o plug-in Flutter ou Dart do Android Studio não estão instalados, vá para <a href="https://docs.flutter.dev/get-started/editor?tab=androidstudio">configurar um editor</a> para resolver esse problema.

### Concordar com as licenças do Android
Antes de usar o Flutter, você deve concordar com as licenças da plataforma Android SDK. Esta etapa deve ser executada após os processos anteriores.
* Certifique-se de ter uma versão do Java 8 instalada e que sua variável de ambiente esteja configurada para a pasta do JDK. </br>
⚠️As versões 2.2 ou superiores do Android Studio já vêm com um JDK.

* Abra um console e execute o seguinte comando
```bash
flutter doctor --android-licenses
```

### **Para facilitar**
Abaixo, seguem links de dois vídeos, feitos pelo monitor Leonardo de Souza da matéria de Engenharia de Software do ***Inatel - Instituto Nacional de Telecomunicações*** explicando o processo de instalação do Flutter no Windows e configurando o dispositivo móvel para rodar a aplicação.

* <a href="https://www.youtube.com/watch?v=xC14BiwajWI">Instalação do Flutter no Windows</a>
* <a href="https://www.youtube.com/watch?v=x7gU01USeis">Como usar o seu celular no desenvolvimento Flutter</a>

### Utilizando a aplicação 
