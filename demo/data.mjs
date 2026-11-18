/**
 * Exemplos exclusivamente fictícios para demonstrar a interface SISAP.
 * Não são registros do TCU nem dados extraídos do Oracle APEX.
 */
export const processes = Object.freeze([
  {id:'DEMO-001',number:'DEMO-2026-001',collection:'Ambiental',theme:'Recursos hídricos',macro:'Meio ambiente',year:2026,status:'Em análise',updated:'2026-10-18',unit:'Instituição fictícia Alfa',summary:'Avaliação ilustrativa de ações relacionadas à preservação de recursos hídricos.',milestone:'Documentação inicial organizada'},
  {id:'DEMO-002',number:'DEMO-2026-002',collection:'Agropecuário',theme:'Produção sustentável',macro:'Agropecuária',year:2026,status:'Em acompanhamento',updated:'2026-10-11',unit:'Instituição fictícia Beta',summary:'Acompanhamento ilustrativo de indicadores de produção agropecuária.',milestone:'Cronograma de acompanhamento definido'},
  {id:'DEMO-003',number:'DEMO-2026-003',collection:'Ambiental',theme:'Gestão de resíduos',macro:'Meio ambiente',year:2026,status:'Aguardando informação',updated:'2026-09-23',unit:'Instituição fictícia Gama',summary:'Conferência fictícia de informações sobre descarte e gestão de resíduos.',milestone:'Aguardando complementação'},
  {id:'DEMO-004',number:'DEMO-2026-004',collection:'Transversal',theme:'Transparência',macro:'Governança',year:2026,status:'Concluído',updated:'2026-09-08',unit:'Instituição fictícia Delta',summary:'Estudo ilustrativo de mecanismos de prestação de informações.',milestone:'Etapa demonstrativa encerrada'},
  {id:'DEMO-005',number:'DEMO-2025-005',collection:'Ambiental',theme:'Biodiversidade',macro:'Meio ambiente',year:2025,status:'Em análise',updated:'2025-12-04',unit:'Instituição fictícia Épsilon',summary:'Análise fictícia sobre conservação de ecossistemas.',milestone:'Revisão técnica ilustrativa'},
  {id:'DEMO-006',number:'DEMO-2025-006',collection:'Agropecuário',theme:'Sanidade vegetal',macro:'Agropecuária',year:2025,status:'Concluído',updated:'2025-11-27',unit:'Instituição fictícia Zeta',summary:'Registro demonstrativo de atividades ligadas à sanidade vegetal.',milestone:'Etapa demonstrativa encerrada'},
  {id:'DEMO-007',number:'DEMO-2025-007',collection:'Transversal',theme:'Gestão de dados',macro:'Governança',year:2025,status:'Em acompanhamento',updated:'2025-11-09',unit:'Instituição fictícia Eta',summary:'Organização fictícia de informações compartilhadas.',milestone:'Relatório intermediário fictício'},
  {id:'DEMO-008',number:'DEMO-2025-008',collection:'Ambiental',theme:'Licenciamento',macro:'Meio ambiente',year:2025,status:'Aguardando informação',updated:'2025-10-22',unit:'Instituição fictícia Teta',summary:'Simulação de acompanhamento documental.',milestone:'Solicitação fictícia registrada'},
  {id:'DEMO-009',number:'DEMO-2024-009',collection:'Agropecuário',theme:'Assistência técnica',macro:'Agropecuária',year:2024,status:'Concluído',updated:'2024-12-18',unit:'Instituição fictícia Iota',summary:'Caso ilustrativo sobre indicadores de assistência técnica.',milestone:'Registro fictício concluído'},
  {id:'DEMO-010',number:'DEMO-2024-010',collection:'Transversal',theme:'Controle interno',macro:'Governança',year:2024,status:'Em acompanhamento',updated:'2024-11-12',unit:'Instituição fictícia Kappa',summary:'Conferência fictícia de atividades de controle interno.',milestone:'Agenda de revisão ilustrativa'},
  {id:'DEMO-011',number:'DEMO-2024-011',collection:'Ambiental',theme:'Áreas protegidas',macro:'Meio ambiente',year:2024,status:'Em análise',updated:'2024-10-31',unit:'Instituição fictícia Lambda',summary:'Simulação de análise de áreas de preservação.',milestone:'Escopo documental ilustrativo'},
  {id:'DEMO-012',number:'DEMO-2024-012',collection:'Agropecuário',theme:'Uso do solo',macro:'Agropecuária',year:2024,status:'Concluído',updated:'2024-09-16',unit:'Instituição fictícia Ômega',summary:'Registro ilustrativo de boas práticas de uso do solo.',milestone:'Estudo fictício encerrado'}
]);

export const statusOrder=['Em análise','Em acompanhamento','Aguardando informação','Concluído'];
export const collections=['Ambiental','Agropecuário','Transversal'];

export function normalize(value){
  return String(value??'').normalize('NFD').replace(/[\u0300-\u036f]/g,'').toLocaleLowerCase('pt-BR').trim();
}
export function filterProcesses(rows,{search='',collection='',status='',year=''}={}){
  const term=normalize(search);
  return rows.filter(row=>
    (!collection||row.collection===collection)&&
    (!status||row.status===status)&&
    (!year||String(row.year)===String(year))&&
    (!term||[row.number,row.theme,row.macro,row.unit,row.id].some(v=>normalize(v).includes(term)))
  );
}
export function countsBy(rows,key){
  return rows.reduce((counts,row)=>{
    const name=String(row[key]??'');
    counts[name]=(counts[name]||0)+1;
    return counts;
  },{});
}
