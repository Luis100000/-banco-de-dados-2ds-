import sqlite3
from tkinter import Tk, Label, Entry, Button, messagebox


def conectar_banco():
    conexao = sqlite3.connect("clientes.db")
    cursor = conexao.cursor()
    cursor.execute(
        """
        CREATE TABLE IF NOT EXISTS clientes (
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            nome TEXT NOT NULL,
            email TEXT NOT NULL,
            telefone TEXT NOT NULL
        )
    """
    )
    conexao.commit()
    conexao.close()


def salvar_cliente():
    nome = entry_nome.get().strip()
    email = entry_email.get().strip()
    telefone = entry_telefone.get().strip()

    if not nome or not email or not telefone:
        messagebox.showwarning(
            "Campos Vazios", "Por favor, preencha todos os campos obrigatórios."
        )
        return

    conexao = sqlite3.connect("clientes.db")
    cursor = conexao.cursor()
    cursor.execute(
        "INSERT INTO clientes (nome, email, telefone) VALUES (?, ?, ?)",
        (nome, email, telefone),
    )
    conexao.commit()
    conexao.close()

    messagebox.showinfo("Sucesso", "Cliente cadastrado com sucesso!")
    limpar_formulario()


def limpar_formulario():
    entry_nome.delete(0, "end")
    entry_email.delete(0, "end")
    entry_telefone.delete(0, "end")
    entry_nome.focus_set()


conectar_banco()

janela = Tk()
janela.title("Cadastro de Clientes")
janela.geometry("400x250")
janela.resizable(False, False)

Label(janela, text="Nome:").pack(anchor="w", padx=20, pady=(15, 2))
entry_nome = Entry(janela, width=50)
entry_nome.pack(padx=20, pady=2)

Label(janela, text="E-mail:").pack(anchor="w", padx=20, pady=(10, 2))
entry_email = Entry(janela, width=50)
entry_email.pack(padx=20, pady=2)

Label(janela, text="Telefone:").pack(anchor="w", padx=20, pady=(10, 2))
entry_telefone = Entry(janela, width=50)
entry_telefone.pack(padx=20, pady=2)

btn_salvar = Button(
    janela, text="Salvar Cliente", command=salvar_cliente, bg="#4CAF50", fg="white"
)
btn_salvar.pack(side="left", padx=(40, 10), pady=20, expand=True, fill="x")

btn_limpar = Button(
    janela,
    text="Limpar Formulário",
    command=limpar_formulario,
    bg="#f44336",
    fg="white",
)
btn_limpar.pack(side="right", padx=(10, 40), pady=20, expand=True, fill="x")

janela.mainloop()
