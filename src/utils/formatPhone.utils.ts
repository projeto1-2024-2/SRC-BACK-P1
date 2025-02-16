// Função para formatar o número de telefone
export function formatPhone(phone: string): string {
  // Remove tudo que não for número
  const onlyNumbers = phone.replace(/\D/g, '');

  // Se for celular (11 dígitos)
  if (onlyNumbers.length === 11) {
    return `(${onlyNumbers.slice(0, 2)}) 9 ${onlyNumbers.slice(2, 7)}-${onlyNumbers.slice(7)}`;
  }

  // Se for fixo (10 dígitos)
  if (onlyNumbers.length === 10) {
    return `(${onlyNumbers.slice(0, 2)}) ${onlyNumbers.slice(2, 6)}-${onlyNumbers.slice(6)}`;
  }

  throw new Error('Número inválido'); // Rejeita números inválidos
}
