// Crie um aplicativo onde os usuários possam adicionar, remover e marcar tarefas como concluídas. Use eventos de clique para adicionar ou remover tarefas. As tarefas possuem informações como, descrição, prioridade, status e prazo. A base das informações deve ser estruturada em um vetor de objetos. O prazo deve ser representado por um objeto Date do JavaScript. Mostre as informações em tabela.

const vetor = [
    {
        id: 1,
        descricao: "Beber água",
        status: "Pendente",
        prioridade: "Média",
        prazo: new Date(2023, 7-1, 21, 12, 0)
    },
    {
        id: 2,
        descricao: "Marcar reunião",
        status: "Pendente",
        prioridade: "Baixa",
        prazo: new Date(2023, 9-1, 14, 13, 30)
    },
    {
        id: 3,
        descricao: "Comprar presente da Miguel",
        status: "Pendente",
        prioridade: "Alta",
        prazo: new Date(2023, 12-1, 7, 21, 45)
    }
];

function inicializaTabela(tarefas) {
    const tabela = document.querySelector("#content-table"); // tbody
    tabela.innerHTML = "";
    for(let tarefa of tarefas) {
        const dataFortada = tarefa.prazo.toLocaleDateString() + " " + tarefa.prazo.toLocaleTimeString();
        tabela.innerHTML += `
            <tr>
                <td>
                    <input
                        type="checkbox"
                        ${tarefa.status == "Concluído" && "checked"}
                        data-tarefa="${tarefa.id}"
                        class="check-concl"
                    >
                </td>
                <td>${tarefa.descricao}</td>
                <td>${tarefa.prioridade}</td>
                <td>${tarefa.status}</td>
                <td>${dataFortada}</td>
                <td>
                    <button data-tarefa="${tarefa.id}" class="btn-delete">Apagar</button>
                </td>
            </tr>
        `;
    }
    configurarEventos();
}

// data (dado)

function configurarEventos() {
    // configurar evento de apagar
    const btnsDel = document.querySelectorAll(".btn-delete");
    for(let btn of btnsDel) {
        btn.addEventListener("click", (event) => {
            const btnClicked = event.target;
            const id = btnClicked.dataset.tarefa; // trazer o id da tarefa
            removerTarefa(id);
            inicializaTabela(vetor);
        });
    }
    // configurar evento de concluir
    const checks = document.querySelectorAll(".check-concl");
    for(let check of checks) {
        check.addEventListener("change", (event) => {
            const checkClicked = event.target;
            const id = checkClicked.dataset.tarefa;
            if(checkClicked.checked) {
                marcarConcluido(id);
            }
            else {
                marcarPendente(id);
            }
            inicializaTabela(vetor);
        });
    }
}

function removerTarefa(id) {
    let indice;
    for(let index in vetor) { // buscar o indice o vetor o id especificado
        if(vetor[index].id == id) {
            indice = index;
        }
    }
    vetor.splice(indice, 1); // remover o objeto do vetor
}

function marcarConcluido(id) {
    for(let tarefa of vetor) {
        if(tarefa.id == id) {
            tarefa.status = "Concluído";
        }
    }
}

function marcarPendente(id) {
    for(let tarefa of vetor) {
        if(tarefa.id == id) {
            tarefa.status = "Pendente";
        }
    }
}

function capturarDadosForm() {
    const descricao = document.querySelector("#descricao").value;
    const status = document.querySelector("#status").value;
    const prioridade = document.querySelector("#prioridade").value;
    const data = document.querySelector("#prazo").value;
    const hora = document.querySelector("#hora").value;
    const prazo = new Date(data + " " + hora); // converte as string para o formato objeto
    const objeto = {
        descricao, // descricao: descricao
        status,
        prioridade,
        prazo
    };
    return objeto;
}

const formTarefa = document.querySelector("#form-tarefa");
formTarefa.addEventListener("submit", (event) => {
    event.preventDefault(); // cancelar o evento padrão
    const dados = capturarDadosForm();
    const id = vetor[vetor.length-1].id + 1; // gera um id baseado no ultimo id do vetor
    dados.id = id;
    vetor.push(dados);
    inicializaTabela(vetor);
});


inicializaTabela(vetor);