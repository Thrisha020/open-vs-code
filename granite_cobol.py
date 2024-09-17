import torch
from transformers import AutoModelForCausalLM, AutoTokenizer

device = "cpu"
model_path = "ibm-granite/granite-8b-code-instruct"
tokenizer = AutoTokenizer.from_pretrained(model_path)
model = AutoModelForCausalLM.from_pretrained(model_path)
model.to(device)
model.eval()

chat = [
    { "role": "user", "content": "Write a sample cobol code." },
]
chat = tokenizer.apply_chat_template(chat, tokenize=False, add_generation_prompt=True)
input_tokens = tokenizer(chat, return_tensors="pt")

for i in input_tokens:
    input_tokens[i] = input_tokens[i].to(device)

output = model.generate(**input_tokens, max_new_tokens=100)
output = tokenizer.batch_decode(output)

for i in output:
    print(i)
