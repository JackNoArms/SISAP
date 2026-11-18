import {processes,collections,statusOrder,filterProcesses,countsBy} from './data.mjs';

const el=id=>document.getElementById(id);
const fields={search:el('search'),collection:el('collection'),status:el('status'),year:el('year')};
const total=processes.length;
let current=[];

function add(parent,tag,cls='',value){
  const item=document.createElement(tag);
  if(cls)item.className=cls;
  if(value!==undefined)item.textContent=String(value);
  parent.append(item);
  return item;
}
function option(select,value,text){
  const opt=add(select,'option','',text);
  opt.value=String(value);
  return opt;
}
function formatDate(value){
  const match=String(value).match(/^(\d{4})-(\d{2})-(\d{2})$/);
  return match?[match[3],match[2],match[1]].join('/'):String(value);
}
function metric(id,value){el(id).textContent=Number(value).toLocaleString('pt-BR');}

function renderChart(target,counts,labels){
  const area=el(target);
  area.replaceChildren();
  const numbers=labels.map(label=>counts[label]||0);
  const max=Math.max(...numbers,1);
  if(!numbers.some(Boolean)){
    add(area,'p','chart-empty','Nenhum registro encontrado.');
    return;
  }
  labels.forEach((name,index)=>{
    const count=counts[name]||0;
    const row=add(area,'div','bar-row');
    const label=add(row,'div','bar-label');
    add(label,'span','',name);add(label,'strong','',count);
    const track=add(row,'div','bar-track');
    const fill=add(track,'div','bar-fill');
    fill.dataset.tone=['teal','sky','amber','slate'][index%4];
    fill.style.width=(100*count/max)+'%';
    track.setAttribute('aria-label',name+': '+count+' processo(s)');
  });
}
function detailField(container,label,value,wide=false){
  const wrapper=add(container,'div',wide?'wide':'');
  add(wrapper,'strong','',label.toUpperCase());
  add(wrapper,'span','',value);
}
function openDetail(item){
  const dialog=el('detail');
  el('detail-title').textContent=item.number;
  el('detail-info').textContent=item.collection+' · '+item.theme;
  const content=el('detail-content');content.replaceChildren();
  detailField(content,'Situação',item.status);
  detailField(content,'Ano de referência',item.year);
  detailField(content,'Macrotema',item.macro);
  detailField(content,'Acervo',item.collection);
  detailField(content,'Última atualização',formatDate(item.updated));
  detailField(content,'Unidade',item.unit);
  detailField(content,'Descrição ilustrativa',item.summary,true);
  detailField(content,'Andamento ilustrativo',item.milestone,true);
  dialog.showModal();
}
function renderTable(rows){
  const body=el('table-body');
  body.replaceChildren();
  rows.forEach(item=>{
    const tr=add(body,'tr');
    const idCell=add(tr,'td');
    add(idCell,'span','process-id',item.number);
    const themeCell=add(tr,'td');
    add(themeCell,'span','item-title',item.collection);
    add(themeCell,'span','item-subtitle',item.theme);
    const statusCell=add(tr,'td');
    const badge=add(statusCell,'span','badge',item.status);
    badge.dataset.kind=item.status;
    add(tr,'td','',item.year);
    add(tr,'td','',formatDate(item.updated));
    const action=add(tr,'td');
    const button=add(action,'button','detail-btn','Ver detalhes');
    button.type='button';
    button.setAttribute('aria-label','Ver detalhes de '+item.number);
    button.addEventListener('click',()=>openDetail(item));
  });
  el('empty').hidden=rows.length>0;
  el('row-count').textContent=rows.length+' de '+total+' processo(s) fictício(s)';
  el('table-foot').textContent='Exibindo '+rows.length+' registro(s) na demonstração';
}
function render(){
  const filters=Object.fromEntries(Object.entries(fields).map(([name,control])=>[name,control.value]));
  current=filterProcesses(processes,filters);
  const status=countsBy(current,'status');
  metric('metric-total',current.length);
  metric('metric-analysis',status['Em análise']||0);
  metric('metric-progress',status['Em acompanhamento']||0);
  metric('metric-done',status['Concluído']||0);
  renderChart('status-bars',status,statusOrder);
  const yearly=countsBy(current,'year');
  renderChart('year-bars',yearly,['2024','2025','2026']);
  renderTable(current);
}

function reset(){
  for(const control of Object.values(fields)) control.value='';
  render();
}
function csvCell(value){
  let text=String(value??'');
  if(/^[=+@\-]/.test(text))text="'"+text;
  return '"'+text.replaceAll('"','""')+'"';
}
function download(){
  if(!current.length)return;
  const fields=['number','collection','macro','theme','year','status','updated','unit'];
  const lines=[
    ['Processo','Acervo','Macrotema','Tema','Ano','Situação','Atualização','Unidade'].map(csvCell).join(';'),
    ...current.map(item=>fields.map(key=>csvCell(item[key])).join(';'))
  ];
  const content='\uFEFF'+lines.join('\r\n');
  const url=URL.createObjectURL(new Blob([content],{type:'text/csv;charset=utf-8'}));
  const anchor=document.createElement('a');
  anchor.href=url;anchor.download='sisap-processos-ficticios.csv';
  document.body.append(anchor);
  anchor.click();
  anchor.remove();
  URL.revokeObjectURL(url);
}

for(const name of collections)option(fields.collection,name,name);
for(const name of statusOrder)option(fields.status,name,name);
for(const year of [2026,2025,2024])option(fields.year,year,year);
for(const control of Object.values(fields))control.addEventListener(control===fields.search?'input':'change',render);
el('reset').addEventListener('click',reset);
el('clear-bottom').addEventListener('click',reset);
el('download').addEventListener('click',download);
el('close-dialog').addEventListener('click',()=>el('detail').close());
el('close-footer').addEventListener('click',()=>el('detail').close());
document.querySelectorAll('.side-links a').forEach(link=>{
  link.addEventListener('click',()=>{
    document.querySelectorAll('.side-links a').forEach(item=>item.classList.toggle('active',item===link));
  });
});
render();
