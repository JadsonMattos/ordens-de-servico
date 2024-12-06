# Esquema Conceitual para Oficina Mecânica

Este repositório contém o modelo conceitual para um sistema de controle e gerenciamento de ordens de serviço em uma oficina mecânica.

## Contexto
O sistema gerencia clientes, veículos, ordens de serviço, peças e serviços realizados. Ele também controla as equipes de mecânicos responsáveis pelos serviços.

## Estrutura do Modelo
### Entidades Principais
- **Cliente**: Dados do cliente que utiliza os serviços da oficina.
- **Veículo**: Veículos associados aos clientes.
- **Ordem de Serviço (OS)**: Registro das ordens de serviço.
- **Serviço**: Lista de serviços disponíveis.
- **Peça**: Lista de peças disponíveis.
- **Mecânico**: Registro de mecânicos da oficina.
- **Equipe**: Grupos de mecânicos que trabalham em conjunto.

### Relacionamentos
- Cliente possui vários veículos.
- Veículo pode ter várias ordens de serviço.
- Ordem de serviço pode incluir vários serviços e peças.
- Uma equipe de mecânicos é atribuída a cada OS.
- Mecânicos fazem parte de equipes.

## Ferramentas Utilizadas
- MySQL Workbench para modelagem do banco de dados.
- GitHub para versionamento e compartilhamento do projeto.

---
