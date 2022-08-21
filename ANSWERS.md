# GetNinjas DevOps Answers. 🚀🚀🚀


## Sobre o teste
Processo seletivo muito 🔝, isso mostra a **qualidade do time**. Cenário desafiador, cheio de possibildades, onde a criatividade e capacidade de desenhar soluções em cloud são cruciais para uma boa entrega.<br>
Gostaria de ratificar que minha experiência com cloud AWS é apenas de laboratório pessoal, para fins de estudo. Há cerca de 30 dias o cliente que trabalho aderiu uma ata permitindo o uso de AWS como solução de Disaster Recovery DR, ou seja, estou tendo contato de verdade agora com cloud. 


## Cenário
Conforme solicitado, foi criado um fork do projeto https://github.com/getninjas/devops_test e adicionado arquivo de nome **Dockerfile** com o objetivo de empacotar o código disponibilizado na linguagem Golang.

Considerando o nível da aplicação disponibilizada para deploy, além dos requisitos de escalabilidade, billing, segurança, monitoramento e logging , a solução **Elastic BeanStalk** se encaixa perfeitamente, inclusive pela facilidade de implantação permitindo focar no negócio não na tecnologia. 

### Solução Escolhida 
O recurso da AWS escolhido foi o **Elastic BeanStalk** por ser fácil e simples de começar, aumento de produtividade do desenvolvedor, possibilidade de escalar APP baseado em métricas de CPU por exemplo, além de permitir o controle total dos recurso, tipo, alterar o shape da instância EC2 posssibilitando maior workload para o sistema. <br>

>
O AWS Elastic Beanstalk é um serviço de fácil utilização para implantação e escalabilidade de aplicações e serviços da web desenvolvidos com Java, .NET, PHP, Node.js, Python, Ruby, Go e Docker em servidores familiares como Apache, Nginx, Passenger e IIS.<br>

Basta fazer o upload de seu código e o Elastic Beanstalk se encarrega automaticamente da implementação, desde o provisionamento de capacidade, o balanceamento de carga e a escalabilidade automática até o monitoramento da saúde do aplicativo. Ao mesmo tempo, você mantém total controle sobre os recursos da AWS que possibilitam a operação do seu aplicativo e pode acessar os recursos subjacentes a qualquer momento.<br>

Não há custos adicionais pelo Elastic Beanstalk – você só paga pelos recursos da AWS necessários para executar e armazenar seus aplicativos.

[Documentação AWS](https://aws.amazon.com/pt/elasticbeanstalk/)
>

### Benefícios 
- 


