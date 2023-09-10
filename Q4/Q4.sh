#!/bin/bash

arquvios_encontrados=$(find /var/log -type f -mtime +7);

if [ -n "$arquivos_encontrados" ]; then
  find /var/log -type f -mtime +7 -exec rm {} \;
  echo "\nLogs dos ultimos 7 dias deletados!!!"
else
  echo "Nenhum arquivo para excluir foi encontrado."
fi