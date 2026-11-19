---
name: "formatos"
description: "Como editar os 50 formatos de Reels/TikTok que escalam (Caixinha, POV, Tela Verde, Top 5, Fofoca...). Use junto com qualquer skill de edição quando o vídeo for num desses formatos ou para escolher o formato."
---

# Formatos que escalam

Biblioteca de 50 formatos de conteúdo de Instagram/TikTok que performam no orgânico e em anúncio (Meta Ads), tirada da análise de 110 vídeos e 9 imagens de referência (swipe file "50 Formatos", DVNCOPY). Para cada formato: o que é, roteiro, material bruto, especificação de edição, o que muda entre conteúdo e anúncio e o que conferir. Números (duração, cortes, palavras por minuto, px, % da altura) vêm das referências e são aproximados. "Variação A/B" descreve como referências diferentes fizeram o mesmo formato.

## Como outras skills usam esta
1. A skill de edição (ou o usuário) diz o formato: ir direto à seção `### NN. Nome` e aplicar por cima dos Padrões globais abaixo.
2. Sem formato definido: olhar o material bruto, usar o Índice e os Atalhos, sugerir 1 a 3 formatos e perguntar antes de editar.
3. Divisão de papéis: esta skill decide estrutura, layout, ritmo, tipo de legenda, uso de música e CTA. A skill de edição decide a ferramenta e a execução técnica. Regra de marca do usuário ou do projeto (fonte, cores, estilo de legenda) manda sobre as fontes e cores citadas aqui, que são só as que as referências usaram. Se a regra de marca conflitar com um elemento que imita interface nativa (sticker da caixinha, tweet, WhatsApp, Meet, live), avisar o usuário e perguntar qual seguir.

## Fluxo padrão
0. **Modo: conteúdo ou anúncio?** Se o usuário não disse, perguntar. Sem resposta, assumir conteúdo e não inventar oferta.
1. **Identificar o formato** (acima).
2. **Conferir o material bruto** contra o "Bruto" do formato. Se faltar algo essencial (ex.: Tela Verde sem os prints de fundo), avisar antes de editar e propor alternativa.
3. **Transcrever a fala** com timestamp por palavra (Whisper ou similar). Legenda, cortes e destaques saem da transcrição.
4. **Montar o roteiro de edição:** lista de cenas com entrada e saída, o que aparece na tela, legenda, overlays, música.
5. **Editar** pela especificação do formato. Na dúvida entre duas opções, a mais simples e nativa: parecer conteúdo orgânico do feed é o objetivo.
6. **Conferir** item por item da "Edição" do formato (inclusive os "evitar" e as notas de ética) e os padrões globais. 7. **Exportar** pelos padrões globais.

## Conteúdo x anúncio
O formato (estética, ritmo, legenda, enquadramento) é igual nos dois modos; muda o fechamento. Cada formato tem a linha "Modos" com o que trocar.
- **Conteúdo (orgânico):** objetivo alcance, retenção, salvamento, compartilhamento, seguidores, autoridade. O meio entrega o valor completo. Virada = payoff (a resposta, a conclusão, a piada final). CTA: salvar, compartilhar, comentar, seguir, parte 2, link na bio. **Nunca** botão "Saiba mais", seta para baixo de oferta, card de preço ou cartela de venda. Duração curta (loop) ou longa se a retenção sustentar.
- **Anúncio:** objetivo clique e venda. Valor parcial + desejo. Virada = produto/mecanismo como solução. CTA "toque em Saiba mais", "clica no botão", link, escassez opcional ("só hoje"). Cartela de oferta opcional. Normalmente 30 a 120 s.

CTA de conteúdo conforme a emoção do formato:
- **Salvar:** formatos úteis (Passo a passo, Top 5, Certo VS Errado, Receita, Analogia, Tela Verde com dados). "Salva pra não esquecer".
- **Compartilhar/marcar:** identificação e humor (POV, POV + Meme, Meme, The Office, Esquete, Anjinho VS Diabinho, Telemarketing). "Manda pra aquele amigo que...".
- **Comentar:** opinião e polêmica (Google Meet, Análise, Fofoca, React, Choquei, Caixinha, Trivial).
- **Seguir/próxima parte:** sequência (Série, Rotina, Diálogo de Gêmeos em FAQ).
- **Ler a legenda:** Leia a Legenda.
- Um CTA principal por vídeo, dois no máximo. Em humor, muitas vezes o melhor é nenhum: terminar na piada para o vídeo rodar em loop. Em formatos de curiosidade o CTA pode vir no meio ("antes do nº 1, salva esse vídeo").

## Por que funcionam
Cada formato é um "recipiente" que a pessoa já reconhece no feed (caixinha, fofoca, tweet, WhatsApp, podcast, telejornal, meme, receita). Ela entende em menos de 1 s o que vem, o vídeo não ativa o "modo defesa" contra propaganda ou aula, e quase todo formato abre uma curiosidade que só fecha no fim. A mesma ideia pode virar vários formatos, o que evita cansar o criativo ou repetir o perfil. Por isso a edição preserva a cara nativa: fontes e elementos de interface do próprio app, imperfeição caseira quando o formato é caseiro, e produção alta só quando o formato pede (Cinema, Esquete, Análise cinematográfica).

Estrutura comum: **gancho** (0 a 3 s, já com texto na tela) > **desenvolvimento** dentro do formato > **virada** (payoff ou produto) > **CTA**. O "Roteiro" de cada formato descreve como as referências fizeram (a maioria são anúncios).

## Padrões globais (valem para todos, salvo o formato dizer outra coisa)
**Exportação:** 9:16, 1080x1920. Exceções nas referências: 4:5 (1080x1350) em alguns anúncios de feed (Choquei, Tela Dividida, Fala e Faz), 1:1 em Corte de Podcast e Top 5, 16:9 dentro de canvas 9:16 no Cinema. Manter o fps do bruto (normalmente 30; não converter para 24 sem motivo). H.264 MP4, AAC 48 kHz, cerca de 10 a 16 Mbps em 1080p.

**Áudio:** voz perto de -14 LUFS integrado, pico abaixo de -1 dBTP (referência comum de plataforma; conferir). Música sempre abaixo da voz, com ducking de 12 a 20 dB quando há fala.

**Zona segura do Reels** (aproximada; conferir no template oficial da Meta): topo ~14% da altura (~250 px) fica sob o cabeçalho, títulos fixos logo abaixo disso; rodapé 20 a 35% fica sob caption, perfil e botão do anúncio; lateral direita ~120 px dos botões. **Legendas entre ~45% e ~70% da altura**, nunca coladas no rodapé.

**Legendas:** padrão é sempre legendar (exceções: ASMR, alguns formatos crus sem cortes). Sincronizar por palavra (karaokê) ou bloco de 1 a 5 palavras: 1 a 3 em formatos dinâmicos, frase de 1 a 2 linhas em calmos/narrativos. Corrigir a transcrição antes de queimar (nomes, marcas, números, valores em R$). Estilos citados pelo nome nos formatos:
- **Nativo TikTok/IG:** fonte do app (TikTok Sans, Proxima Nova, Clássico do IG), branca com sombra leve, pequena a média. Para parecer feito no celular.
- **Bold com palavra-chave colorida:** sans bold (Montserrat ExtraBold, Poppins Bold, Inter Black), branca com contorno ou sombra preta, 1 a 3 palavras por vez, palavra principal em amarelo #FFD60A, verde #22C55E, magenta #FF2BD6 ou vermelho. O mais comum em anúncio.
- **Pill/caixa:** texto preto em caixa branca arredondada, ou branco em caixa preta translúcida (legenda de filme). Depoimentos e esquetes.
- **Editorial/cinematográfico:** serif ou itálico (Playfair Display, Instrument Serif, Times), branco, pequeno, sem caixa, às vezes itálico + bold. Cinema, Análise premium, Diálogo aspiracional.
- **Cartoon/MrBeast:** fonte cartoon condensada (Komika Axis, Bangers, Luckiest Guy), muito grande, cada palavra numa cor, contorno preto grosso. Experimento Social e energia alta.

**Cortes e ritmo:** nos formatos falados para a câmera, tirar respirações longas, gaguejos, "éé" e silêncios acima de ~0,3 s (jump cut), exceto onde o formato pede plano único natural (Trivial, Caixinha sem cortes, Conversa no Carro, ASMR). Fala típica nas referências: 190 a 290 palavras/min. Abaixo de ~170 ppm, apertar os cortes, salvo fala lenta por estilo (ASMR, Receita narrada, Analogia calma). Em formato dinâmico, alternar zoom 100% e 110 a 120% a cada jump cut no mesmo plano.

**Música:** com fala o tempo todo, sem música ou bem baixa. Música alta só nos formatos sem fala (POV + Meme, Edit, Rotina, POV + Depoimento, Leia a Legenda). Sempre com licença adequada; em anúncio só biblioteca comercial/royalty-free (áudio em alta do app costuma não estar liberado para anúncio). Nunca inserir música protegida em anúncio.

**CTA final:** anúncio: falado e reforçado com seta para baixo, botão desenhado ("CLIQUE NO BOTÃO", "SAIBA MAIS", "CLICA AQUI") ou cartela com logo + oferta, sempre acima da zona do botão do anúncio. Conteúdo: falado e/ou texto curto nos últimos 2 a 3 s, sem botão, seta ou cartela.

**Ética e direitos (obrigatório):** algumas referências usam o que não se replica: imagem ou vídeo de famosos e apresentadores reais sem autorização, falas atribuídas a celebridades, notícias inventadas, logos de veículos de imprensa sugerindo cobertura que não existiu, trechos de desenho/filme protegidos. Aplicar o formato (estrutura, estética, ritmo) com conteúdo próprio e verdadeiro do usuário. Prints de resultado, depoimentos e números sempre reais.

## Índice
Prod.: C caseiro, M médio, A alto, E estático. Rosto/fala/música de cada um estão na ficha do formato. Todos servem para conteúdo e anúncio; "Melhor para" é o uso mais forte.

| # | Formato | Em uma linha | Prod. | Melhor para |
|---|---|---|---|---|
| 01 | Caixinha | Responde pergunta de seguidor com sticker da caixinha no topo | C | quebrar objeção |
| 02 | POV | Texto "POV:" + cena encenada do resultado, depois explicação | C/M | mostrar o "depois" |
| 03 | Diálogo | 2 pessoas conversam sem olhar para a câmera; CTA no fim | M/A | vender explicando |
| 04 | Choquei | Layout de post de perfil de fofoca com manchete + vídeo | M | newsjacking |
| 05 | Notícia | Estático imitando matéria de portal | E | advertorial |
| 06 | Meme | Fundo preto, frase em cima, clipe de meme antes/depois + cartela | M | anúncio leve |
| 07 | UGC em 1ª Pessoa | POV das mãos usando o produto, narração do usuário | C | produto físico/software |
| 08 | Tela Dividida | Split cima/baixo: assunto em cima, criador embaixo | C/A | comentar algo |
| 09 | Fofoca | Contar/reagir a um "babado" (layout repost ou talking head) | C/M | ofertas de "segredo" |
| 10 | React | Vídeo viral em cima, reação embaixo, depois recado | C/M | carona em viral |
| 11 | UGC em 3ª Pessoa | Pessoa mostra/avalia o produto para a câmera | C | prova de produto |
| 12 | Esquete | Mini-filme de comédia com atores; produto resolve a cena | A | dor situacional |
| 13 | Fala e Faz | Fala/narra enquanto faz tarefa manual do nicho | C/M | habilidade manual |
| 14 | Depoimento | Cliente real conta resultado | C/M | prova social |
| 15 | Experimento Social | Abordagem na rua com microfone/placa | M | renda/carreira |
| 16 | Tela Verde | Criador recortado sobre prints/vídeos de prova | C/M | provar com prints |
| 17 | Palestrinha | "Aula" de humor ao lado de TV usada como slide | C | educativo leve |
| 18 | Telepatia | Pensamento em voz off sobre cenas sem fala | M | diálogo interno |
| 19 | Análise | Estudo de caso de outra pessoa/marca com evidências | M/A | autoridade |
| 20 | Google Meet | Simulação de videochamada: convidado em cima, host embaixo | C/M | rebater opinião |
| 21 | Telemarketing | Atendente de headset em ligação (humor ou venda) | C/M | listar benefícios |
| 22 | POV + Meme | POV + cena cômica exagerada | C | alcance |
| 23 | LO-FI | Propositalmente amador (cama, carro) | C | produto barato |
| 24 | Corte de Podcast | Trecho de podcast com microfone de estúdio | A | autoridade com dados |
| 25 | Top 5 (ranking) | Ranking com lista preenchida na tela | C/M | comparação/dicas |
| 26 | Conversa no Carro | Bastidor ou desabafo dentro do carro | C | intimidade |
| 27 | Diálogo de Gêmeos | Mesma pessoa faz 2 personagens | M | diálogo sem 2ª pessoa |
| 28 | Mensagem | Conversa de WhatsApp/Direct com áudio tocando | M/E | indicação de amigo |
| 29 | Passo a passo | Celular filmando a tela, um passo por corte | C | tutorial |
| 30 | Copy no Papel | Oferta impressa, dedo acompanhando as linhas | C | mostrar o produto |
| 31 | Cinema | Vídeo 16:9 com letterbox e tipografia de filme | M/A | mensagem de peso |
| 32 | ASMR | Sussurro e sons de gatilho com microfone aparente | M | produto sensorial |
| 33 | Live | Simulação de live (interface ou live dupla) | M | espontaneidade |
| 34 | Analogia | Comparação com algo do cotidiano + objeto | C/M | objeção de preço |
| 35 | Receita | Resultado > ingredientes > preparo > resultado | M | culinária/artesanato |
| 36 | Tweet | Vídeo ou texto dentro de post do X | M/E | "novidade" |
| 37 | Oferta Direta | Estático com headline, preço e especialista | E | público quente |
| 38 | Story | Story de texto respondendo caixinha + sticker de link | E | Stories nativo |
| 39 | Série | Episódio numerado de uma jornada/série | M/A | hábito/retorno |
| 40 | Edit | 6 a 12 s aspiracional + texto de recrutamento | M | topo de funil |
| 41 | Rotina | Dia na minha vida com horários | M | estilo de vida |
| 42 | POV + Depoimento | Antes/depois de transformação com POV e música | C | prova de resultado |
| 43 | Certo VS Errado | Erro com X vermelho, depois o jeito certo | M | técnica/prática |
| 44 | Trivial | Fala algo importante fazendo algo banal, plano único | C | opinião/história |
| 45 | The Office | Mockumentário com depoimentos confessionais | M | humor de situação |
| 46 | TikTok | Só recursos nativos do TikTok (textos, layout meme) | C | TikTok Shop/meme |
| 47 | "Leia a Legenda" | 7 s de paisagem + gancho; conteúdo na caption | C | histórias em texto |
| 48 | Entrevista | Pergunta e resposta com entrevistador ativo | M/A | objeções em série |
| 49 | Jornal Nacional | Plantão de telejornal (apresentador ou avatar IA) | M | novidade com peso |
| 50 | Anjinho VS Diabinho | Dúvida interna personificada em 2 personagens | M | decisões do dia a dia |

## Atalhos para escolher
- **Tenho só um take de selfie falando:** 01 Caixinha, 23 LO-FI, 26 Conversa no Carro, 34 Analogia, 44 Trivial, 16 Tela Verde (se tiver prints), 08 Tela Dividida (se tiver algo para comentar).
- **Não quero mostrar o rosto:** 07 UGC 1ª Pessoa, 13 Fala e Faz (só mãos), 28 Mensagem, 29 Passo a passo, 30 Copy no Papel, 47 Leia a Legenda, 05/36/37/38 estáticos.
- **Tenho outra pessoa para gravar comigo:** 03 Diálogo, 15 Experimento Social, 24 Corte de Podcast, 48 Entrevista, 12 Esquete, 45 The Office.
- **Sou só eu, mas quero diálogo:** 27 Diálogo de Gêmeos, 21 Telemarketing, 50 Anjinho VS Diabinho.
- **Tenho resultados/prints para mostrar:** 16 Tela Verde, 19 Análise, 14 Depoimento, 42 POV + Depoimento, 39 Série.
- **Quero algo com cara de notícia/novidade:** 04 Choquei, 05 Notícia, 09 Fofoca, 36 Tweet, 49 Jornal Nacional.
- **Sem fala (só música + texto):** 06 Meme, 22 POV + Meme, 40 Edit, 41 Rotina, 42 POV + Depoimento, 47 Leia a Legenda.
- **Alta produção, alto impacto:** 12 Esquete, 19 Análise (cinematográfico), 31 Cinema, 24 Corte de Podcast, 08 Tela Dividida (versão motion).

## Os 50 formatos
Cada formato: ficha (duração, cortes, fala e música das referências), **O que é**, **Roteiro**, **Bruto** (material necessário), **Edição**, **Modos** (C = conteúdo, A = anúncio).

### 01. Caixinha
_rosto | 31 a 147 s | plano único até ~1 corte a cada 8 s | 190 a 240 ppm | música opcional_
**O que é:** responde olhando para a câmera uma pergunta de seguidor que aparece como sticker de caixinha do IG fixo no topo; a pergunta é o gancho.
**Roteiro:** 0 a 2 s sticker visível + pessoa lê a pergunta > resposta em tom de conversa, 2 ou 3 argumentos e história curta (até ~70%) > virada ("por isso a melhor forma é...") > CTA.
**Bruto:** 1 selfie com a resposta inteira (carro, quarto, academia, cozinha; fazer algo com as mãos deixa mais nativo); texto exato da pergunta, escrito como o público escreve (abreviação, emoji); título da caixinha ("Faça uma pergunta"); opcional cor da marca.
**Edição:**
- Sticker obrigatório, igual ao nativo do IG: retângulo branco, cantos ~20 px (em 1080), largura ~75%, centralizado, topo em ~18 a 25% da altura; faixa de título no topo (preta, branca ou cor da marca) com texto pequeno; pergunta em preto, sans regular (SF Pro/Helvetica), 2 a 3 linhas. Entra no frame 0 ou com pop (90 a 100% em 6 frames). Fica o vídeo todo; se tampar o rosto, reduzir/subir para o canto após ~5 s.
- Plano único se a fala é fluente; jump cuts em silêncio > 0,3 s se há hesitação. Enquadramento selfie sem reenquadrar.
- Legenda padrão: bold minúsculo branco, 2 a 3 palavras, 1 palavra-chave por frase na cor da marca (ref.: magenta #FF2BD6), ~60%, abaixo do rosto. Alternativas: caixa alta branca sans black (Montserrat Black/Poppins ExtraBold) no centro ~50% com sombra; frase curta branca regular a ~70%.
- Trilha instrumental leve a -20 dB sob a voz, ou nenhuma. Cor natural. Anúncio: opcional seta ou "toque em Saiba mais" nos últimos 3 s.
- Evitar: sticker com cara de design (gradiente, fonte estilizada), pergunta com mais de 3 linhas, produção cinematográfica.

**Modos:** C: pergunta real e resposta completa; "manda tua pergunta na caixinha que eu respondo no próximo" ou "salva"; bom para série. A: a pergunta é uma objeção e a resposta leva ao produto; "toca em Saiba mais".

### 02. POV
_rosto (atuação) | 18 a 94 s | 1 a 2 cortes | com ou sem fala | música só na versão sem fala_
**O que é:** texto "POV: [situação]" coloca o espectador numa cena reconhecível; no anúncio, depois a pessoa explica como chegou ao resultado.
**Roteiro:** anúncio: cena encenada do resultado com POV e som próprio (até ~20 s) > corte seco para talking head ("Gente, como assim?") explicando > ferramenta/produto + CTA com link/cupom. Orgânico: POV do primeiro ao último frame, 1 ou 2 planos, sem fala, loop.
**Bruto:** cena da situação (tripé, plano aberto); selfie com a explicação (anúncio); frase POV de 1 a 2 linhas; transcrição se a cena tem outro idioma.
**Edição:**
- Texto POV: fonte nativa TikTok/IG (Classic/TikTok Sans), branca, sombra leve ou contorno fino, ~45 a 55 px, centralizado, ~20 a 25% ou ~65% da altura; minúsculo ("pov:") parece mais nativo; fixo desde o frame 0.
- Cena em outro idioma: legenda bilíngue pequena a ~75%, original branco e tradução amarela embaixo.
- Explicação: legenda branca pequena sem caixa, ~50%, 3 a 6 palavras; tirar pausas.
- Cortes mínimos e secos, sem efeito. Som direto; sem fala, música trend baixa ou som ambiente.
- Evitar POV com mais de 2 linhas e explicar a piada.

**Modos:** C: só a cena com POV, 10 a 20 s (ou cena + dica completa); nenhum CTA (loop) ou "manda pra quem é assim". A: cena do resultado + explicação + produto/link.

### 03. Diálogo
_2 pessoas | 48 a 79 s | ~1 corte a cada 7 s | 170 a 290 ppm | sem música ou baixa_
**O que é:** duas pessoas conversam sem olhar para a câmera, como se o espectador escutasse; uma tem o problema, a outra a solução; no fim a especialista olha para a câmera e faz o CTA.
**Roteiro:** gancho 0 a 3 s no meio de uma ação > A conta a dor > B explica o mecanismo, mostra no celular, responde 2 ou 3 objeções > A se convence > CTA de B para a câmera (ou plano separado da especialista).
**Bruto:** cena gravada por terceiro, plano médio das duas; 2 ângulos ou cena repetida; ações durante a fala (café, shopping, sofá); plano de detalhe para abrir/cobrir cortes; plano final de CTA; lapela nas duas.
**Edição:**
- Handheld suave ou tripé aberto fixo; ambientes claros e bonitos.
- Cortar na troca de fala e trechos travados, mantendo as objeções; alternar aberto/fechado a cada fala ou 4 a 8 s; pode abrir em close de detalhe ou no momento mais curioso.
- Legenda padrão: serif branca pequena (Playfair/Times), ~55%, sem caixa, 2 a 5 palavras. Alternativas: sans fina branca; bold azul-claro com contorno 1 palavra por vez. Nada de legenda gigante colorida.
- Opcional sticker de meme pequeno; cartela de antes/depois no fim.
- Diálogo limpo, música bem baixa, sem SFX exagerado. Um look só: claro e quente, ou escuro dessaturado.
- Ninguém olha para a câmera antes do CTA.

**Modos:** C: ideia completa ou debate, termina na conclusão de uma das pessoas; "e você, concorda com quem?" ou "manda pra tua sócia". A: B apresenta o produto e fecha para a câmera com CTA.

### 04. Choquei
_rosto | 4:5 ou 9:16 | 120 a 130 s | quase sem cortes | 190 a 230 ppm | às vezes trilha leve divertida_
**O que é:** imita post de perfil de fofoca: cabeçalho com nome e selo, manchete caixa alta com 🚨 e o vídeo embaixo; o assunto do momento é a isca.
**Roteiro:** manchete fixa no topo > fala começa no assunto quente > ponte ("mas o babado de verdade é outro...") > mecanismo = produto > CTA "link aqui embaixo".
**Bruto:** selfie sobre assunto + ponte + oferta; imagem/vídeo do assunto com direito de uso; manchete; nome e avatar do perfil (o próprio ou fictício, nunca imitar perfil real); opcional vídeo satisfatório (slime, tinta).
**Edição:**
- Template como camada fixa. 4:5: fundo branco; avatar redondo + nome bold + selo azul; manchete preta caixa alta 2 linhas com 🚨; vídeo dividido lado a lado (criador à esquerda, satisfatório à direita); opcional sticker de caixinha. 9:16: fundo degradê de ondas magenta/vinho; faixa branca com manchete; vídeo dividido (foto do assunto e criador); selo cartoon "FOFOCANDO" embaixo.
- Legenda caixa alta condensada bold (Bebas Neue/Anton/Oswald), branca com palavra-chave amarela, contorno preto, 2 a 3 palavras, sobre o criador.
- Só cortar pausas. Final com cartela de CTA (ex.: verde WhatsApp, "Chama no Zap", seta amarela).
- Ética: nada de famoso sem direito, fala ou recomendação atribuída a celebridade, marca de perfis jornalísticos reais.

**Modos:** C: comentário real sobre o assunto com sua lição do nicho, sem ponte para oferta nem cartela; "comenta o que você achou". A: assunto como isca, ponte, mecanismo, CTA de clique/WhatsApp.

### 05. Notícia
_estático | 4:5 (1080x1350) ou 9:16 com margens brancas_
**O que é:** imagem que parece matéria de portal no celular (editoria, manchete, linha fina, autor, data, foto); advertorial.
**Estrutura:** modelo A: faixa colorida com editoria > manchete bold preta grande, 3 a 4 linhas, terminando em reticências > linha fina cinza com 1 a 2 negritos > "Por [autor]" + data e hora > foto larga. Modelo B: header de app de notícias vermelho (menu, editoria, lupa) > "URGENTE: ..." com palavras em CAIXA ALTA > lead com negritos > foto real à esquerda + lista ✅ de benefícios à direita > parágrafo final com negritos.
**Material:** manchete, linha fina, lead, 3 benefícios; 1 foto real ou com direito; editoria/autor fictícios só se for claramente veículo próprio.
**Design:** Open Sans/Roboto/Source Sans, manchete bold 800 (~25% da altura); fundo branco, texto preto, uma cor forte de marca na faixa (ref.: #C8102E); margens ~5%. Para Reels/Stories, card 4:5 centralizado em fundo branco 9:16. Parecer print de site, não banner. Ética: sem logos de veículos reais nem identidade de portal específico.
**Modos:** C: novidade real do nicho com o conteúdo completo na legenda; bom como carrossel (capa = matéria); salvar/compartilhar. A: advertorial com benefício e "saiba mais".

### 06. Meme
_sem rosto (ou depoimentos na compilação) | 26 a 220 s | 2 a 3 blocos | som do meme alto_
**O que é:** fundo preto, frase branca no topo com a situação do público, clipe engraçado no meio, em dois atos (antes e depois), fechando com cartela da oferta.
**Roteiro (26 s):** ato 1 (0 a 10 s) "Seu [situação] antes de [solução]:" + clipe de fracasso + métrica ruim > "Você descobrindo que existe [solução]:" + clipe de surpresa > ato 2 (até 17 s) "...depois de [solução]:" + clipe de vitória + métrica boa > cartela. Versão longa: print de faturamento + compilação de depoimentos.
**Bruto:** 2 a 3 clipes de 2 a 6 s próprios, licenciados ou encenados (nunca filme, desenho, futebol); 1 frase por ato; métricas reais; cartela.
**Edição:**
- Canvas preto 1080x1920; clipe na largura total, ~35 a 45% da altura, entre ~30% e ~70%.
- Texto: branco sans regular/medium (Helvetica/SF), ~44 px, centralizado, 2 a 3 linhas, logo acima do clipe, terminando em dois-pontos; troca com o clipe.
- Card de métrica: retângulo escuro arredondado no canto esquerdo do clipe, label pequeno + número grande, vermelho/verde, pop-in.
- Cartela (5 a 9 s): fundo vermelho escuro com prints desfocados, mockup, headline laranja #FF6A1A bold caixa alta, checklist, botão de contorno branco "CLIQUE NO BOTÃO" + chevron duplo animado.
- Som do meme alto (faz parte da piada). Compilação: legenda em pill branca com texto preto, corte a cada frase.

**Modos:** C: meme puro em 2 atos, sem cartela, curto para loop; nenhum ou "marca quem já passou por isso". A: 2 atos + cartela com botão.

### 07. UGC em 1ª Pessoa
_só mãos | 49 a 78 s | plano único | 195 a 260 ppm | música baixa ou nenhuma_
**O que é:** câmera no ponto de vista de quem usa: mãos com o produto ou no notebook enquanto a própria voz narra, como cliente comum.
**Roteiro:** título fixo provocativo + benefício > 2 a 4 benefícios demonstrados > prova ("comprei mais dois pra minha mãe") > CTA ("clica no carrinho laranja").
**Bruto:** take contínuo com câmera traseira na altura dos olhos. Físico: caixa aberta em superfície clara, mãos girando e abrindo. Software: notebook, mãos no trackpad, fundo bonito. Narração; texto do título.
**Edição:**
- Título fixo: caixa sólida #FF2D55 com texto branco bold ~60 px, ~30% da altura, o vídeo todo. Alternativa: caixa branca com texto preto (nativo TikTok) só no começo.
- Legenda branca bold com contorno preto fino (Classic TikTok), frases de 1 a 3 linhas, ~70%.
- Plano único; erros escondidos com corte em movimento de mão; sem transição, zoom ou efeito.
- Voz do celular é aceitável, só limpar ruído forte. Produto/tela sempre em foco. Nada de cara publicitária.

**Modos:** C: review honesto do que você usa, sem preço nem carrinho; "salva" ou "quer o passo a passo? comenta". A: demonstração + prova + carrinho/botão.

### 08. Tela Dividida
_rosto | 9:16 ou 4:5 | 127 a 199 s | 1 a 13 cortes | 190 a 235 ppm | caseira sem música, produzida com trilha energética_
**O que é:** split horizontal: em cima o que o criador comenta (print, vídeo, lista), embaixo ele falando; depois abre para talking head em tela cheia.
**Roteiro:** 0 a ~15 s split com o criador reagindo/discordando > tela cheia, com ou sem overlays > virada para oferta (analogia ou revelação) > CTA com botão visual.
**Bruto:** take do criador; material de cima com direito de uso; versão produzida: telas dos apps citados, logos, números.
**Edição:**
- Split: material em 0 a 50%, criador do peito para cima em 50 a 100%, sem borda (motion: leve brilho na divisa); rosto não cortado. Após o gancho, tela cheia sem pausas.
- Versão produzida, 1 overlay a cada 5 a 10 s: mockup de janela de app subindo até a frente do peito; título em faixa roxa com texto branco bold + logos; trecho P&B irônico; fundo espacial com cards de borda neon ciano; número gigante semitransparente para contagem; botão ciano "CLICA AQUI" com chevrons animados no fim; whooshes nas entradas. Overlay nunca cobre a boca.
- Legenda (produzida): pill branca translúcida (~20% opacidade + contorno), texto branco, 1 a 3 palavras, ~78%.

**Modos:** C: opinião sobre o que está em cima com conclusão própria; "concorda? comenta". A: o comentário vira apresentação do produto + botão animado.

### 09. Fofoca
_rosto | 56 a 119 s | 0 a 17 cortes | 215 a 265 ppm | trilha leve opcional_
**O que é:** o criador conta ou reage a uma fofoca (alguém que falou algo chocante, um segredo escondido) em layout de perfil de fofoca ou talking head íntimo; a fofoca é sobre o mecanismo.
**Roteiro:** manchete/gancho > a fofoca > investigação ("fui no perfil dela vasculhar...") com prints > revelação: funciona > CTA com urgência.
**Variações (pelo material):** A, repost: vídeo "original" gravado por você + selfie reagindo; fundo branco ou coral pontilhado (~20% em cima, ~25% embaixo), cabeçalho com avatar + nome + manchete preta 2 linhas com emojis, duas colunas iguais, selo cartoon ("FOFOQUEI") na base; sem cortes. B, talking head investigativo: selfie bem perto, fundo trocado por prints em tela verde; jump cuts. C, contando para alguém: câmera lateral, não olha para a lente; abre com clipe e "SE LIGA"; trecho P&B.
**Edição:**
- Legenda A: caixa alta bold branca ou amarela #FFE600, contorno preto, 2 a 3 palavras sobre cada metade. B/C: bold branca minúscula, uma palavra colorida por bloco alternando amarelo, vermelho, verde, 2 a 4 palavras, centro.
- P&B no drama; zoom-in rápido na reação; voz alta e próxima.
- Ética: não expor pessoa real nem acusar terceiros de forma que possa ser difamação; personagens próprios/encenados.

**Modos:** C: história curiosa do nicho contada inteira, com a lição; "comenta se já viu isso" ou "segue pra parte 2"; sem urgência artificial. A: fofoca sobre o produto + urgência.

### 10. React
_rosto | 15 a 62 s | 1 a 5 cortes | 250 a 270 ppm | trilha constante_
**O que é:** em cima um vídeo viral, embaixo o criador reagindo; depois a cena vira gancho para o recado.
**Roteiro:** 0 a ~12 s split com a reação > ponte em tela cheia ("você está igual ao [personagem]...") > recado/oferta > CTA. Versão de 15 s: split o tempo todo comentando o que o outro disse.
**Bruto:** vídeo reagido com permissão ou de uso livre; take da reação e da explicação (tripé, plano médio, mesmo local).
**Edição:**
- Melhor trecho do viral (5 a 12 s), com título/tarja original visível. Split: viral 0 a 50%, criador 50 a 100%, crop central na largura toda, sem borda.
- Sincronizar as reações mais expressivas com o ponto alto do viral. Corte seco para tela cheia no recado; jump cuts.
- Legenda caixa alta branca bold (Montserrat ExtraBold), 1 a 2 palavras com pontuação, centro (na divisa / no peito).
- Som do viral no split; depois voz com trilha baixa. Crédito ao autor.

**Modos:** C: reação + comentário/lição sem oferta; "e você, faria o quê?". A: reação vira analogia da dor + oferta.

### 11. UGC em 3ª Pessoa
_rosto | 13 a 88 s | review com jump cuts ou demo sem fala com música_
**O que é:** pessoa comum mostra o produto para a câmera: review falado (preço, prós, contras) ou demo curta sem fala com texto e música.
**Roteiro:** review: nome do produto como pergunta + "vou avaliar pontos positivos e negativos" > preço/rendimento com print > detalhe sensorial em close > comparação > veredito. Demo (~13 s): produto perto da lente, pessoa desfocada > abre, usa, satisfação > texto com emojis + "Link ⬇️".
**Bruto:** selfie/tripé segurando o produto na altura do peito; closes (abrindo, textura, rótulo); print da página; demo: 4 a 6 planos + música.
**Edição:**
- Review: jump cut a cada frase; inserts de close (2 a 3 s) e do print (card branco flutuando no topo, ~40% da largura); legenda branca regular pequena minúscula com sombra, ~55%; sem música.
- Demo: 4 a 6 planos de 1,5 a 3 s no ritmo da música; texto fixo branco com sombra no centro, 2 a 3 linhas com emojis; "Link ⬇️" pequeno no fim.
- Produto sempre nítido, rótulo legível em pelo menos um plano; nome do produto entendido em 2 s.

**Modos:** C: review sincero com veredito, sem link; "salva antes de comprar" ou "qual eu testo no próximo?". A: review/demo + link/carrinho.

### 12. Esquete
_2 a 5 atores | 99 a 131 s | 22 a 31 cortes ou plano-sequência | 180 a 220 ppm | trilha leve cômica baixa_
**O que é:** cena de comédia roteirizada em que o conflito é a dor do público e a virada cômica é o produto resolvendo.
**Roteiro:** situação no meio da ação (0 a 5 s), personagem passando vergonha > escalada, outros zoam > amigo mostra a solução no celular > tenta de novo e se dá bem > CTA (para a câmera ou dentro da cena).
**Bruto:** roteiro; cobertura (aberto, médios, contraplano, close do celular com tela legível ou substituída); lapela em todos; figurino e locação coerentes.
**Edição:**
- Plano e contraplano a cada fala, inserts de reação; cortar logo após a piada e segurar ~0,5 s na reação; close do app 2 a 4 s, 100% legível. Plano-sequência: abrir no plano geral da locação, nenhum corte.
- Legenda branca sans pequena (~40 px), ~55%, 2 a 6 palavras; bilíngue com tradução amarela #FFD60A quando há outro idioma.
- Diálogo bem mixado, SFX pontuais, sem risada gravada. Cor natural, sem LUT pesada. Final opcional com painel de antes/depois.

**Modos:** C: piada do nicho, o produto pode nem aparecer; nenhum ou "manda pro teu amigo que é assim". A: o produto resolve a situação como solução natural + CTA.

### 13. Fala e Faz
_rosto opcional | 104 a 239 s | 150 a 220 ppm_
**O que é:** fala (ou narra em off) enquanto faz algo manual do nicho (sabonetes, descascar laranja, objeto de demonstração, sucos); a ação prende o olho e a fala vende.
**Roteiro:** gancho (afirmação contraintuitiva ou história) > explicação com a ação acontecendo > produto > CTA (WhatsApp ou cartela).
**Bruto:** A, só mãos: 30 a 70 planos de 2 a 4 s em ângulos variados (top-down, 45°, macro), fundos limpos, narração separada. B, rosto + ação contínua: tripé, plano médio, lapela.
**Edição:**
- A: corte a cada 1 a 2 s na batida ou fim de frase, nunca repetir plano nem parar mais de ~3 s; planos de resultado bonito nas frases de promessa. Legenda branca bold caixa alta (Montserrat ExtraBold), 3 a 5 palavras, centro, palavra-chave em caixa verde #22C55E. Trilha instrumental constante.
- B: poucos jump cuts, a ação é o b-roll; legenda branca média sem caixa, 2 a 5 palavras (ou tarja preta com texto branco caixa alta embaixo); inserts ocasionais (cartela preta com palavra amarela); sem música ou bem baixa.
- Cartela final opcional (3 a 5 s): fundo branco com textura geométrica cinza, logo, benefício, seta e "Inscreva-se".

**Modos:** C: história/dica enquanto executa, termina no resultado pronto; "salva" ou "segue"; sem cartela. A: narração que vende curso/guia + cartela + CTA.

### 14. Depoimento
_cliente real | 30 a 95 s | 0 a 10 cortes | 190 a 225 ppm | cru sem música, montagem com trilha_
**O que é:** cliente real conta o resultado com as próprias palavras, gravado em casa; a edição só identifica, legenda e fecha com o CTA da marca.
**Variações:** A, montagem de marca: vídeo do cliente + texto + ANTES/DEPOIS + cartela, narração off. B, selfie do cliente + endosso do dono no fim + vinheta. C, sticker de caixinha com a história do aluno, selfie sem cortes.
**Bruto:** vídeo do cliente com autorização de imagem; nome e contexto ("Denise, cliente Alpha"); antes/depois com consentimento; logo, cores e CTA; opcional take do dono.
**Edição:**
- Resultado concreto nos primeiros 3 s. Só cortar pausas longas, sem acelerar; imperfeição é prova.
- Lower third (B): nome bold grande na cor da marca + linha caixa alta branca menor, inferior esquerdo, primeiros 3 a 4 s.
- Legenda: branca regular minúscula sem caixa, ~65% (B); bold pequena com palavra em caixa vermelha (A).
- Antes/depois (A): fundo branco, "ANTES"/"DEPOIS" vermelhos bold, fotos iguais lado a lado, logo no topo. Cartela: fundo da marca, logo branco, "Clique no link e saiba mais", mockup de celular subindo.
- Nunca inventar depoimento nem usar ator como cliente.

**Modos:** C: celebrar o cliente (marcar ele); "comenta 🙌 pra parabenizar" ou nenhum. A: depoimento + CTA (dono ou cartela).

### 15. Experimento Social
_entrevistador + entrevistado | 55 a 184 s | até ~1 corte a cada 4 s | 250 a 300 ppm | sem música_
**O que é:** abordagem de rua com microfone na mão (ou placa de papelão) em que o entrevistado revela algo surpreendente e a conversa leva ao produto.
**Roteiro:** pergunta direta ("E quanto você ganha? Mais de 10 mil?") ou placa "ME CONTE UMA CURIOSIDADE" > revelação > como? > CTA.
**Bruto:** cinegrafista com celular, plano americano (entrevistador de lado, entrevistado de frente); microfone sem fio usado como de repórter; rua com movimento; 2 ângulos ajudam.
**Edição:**
- Revelação mais forte até 5 s. Jump cuts agressivos, só pergunta curta + resposta, nenhuma pausa > 0,3 s; alternar aberto/fechado; punch-in 110 a 130% nas revelações.
- Legenda por energia: simples (branca bold caixa alta pequena) ou média (sentence case bold) ou, recomendada em anúncio, Cartoon/MrBeast ~110 a 130 px, cada palavra numa cor, palavra-chave verde-neon #39FF14.
- Valor em dinheiro aparece gigante verde com brilho e pop no topo; opcional "ding".
- Sem música; limpar vento; voz alta; leve saturação.
- Entrevistado autorizou; encenação não é apresentada como fato jornalístico.

**Modos:** C: entretenimento (história, curiosidade, opinião) sem pitch; "comenta o que você responderia". A: revela resultado e método + CTA.

### 16. Tela Verde
_rosto | 77 a 190 s | 4 a 33 cortes (o que muda é o fundo) | 180 a 250 ppm | música só em tom motivacional_
**O que é:** criador recortado na frente de um fundo que muda conforme a fala (notícia, viral, site com preço, foto, demonstração); o fundo é a prova.
**Variações:** criador pequeno (PiP, ~30% da largura) no canto inferior direito sobre clipes; selfie real com prints pequenos flutuando no canto superior; notícia de fundo e depois selfie bem perto; criador sobre vídeos de demonstração com coluna de cards.
**Roteiro:** gancho apontando para o fundo > cada argumento troca o fundo > produto > CTA com setas.
**Bruto:** take em fundo liso bem iluminado (não precisa ser verde com remoção por IA); fundos na ordem da fala (prints em alta, vídeos, fotos) com direito de uso. Sem fundos não há formato: avisar.
**Edição:**
- Marcar na transcrição a frase de cada fundo; troca sincronizada com a frase.
- Recorte por IA ou chroma, feather 2 a 4 px, sem serrilhado no cabelo; criador na metade inferior (~40 a 60%) ou PiP.
- Fundos em crop 9:16; imagem parada com Ken Burns 100 a 108%. Prints flutuantes ~35% da largura, cantos arredondados, sombra, pop-in. Nunca cobrir o rosto.
- Legenda: bold branca caixa alta com palavra amarela no terço superior; ou branca com palavra em caixa azul/gradiente azul-verde no centro-baixo; ou serif pequena.
- Anúncio: setas brancas grandes animadas para baixo.

**Modos:** C: comentário com provas (notícia, comparação, dados) e conclusão própria; "salva" ou "comenta". A: provas que levam ao produto + setas.

### 17. Palestrinha
_rosto | ~95 s | 1 a 11 cortes | ~250 ppm, professor cômico | trilha leve opcional_
**O que é:** em pé ao lado de uma TV usada como slide, apontando com objeto engraçado (taco, bengala), "palestra" de humor ("Machado de Assis para a geração Z").
**Roteiro:** título no slide 1 > 1 tópico por slide (aponta, comenta, piada, "cancela ou não cancela", "próximo") > engajamento ou CTA.
**Bruto:** tripé, plano americano com pessoa + TV; slides passando de verdade na TV (ou tela neutra para trocar); objeto apontador; slides (texto preto em fundo branco caixa alta, ou fotos/memes com título).
**Edição:**
- Slide legível no celular: punch-in na TV quando entra; se trocar na edição, corner pin nos 4 cantos com leve desfoque e brilho de tela.
- 1 corte por slide (ou plano único); respiro de 0,3 a 0,5 s nas piadas; punch-in leve no rosto nas piadas. Pessoa e TV no mesmo quadro.
- Legenda opcional branca pequena com sombra, ~70%, sem cobrir a TV. Preencher o 9:16, sem faixas pretas laterais.

**Modos:** C: aula de humor completa (formato nativo de conteúdo); "comenta qual tema no próximo". A: último slide é a oferta; CTA falado.

### 18. Telepatia
_rosto sem falar para a câmera | 59 a 79 s | 1 corte a cada 2 a 3 s | 236 a 266 ppm, toda em off | trilha constante_
**O que é:** ouvimos os pensamentos da pessoa em voz off enquanto ela aparece em silêncio (expressões, olhares, ações).
**Variações:** minimalista (anúncio): ator com expressão intensa, imagem simbólica e depois quase tudo tela preta com uma palavra branca por frase ("será", "tentei", "preço"), print de depoimento e "Clique no botão." em laranja. Vlog: textos pequenos manuscritos coloridos com emoji, inclinados de -10° a 10°. Poético: pessoas olhando a câmera em silêncio, legenda branca pequena centro-alto com itálico na ênfase.
**Roteiro:** pensamento-gancho > dúvidas e tentativas frustradas, cada uma com imagem > descoberta da solução > decisão + CTA.
**Bruto:** narração off íntima com microfone perto; 10 a 30 planos de 2 a 4 s sem fala (pensativo, olhar longe, celular, cotidiano); minimalista: 2 a 3 imagens.
**Edição:** cada frase = 1 plano ou 1 palavra na tela preta (branca bold ~70 px no centro), cortes secos no ritmo da fala; voz off seca e próxima; trilha delicada (marimba, piano, lo-fi), que na minimalista entra e sai. A pessoa nunca mexe a boca como se falasse a narração.
**Modos:** C: reflexão em voz interior com conclusão emocional; "comenta" ou nenhum. A: o diálogo interno chega ao produto + CTA laranja.

### 19. Análise
_rosto | 153 a 175 s | 9 a 40 cortes | 225 a 250 ppm | green screen sem música, cinematográfico com trilha baixa_
**O que é:** o criador analisa por que alguém deu certo com prints e trechos como evidência e conclui ensinando o princípio.
**Roteiro:** tese ou polêmica no gancho > o caso (quem é, seguidores, views) > 3 princípios, cada um com evidência > conclusão + CTA.
**Variações:** A, green screen: criador recortado pequeno (busto) no canto inferior esquerdo; fundos com perfil, frames, thumbnails, colagens; legenda bold branca caixa alta com palavra amarela no centro. B, cinematográfico: mesa de madeira, cenário de biblioteca, key light quente lateral baixa + abajures, fundo escuro, grande-angular perto do rosto, trechos P&B, título editorial no topo (serif itálico fino + sans bold), legenda itálica branca pequena 1 palavra por vez.
**Bruto:** tripé + lapela (B com cenário e luz); prints e trechos do caso (uso de comentário/crítica, com crédito); roteiro dos 3 princípios.
**Edição:** associar cada evidência citada na transcrição ao material; trocar de visual a cada 3 a 6 s; prints com zoom lento e círculo/sublinhado no número citado; inserts em moldura de celular com cantos arredondados e sombra sobre fundo desfocado; título por princípio. Toda afirmação sobre o caso tem print/trecho na tela; nada ofensivo ao analisado.
**Modos:** C: análise completa que posiciona autoridade; "qual perfil eu analiso no próximo? comenta". A: termina em "eu ensino isso" + link/bio.

### 20. Google Meet
_rosto do host | 158 a 162 s | 2 cortes | ~235 ppm | sem música_
**O que é:** imita chamada do Google Meet: em cima a "convidada" com uma opinião (muitas vezes vídeo de outro criador), embaixo o host no home office reagindo e dando a visão dele.
**Roteiro:** frase polêmica da convidada (5 a 15 s) > host comenta, concorda em parte ou discorda, traz dados > mais trechos da convidada > tese do host + CTA.
**Bruto:** vídeo da convidada (chamada real autorizada ou trecho com permissão); host com webcam/celular na altura dos olhos, estante ao fundo, microfone de podcast em primeiro plano, luz de frente.
**Edição:**
- Duas janelas iguais com cantos levemente arredondados (convidada 0 a 50%, host 50 a ~95%), fundo #202124; barra do Meet embaixo (~5%) com microfone, câmera, legendas, mão, apresentar, mais opções e botão vermelho de desligar no centro; opcional nomes nas janelas.
- Legenda branca bold (Inter/Roboto) com contorno fino, até 2 linhas, sobre a divisa (serve às duas falas).
- Plano único por janela, só pausas do host cortadas; convidada calada fica escutando (ou congelada discretamente). Vozes niveladas, sem efeitos: tem que parecer chamada real.

**Modos:** C: debate com conclusão do host; "de que lado você está? comenta". A: a opinião leva ao evento/produto + link.

### 21. Telemarketing
_rosto | 60 a 64 s | 1 corte por fala | 185 a 230 ppm | trilha leve/cômica constante_
**O que é:** ator de headset interpreta atendente(s) numa ligação; só ouvimos o atendente, com humor e/ou benefícios do produto como respostas a um cliente.
**Variações:** A, humor: o mesmo ator faz atendentes de marcas diferentes trocando acessório (perucas, lanterna, óculos), selfie em parede neutra. B, venda: escritório com headset e computador, tripé, fundo desfocado, responde um cliente que não ouvimos listando benefícios.
**Roteiro:** "Central de atendimento, como posso ajudar?" > cada pergunta implícita = 1 benefício/objeção > CTA ("avalie meu atendimento").
**Bruto:** headset (essencial); takes de cada fala (A: cada personagem no mesmo enquadramento); personagens/marcas com a cor de cada um, de preferência marcas fictícias.
**Edição:** A: corte a cada troca de personagem; título fixo no topo (~10%) "Central de Atendimento" amarelo bold com contorno preto + caixa branca com o nome do personagem na cor dele, trocando a cada trecho; sem legenda ou legenda simples. B: legenda branca pequena em caixa preta translúcida (estilo Netflix) a ~72%, frase inteira, cortes nas pausas. Opcional bip de chamada no início.
**Modos:** C: esquete de atendimento do nicho; nenhum ou "marca quem já ligou pra uma central assim". A: atendente lista benefícios + CTA.

### 22. POV + Meme
_rosto | 17 a 91 s | 2 a 4 cortes | sem fala ou desabafo caricato | música/áudio trend constante_
**O que é:** "Pov: ..." sobre cena exagerada que vira meme: identificação com virada ("2 dias depois:") ou personagem caricato falando algo absurdo.
**Roteiro:** A (17 s, sem fala): "Pov: fazendo cadeira adutora pela primeira vez" > confiante, close da mão pondo o peso máximo > "2 dias depois:" > sem conseguir levantar da cama. B: tela preta 2 s com "Pov: [tipo de pessoa]" > selfie muito perto no carro com discurso caricato; POV fixo o vídeo todo.
**Bruto:** cena em 2 momentos ou monólogo; close de detalhe que conta a piada; frase POV e de transição.
**Edição:** texto nativo TikTok/IG branco com sombra, pequeno a médio, topo (~15%) ou centro (~55%), fixo; "2 dias depois:" no mesmo estilo substitui o POV; sem legenda de fala. Versão sem fala com 10 a 20 s; corte para o "depois" na batida. Música/áudio trend cômico; zero acabamento publicitário.
**Modos:** C: modo natural (humor, loop, sem CTA). A: raro; a cena desemboca no produto.

### 23. LO-FI
_rosto | 32 a 44 s | 5 a 6 cortes | 225 a 265 ppm | sem música_
**O que é:** cara de gravado sem esforço (deitado na cama de manhã, no carro com chuva), comentando o produto como quem acabou de descobrir; a baixa produção é a estratégia.
**Roteiro:** dor espontânea > "Rapaz, tô vendo um anúncio aqui..." / "o que me salvou foi..." > benefício em 1 frase > CTA casual.
**Bruto:** A: celular apoiado longe, pessoa debaixo do edredom mexendo no celular, meio sonolenta, 2 ângulos. B: selfie no banco do motorista parado, luz nublada. Opcional gravação de tela do produto.
**Edição:** jump cuts só nas pausas grandes, alternando os 2 ângulos. A: texto fixo de oferta branco bold caixa alta com contorno, pequeno, 2 linhas, ~75%, o vídeo todo. B: título "Alerta de dica: ..." branco bold grande nos 3 primeiros segundos, legenda branca bold minúscula com sombra, tela do produto na metade de cima quando citado (se houver). Sem cor, música ou efeitos: "melhorar" mata o formato.
**Modos:** C: dica ou desabafo espontâneo, sem oferta fixa; "salva" ou "comenta se você também". A: texto fixo da oferta + CTA de botão.

### 24. Corte de Podcast
_rosto | 9:16 (1:1 para feed) | 50 a 106 s | 2 a 14 cortes | 230 a 245 ppm | sem música_
**O que é:** trecho de videocast com microfone de estúdio em que o especialista dá argumento forte com números; a autoridade do "podcast" faz parecer conteúdo.
**Roteiro:** começa no meio de um raciocínio forte > contra-argumento com caso e números > conclusão + CTA > cartela com o nome do podcast.
**Bruto:** multicâmera (close, médio, aberto); microfone dinâmico em braço visível; cenário com ripado, plantas, LED quente, luz frontal suave + backlight; nome/logo.
**Edição:** trecho com começo forte e conclusão (45 a 110 s), sem hesitações, começando no close; trocar câmera a cada 4 a 8 s ou mudança de ideia; punch-in forte (até close extremo dos olhos) nas frases de impacto e números. Legenda branca bold sentence case com sombra, 2 a 4 palavras, ~55% (ou serif pequena), valores em R$ podem ser coloridos. Cartela final 2 a 3 s em fundo branco com o nome do programa bold verde/preto. Som natural da sala; cor quente, pele bonita.
**Modos:** C: insight completo; "episódio completo no link da bio" ou "comenta"; cartela continua. A: leva à aula/produto + link.

### 25. Top 5 (ranking)
_rosto | 9:16 ou 1:1 | 36 a 176 s | 0 a 5 cortes | 170 a 270 ppm | trilha nas versões curtas_
**O que é:** ranking com a lista preenchida na tela conforme a fala, guardando o melhor (ou a oferta) para o fim.
**Roteiro:** título falado e na tela (0 a 3 s) > itens, 1 a 3 frases cada > opcional "antes do top 1, me segue" > nº 1 = recomendação/oferta + CTA.
**Bruto:** take contínuo; lista com textos curtos; PNGs sem fundo dos itens (produtos); banner/oferta.
**Edição:**
- Número e nome do item na tela quando falado (marcar na transcrição). Lista nunca cobre o rosto.
- Lista A: título amarelo bold com contorno preto; depois "-1 / -2 / -3" à esquerda no terço superior, textos brancos com sombra entrando a cada item, com emoji.
- Lista B: coluna fixa à esquerda com 5 caixas (1º a 5º) em gradiente do vermelho escuro (topo) ao verde escuro, números brancos grandes; o PNG do item voa para a posição quando citado.
- Sem lista (conversado, 1:1): pill branca com texto preto bold e palavra destacada em cinza; palavra-chave grande isolada nos momentos fortes.
- Oferta: banner + card "De R$X" riscado em vermelho e "por R$Y" verde grande.

**Modos:** C: ranking útil, o nº 1 é a melhor recomendação (não necessariamente seu produto); "antes do nº 1, salva/segue". A: nº 1 = produto + card de oferta.

### 26. Conversa no Carro
_rosto | 40 a 171 s | 0 a 2 cortes | 195 a 255 ppm_
**O que é:** dentro do carro: passageiro filma um bastidor com o motorista ("flagra"), ou a pessoa grava sozinha com o celular no painel um desabafo/opinião.
**Roteiro:** A (anúncio, 40 s): conversa já no meio > um mostra o problema > o outro tem a solução > olha para a câmera com CTA. B (orgânico): monólogo descontraído, plano único.
**Bruto:** A: celular na mão do passageiro com o motorista de perfil + take dele virando para a câmera. B: celular preso no painel, plano médio frontal, luz de dia. Lapela recomendada.
**Edição:** reduzir ruído de motor/vento primeiro; A com ~2 cortes, legenda branca bold minúscula pequena ~55%, 3 a 5 palavras, trilha leve; B plano único, só voz. Cor natural; estabilização leve se o carro anda.
**Modos:** C: desabafo, opinião ou bastidor genuíno; "comenta" ou nenhum. A: bastidor revela o problema e oferece o produto + CTA.

### 27. Diálogo de Gêmeos
_1 pessoa | 25 a 52 s | corte a cada fala (~2 a 4 s) | 250 a 280 ppm | trilha leve opcional_
**O que é:** a mesma pessoa faz dois papéis (iniciante com dúvida e experiente com a solução), diferenciados por figurino e posição, em plano e contraplano.
**Roteiro:** A pergunta ("Validei um low ticket, e agora?") > B responde e mostra a solução > ping-pong de 4 a 8 falas > A se convence; CTA ou cartela. Versão FAQ: "Pra que serve Reels?" "Trazer seguidores." "E o carrossel?"... > "Segue o [perfil]".
**Bruto:** tripé fixo; todas as falas de A, troca de figurino/acessório e posição, todas as de B; roteiro numerado.
**Edição:** identificar A e B pelo figurino; alternar a cada fala com cortes secos e 2 a 4 frames de reação. Título fixo no topo (~12 a 18%) com a pergunta central, branco condensado bold caixa alta (Bebas Neue/Anton) com sombra. Legenda 1 palavra por vez, centro-baixo. Nivelar as duas "vozes". Cartela de oferta opcional no padrão do 06. Meme.
**Modos:** C: FAQ rápido com respostas completas; "segue" ou "salva". A: diálogo que apresenta o produto + cartela.

### 28. Mensagem
_sem rosto | vídeo de ~46 s ou estático | animação contínua | o áudio de voz é a narração | sem música_
**O que é:** conversa de WhatsApp ou Direct: alguém pergunta, chega um áudio (a narração) e depois as reações ("Mano??? Que doideira isso 😱", "Me manda o link").
**Roteiro:** topo com post encaminhado + pergunta do amigo > balão de áudio tocando o vídeo todo > respostas entrando no fim. Estático: pergunta > resposta > link > reação, ou "Toque no botão Saiba Mais".
**Material:** roteiro da conversa; áudio de 30 a 60 s em tom de conversa; imagem do post/produto.
**Edição:** recriar a interface fielmente. WhatsApp: fundo bege com doodles, enviados verdes #D9FDD3 à direita, recebidos brancos à esquerda, horário e ✓✓ azul, barra de digitação. Direct: fundo preto, enviados roxo/azul, recebidos cinza, avatar. Status bar no topo. Balões entram um a um com pop; no áudio, play vira pausa, waveform preenche e contador sobe na duração real da narração. Áudio com leve compressão de WhatsApp. Nomes e fotos fictícios ou autorizados; nunca simular pessoa real nem fabricar depoimento.
**Modos:** C: conversa engraçada ou útil do nicho; "manda pra quem precisa"; sem link. A: indicação do produto + "Saiba mais".

### 29. Passo a passo
_sem rosto | 48 a 60 s | 1 corte por passo ou plano único | 150 a 195 ppm_
**O que é:** tutorial filmando a tela do notebook com o celular (não é gravação de tela), dedo apontando, um passo por corte; posiciona o produto como próximo passo.
**Roteiro:** objetivo > passos (uma ação, frase curta no imperativo) > fechamento.
**Bruto:** celular filmando a tela de cima/lado, pouca luz ambiente, teclado embaixo; dedo apontando, rolagem lenta; narração (própria ou TTS) com uma frase por passo.
**Edição:** A, por passo: dividir pela narração, 3 a 6 s por passo no trecho da ação; instrução amarela #FFE000 bold caixa alta com contorno preto, ~60 px, 2 a 4 linhas, ~70 a 80%; música constante + narração. B, plano único: título em caixa branca com texto preto bold + caixa vermelha com texto branco embaixo ("*use com moderação"), nativo TikTok, ~25%; sem música. Estabilizar, leve nitidez/contraste para a tela; nunca trocar por screen recording.
**Modos:** C: tutorial completo; "salva pra fazer depois" e "segue pra parte 2". A: parte do método + produto como próximo passo.

### 30. Copy no Papel
_rosto só no CTA | ~46 s | 1 corte | ~195 ppm | sem legenda, sem música_
**O que é:** a oferta (ou conteúdo do produto) impressa numa folha A4; câmera de cima e o dedo acompanha cada linha enquanto a narração lê; no fim o especialista fala com a câmera.
**Roteiro:** print impresso de depoimento > folha com o conteúdo (logo + DIA 1/2/3 com bullets), dedo seguindo > corte para o especialista em plano fechado com o CTA.
**Bruto:** folha simples (logo, títulos caixa alta bold, bullets) + print impresso; celular top-down ou 45°, mesa clara; narração; take de CTA.
**Edição:** plano contínuo sobre o papel, só estabilização; narração sincronizada com a linha apontada; zoom lento seguindo o dedo se o texto é pequeno; opcional marca-texto digital na linha lida; corte seco para o CTA. Som do papel ajuda.
**Modos:** C: planejamento/checklist útil no papel; "salva e tira print". A: papel = conteúdo do produto + CTA.

### 31. Cinema
_rosto | canvas 9:16 com vídeo 16:9 | 25 a 74 s | plano único | ~245 ppm | trilha cinematográfica constante_
**O que é:** vídeo horizontal dentro de canvas vertical preto, como tela de cinema; tipografia de filme e trilha emocional dão peso de trailer.
**Roteiro:** título/pergunta acima do vídeo > tese + prova (prints dentro do retângulo) > CTA ou cartela.
**Bruto:** take horizontal (ou vertical com folga para crop 16:9), cenário bonito; prints; trilha licenciada.
**Edição:** canvas preto 1080x1920, vídeo 16:9 com ~1000 px de largura, centralizado, cantos retos ou ~24 px. Título serif bold branca (Georgia/Playfair) acima, alinhada à esquerda. Tipografia palavra a palavra: muito grande, itálico bold (Poppins/Montserrat Black Italic) branca alternando com laranja e azul translúcido, blocos com tamanhos diferentes, posição variando; ou palavra única pequena mudando de lugar no quadro. Inserts dentro do retângulo com blur no fundo. Trilha (cello, piano, cordas) crescendo no fim. Grading cinematográfico (contraste alto, tons quentes ou teal/orange).
**Modos:** C: reflexão de peso; "manda pra alguém que precisa ouvir isso"; sem cartela. A: tese que leva ao produto + cartela.

### 32. ASMR
_rosto | 132 a 171 s | 0 a 4 cortes | sussurro esparso | sem música_
**O que é:** close com microfone condensador na frente da boca, sussurros e sons de gatilho (tapping, spray, pincel, skincare) em luz baixa e colorida; o áudio é o produto.
**Roteiro:** abertura sussurrada com o roleplay > gatilhos de 5 a 20 s cada, mãos em direção à lente > fechamento suave (anúncio: produto citado com naturalidade).
**Bruto:** áudio de alta qualidade obrigatório (condensador ou binaural, ambiente silencioso, ganho alto sem clipar); close frontal em tripé (rosto ~60%); LED roxo/azul, velas, abajur; objetos de gatilho.
**Edição:** cortes mínimos (dissolve curto se precisar), escolher os gatilhos mais satisfatórios; sem música nem SFX artificial; estéreo; reduzir ruído sem tirar a textura; aprox. -18 a -16 LUFS (mais baixo que o padrão); AAC 256 kbps ou mais. Legenda só em palavras-gatilho, branca pequena perto da boca/objeto, com fade. Tons quentes/roxos, contraste baixo.
**Modos:** C: relaxamento, produto aparece como objeto; nenhum ou "qual som no próximo?". A: produto é o objeto principal + menção curta.

### 33. Live
_rosto | 24 a 79 s | 0 a 8 cortes | 230 a 270 ppm | sem música_
**O que é:** parece trecho de live (selo LIVE, contador, comentários subindo) ou live dupla lado a lado; transmite espontaneidade.
**Variações:** A, live que vira esquete: apresentadora "em live" conta uma história > corta para a cena encenada (legenda bilíngue se houver, close do app) > volta com o CTA. B, live dupla: fundo preto, título branco com emoji no topo, duas janelas lado a lado, sticker nativo de live.
**Bruto:** take segurando o celular como em live; comentários fictícios com nomes genéricos; live dupla: dois takes ou live real com autorização.
**Edição:** interface como camada: avatar + nome no topo esquerdo; selo "LIVE" vermelho + olho com número (variando levemente) + X no topo direito; comentários em balões translúcidos subindo da metade da tela, um a cada 1 a 2 s; corações à direita; barra "Comment" embaixo. Live dupla: colunas iguais com divisória fina em ~40% central da altura. Legenda A branca bold com sombra (tradução entre parênteses); B condensada caixa alta com palavra em caixa vermelha/rosa. Comentários e números simulados não afirmam resultados falsos.
**Modos:** C: recorte de live real ou bate-papo do nicho; "ativa o lembrete da próxima live". A: live que vira demonstração + link.

### 34. Analogia
_rosto | 27 a 32 s | 0 a 7 cortes | 270 a 290 ppm | sem música_
**O que é:** ~30 s explicando uma ideia ou quebrando objeção com analogia concreta ("essa garrafa custa R$400 e você não paga R$29?") e um objeto que a materializa.
**Roteiro:** objeto + primeira metade da analogia (0 a 8 s) > virada ("agora se...") > aplicação ao tema/produto > CTA curto ou frase de efeito.
**Bruto:** o objeto em cena. A: tripé, sentado à mesa. B: selfie andando pela casa, um lugar por frase.
**Edição:** objeto visível em 2 s e punch-in quando citado. A: plano único, legenda branca pequena com sombra, frase inteira, centro. B: corte a cada frase com troca de ambiente, legenda branca bold caixa alta 2 a 3 palavras com palavra-chave amarela #FFD60A, centro-baixo. Destacar as palavras da comparação.
**Modos:** C: analogia que explica um conceito do nicho; "manda pra quem precisa entender isso". A: quebra a objeção de preço + botão.

### 35. Receita
_rosto opcional | 61 a 65 s | 1 corte a cada ~1,7 s | 150 a 265 ppm | trilha leve constante_
**O que é:** formato de receita (resultado apetitoso > ingredientes > preparo em closes > resultado), para culinária ou para vender curso de produção manual tratado como "receita".
**Roteiro:** resultado + frase forte > ingredientes mostrados para a câmera > closes das etapas > resultado > CTA ("me segue para mais receitas" ou oferta).
**Bruto:** resultado bem iluminado; 30 a 40 planos de 1 a 3 s (top-down, 45°, macro, mexer, despejar, cortar); narração clara; som direto do preparo gravado limpo.
**Edição:** abrir com o melhor plano do resultado (2 a 3 s); planos na ordem do preparo, corte a cada 1 a 2 s sincronizado com cada instrução; sons de preparo audíveis sob a narração + trilha leve. Legenda culinária: serif branca pequena (Times) no topo (~10 a 15%), a frase da instrução. Legenda de venda: branca bold caixa alta 3 a 5 palavras, palavra-chave em caixa magenta #E91E8C. Cor quente, saturação um pouco alta. Fechar no resultado (loop).
**Modos:** C: receita completa; "salva a receita" e "segue pra mais". A: estrutura de receita narrando a transformação + venda do curso.

### 36. Tweet
_rosto opcional | vídeo 9:16 ou estático 4:5 | ~39 s | troca de visual a cada 3 a 5 s | ~220 ppm | trilha constante_
**O que é:** post do X: cabeçalho (avatar, nome, verificado, @, tempo), texto com o gancho e o vídeo como mídia; ou só o texto.
**Roteiro:** vídeo: tweet fixo de 1 a 2 linhas + vídeo com gancho > prova > mecanismo > CTA com botão. Estático: 4 parágrafos curtos de curiosidade > "Clique no botão e descubra...".
**Material:** nome/@ e foto próprios (nunca imitar perfil real); texto; vídeo (UGC, b-roll, prints) ou só texto.
**Edição:** template fixo. Modo escuro: canvas preto; cabeçalho a ~8% da altura (avatar circular, nome bold branco, selo azul, @ e "· 10 min" em cinza, "..." à direita); texto branco ~38 px; mídia com cantos ~24 px, largura ~92%, ~4:5, centralizada. Dentro: troca rápida (UGC, prints em moldura, grid 2x2, gráfico), legenda branca bold no centro, botão roxo arredondado "SAIBA MAIS" no fim (anúncio). Estático claro: fundo branco, Chirp/Inter/Helvetica, texto preto ~44 px, muito respiro.
**Modos:** C: opinião, reflexão ou dado do nicho; "concorda?". A: novidade + vídeo de venda + Saiba mais.

### 37. Oferta Direta
_estático | 4:5 (1080x1350) | foto recortada do especialista_
**O que é:** direto ao ponto: dor/pergunta na headline, promessa, preço ancorado e especialista, sem disfarce de conteúdo.
**Modelos:** A, preço ancorado: fundo laranja/coral; faixa amarela no topo com headline preta bold caixa alta em pergunta; subheadline branca; "De R$297" riscado em vermelho + "por apenas R$37" com o valor enorme em branco; especialista recortada à direita (~45% da largura); selo do produto no canto inferior esquerdo. B, evento premium: fundo preto; foto com luz vermelha dramática na metade de cima; logo + edição; calendário + data; headline serif branca grande; parágrafo pequeno; seta + CTA bold.
**Design:** hierarquia headline > preço > foto > CTA; até 25 a 30 palavras (A); sans black condensada (Anton/Bebas/Archivo Black) e preço ainda maior; serif elegante no premium; contraste alto; margem ~5%. A headline tem que ser lida com a imagem a 25% do tamanho.
**Modos:** C: pouco natural; vira aviso de evento/aula gratuita sem preço, "ativa o lembrete" ou "link na bio". A: modo natural.

### 38. Story
_estático 9:16 | sem rosto_
**O que é:** Story de fundo preto respondendo caixinha só com texto: sticker da pergunta no topo, resposta branca com palavras coloridas, sticker de link nativo embaixo.
**Estrutura:** pergunta na linguagem real do público > resposta em 4 a 8 linhas (empatia, causa, solução, oferta) > sticker de link. Variação densa: lista com muitos emojis (✅🟢🔥) e texto pequeno.
**Design:** 1080x1920 preto, status bar no topo para parecer print; sticker de caixinha nativo (cabeçalho escuro, corpo branco, texto preto); resposta branca na fonte Clássico do IG/Helvetica, centralizada, ~36 a 40 px; 3 a 5 palavras-chave em negrito e cor (vermelho #FF4D4D dor, laranja oferta, verde benefício); sticker de link em pílula branca com corrente azul e texto preto; nada na faixa inferior coberta pela UI do anúncio.
**Modos:** C: resposta completa, link opcional para outro conteúdo; "me manda tua pergunta". A: resposta que leva ao link da oferta.

### 39. Série
_rosto | 42 a 49 s | 1 corte a cada 2 a 3 s | 210 a 250 ppm, off + trechos na câmera_
**O que é:** episódio numerado ("dia 4", "dia 61 de 0 a 1 milhão") com elementos recorrentes e gancho para o próximo; cria hábito.
**Variações:** A, batalha: mesmo ator em duas versões "lutando" com rótulos, b-roll de telas, trilha épica/tensão. B, jornada vlog: contador de faturamento no topo que sobe quando chega venda (card de notificação), cenas do dia, quase sem música.
**Roteiro:** número do episódio + premissa em 1 frase (0 a 3 s) > conteúdo > estado atual (número, decisão) > gancho de continuidade + CTA.
**Bruto:** narração; 15 a 25 planos; elemento recorrente (contador, "DIA X", rótulos); prints reais de resultado.
**Edição:** número do episódio na primeira frase e na tela; 1 plano por frase ou mais, sem plano parado. Elemento fixo idêntico em todos os episódios: B com valor verde #3BE36B bold itálico com contorno escuro no topo (~12%) e animação de contagem; A com rótulos brancos caixa alta pequenos. Legenda branca bold minúscula no centro, ou com contorno a ~75%. Números sempre reais.
**Modos:** C: jornada/desafio sem pitch; "segue pra ver o próximo episódio". A: episódio com resultado + link/produto.

### 40. Edit
_rosto opcional | 6 a 12 s | 1 a 3 cortes na batida | sem fala | música central, alta_
**O que é:** cenas de estilo de vida desejado com texto de recrutamento ("Procuro pessoas que querem...") e depois a mão segurando o celular com a página de inscrição.
**Roteiro:** 0 a ~6 s clipes aspiracionais com texto fixo > mão com celular + "Toque para garantir sua vaga". Variação: "...receber assim: [emojis]" / "E não trabalhando assim: [emojis]".
**Bruto:** 1 a 3 clipes próprios; celular com a página filmado por outro celular, balançando levemente; texto + emojis; música com beat, licenciada para anúncio.
**Edição:** detectar as batidas, cortar nelas e trocar para o celular no drop. Texto fixo branco em fonte fina (serif fina tipo Cormorant/Times ou sans light), ~36 a 42 px, terço superior (~25 a 35%), 2 a 3 linhas, sombra muito leve, linha "Bônus:" menor abaixo. Texto do celular em caixa preta pequena com texto branco (nativo TikTok). Cor vibrante, golden hour.
**Modos:** C: edit estético do nicho sem página de vendas, loop. A: edit + celular com a página + CTA de vaga.

### 41. Rotina
_rosto | 74 a 83 s | 1 corte a cada ~3 s | sem fala ou narração off rápida (~350 ppm)_
**O que é:** dia da pessoa em ordem com o horário na tela (6:17 AM... 9:20 PM) ou narrado; vende estilo de vida e disciplina.
**Roteiro:** abertura forte (acordar em contraluz ou frase de contexto) > blocos do dia em ordem > noite + reflexão/CTA.
**Bruto:** 15 a 30 planos estéticos de 3 a 5 s (contraluz, detalhes); horário de cada cena; opcional POV grande-angular, whip pans, narração.
**Edição:** ordem cronológica, 1 cena a cada 2 a 4 s na batida. Horário branco sans regular ~70 px no centro exato, entra no início de cada cena. Transição só whip pan com motion blur entre locais; resto corte seco. Cor limpa e levemente quente, consistente. Sem fala: só música (eletrônica/lo-fi); narrada: música baixa.
**Modos:** C: modo natural; "comenta se quer a parte 2". A: rotina mostrando o negócio + "se você quer aprender...".

### 42. POV + Depoimento
_rosto/corpo | ~12 s | corte seco no drop | sem fala | música trend é o áudio_
**O que é:** transformação com texto POV ("POV: você realmente começou naquela segunda-feira"): antes, corte seco no drop, depois (selfie no espelho).
**Roteiro:** 0 a ~5 s ANTES com POV > corte no drop > DEPOIS até ~12 s.
**Bruto:** vídeo antigo real do antes e do depois (mesma pose se possível); frase POV; música trend (licenciada no anúncio); autorização.
**Edição:** antes até o drop, depois a partir dele, sem transição, total 10 a 15 s (loop). POV nativo TikTok/IG branco com sombra, ~40 px, 2 linhas, topo (~12%) ou centro-baixo (~65%), fixo; sem outra legenda. Cor natural; nunca filtro ou edição que altere o corpo; resultado real da própria pessoa.
**Modos:** C: transformação do aluno com autorização; nenhum ou "marca quem vai começar segunda". A: antes/depois + CTA do programa.

### 43. Certo VS Errado
_rosto | ~56 s | 9 a 28 cortes | texto + música, ou falado (~185 ppm) com trilha_
**O que é:** mostra como fazem errado (X vermelho) e depois o jeito certo, em demonstração prática (academia, postura, técnica).
**Roteiro:** erro no gancho ("Isso está errado... e isso também") > por que é ruim > o certo em 2 a 4 pontos > execução certa completa > CTA.
**Bruto:** câmera boa com fundo desfocado, plano aberto do corpo + closes de detalhe; takes de errado e certo no mesmo enquadramento; lapela ou textos prontos.
**Edição:** abrir com o erro; X vermelho grande #E11D2E com contorno branco/sombra no errado e ✓ verde no certo, com pop. Título do tema branco bold caixa alta no rodapé (~80%) no começo. Legenda branca pequena sentence case com sombra, ~50 a 55%, 1 a 2 linhas. Alternar aberto e close nos pontos citados; opcional câmera lenta no movimento certo. Sem fala: música alta e o texto explica.
**Modos:** C: dica técnica completa; "salva pro próximo treino". A: correção + "quer aprender? clica".

### 44. Trivial
_rosto | 82 a 85 s | plano único | ~200 ppm, calmo | sem música_
**O que é:** conta uma história ou reflexão importante enquanto faz algo trivial (cozinhar, comer bolo), em plano único, como conversa na cozinha.
**Roteiro:** frase-tese no início > contexto pessoal > exemplos > conclusão + pedido de compartilhamento ou CTA.
**Bruto:** tripé, plano médio, cozinha bonita e iluminada; ação contínua; lapela.
**Edição:** take inteiro, cortar só começo e fim (se precisar, corte invisível em movimento). Legenda branca bold com contorno leve, 2 a 3 linhas, centro, 1 palavra enfatizada em CAIXA ALTA; ou branca bold pequena acima da cabeça (~25%). Opcional @ translúcido no canto superior direito. Reduzir ruído de panela; cor natural quente.
**Modos:** C: modo natural; "compartilha com quem precisa". A: história que leva à oferta sem perder o tom calmo.

### 45. The Office
_rosto | 65 a 75 s | 5 a 8 cortes | 215 a 265 ppm_
**O que é:** mockumentário: câmera de documentário na mão, cenas do cotidiano intercaladas com personagens falando para a câmera como em entrevista confessional, humor seco.
**Roteiro:** título da situação ("Aquele amigo que corrige o português das pessoas") > cena > confessional comentando > escalada em 2 a 4 situações > punchline.
**Bruto:** cenas com câmera na mão (leve tremido); confessionais com cada personagem sozinho, plano médio, olhando a câmera.
**Edição:** cena > confessional > cena, sem transições; zoom de reação 100 a 130% em 4 a 6 frames após a fala absurda, olhar para a câmera segurado 0,5 a 1 s. Título branco bold 2 linhas no topo (~15%) no começo; legenda branca pequena com sombra no centro-baixo; opcional @ pequeno. Cor quente (externa) ou natural de casa; "especialista" absurdo com fundo neon azul. Trilha afetiva ou silêncio (ajuda o humor).
**Modos:** C: humor de situação; nenhum ou "marca o amigo que é assim". A: produto como punchline + CTA leve.

### 46. TikTok
_rosto depende | 35 a 36 s | 0 a 3 cortes_
**O que é:** só recursos nativos do TikTok (fonte e caixas do app, layout de meme com faixa branca, oferta em caixa preta) para parecer post comum do For You.
**Variações:** A, TikTok Shop/UGC: selfie com gestos; textos nativos entram um a um listando dores; imagem pequena no canto; produto; oferta em caixas pretas arredondadas; "clique no carrinho laranja"; música com vocal. B, meme do app: faixa branca no topo (~25%) com texto preto na fonte do TikTok e vídeo viral (com permissão) em 3:4 embaixo; áudio original.
**Edição:** TikTok Sans/Proxima Nova Semibold, ~44 a 50 px, centralizada; estilos branco com sombra, branco em caixa preta arredondada (~80% opacidade) ou preto em caixa branca. Cada texto entra no gesto/fala e substitui o anterior; nenhuma animação "de editor". Cortes mínimos; sem tratamento de cor.
**Modos:** C: meme do app ou dica em texto nativo; nenhum ou "salva". A: dores em texto nativo + produto + carrinho/oferta.

### 47. "Leia a Legenda"
_sem rosto | ~7 s | 0 a 1 corte | sem fala | música calma constante_
**O que é:** 6 a 8 s de cena calma com frase-gancho de história e, no fim, "Leia a legenda 👇"; o conteúdo está na caption e o vídeo roda em loop enquanto a pessoa lê.
**Roteiro:** b-roll + gancho (curiosidade + promessa de mudança) até ~5,5 s > "Leia a legenda 👇" > caption completa.
**Bruto:** 1 ou 2 clipes estáveis de natureza/cidade; gancho; caption (a IA pode escrever); música calma.
**Edição:** cortar para 6 a 8 s. Gancho nativo TikTok/IG branco bold com sombra, ~48 a 56 px, terço superior (~20 a 30%), 3 a 5 linhas, palavras de impacto em CAIXA ALTA, emoji no fim. "Leia a legenda 👇" igual, menor, ~70%, no último 1,5 s. Música sem drop. Entregar a caption em texto junto.
**Modos:** C: modo natural, CTA dentro da caption. A: caption termina em link na bio/oferta (fraco para clique).

### 48. Entrevista
_rosto | 58 a 130 s | 14 a 32 cortes | 285 a 305 ppm | sem música_
**O que é:** entrevistador faz as perguntas do público e o especialista responde com segurança; parece programa, e a resposta leva ao produto.
**Roteiro:** pergunta-gancho (0 a 3 s) > resposta contraintuitiva ("Claro que não.") > objeção do entrevistador > resposta com método/exemplo > CTA na conversa ou para a câmera.
**Bruto:** 2 ou 3 câmeras (os dois de lado, closes); microfones de mesa ou lapelas; estúdio escuro com prateleiras iluminadas ou sala aconchegante.
**Edição:** reordenar começando pela pergunta mais provocativa; respostas só no essencial; remover todas as pausas (~300 ppm); trocar câmera a cada fala/ideia; entrevistador fora de quadro fica só na voz com o especialista ouvindo. Legenda branca bold sentence case com sombra, 2 a 4 palavras, ~70%. Cor quente.
**Modos:** C: respostas completas; "manda tua pergunta nos comentários". A: respostas que levam ao produto + CTA.

### 49. Jornal Nacional
_apresentador próprio ou avatar de IA fictício | 8 a 62 s | 0 a 2 cortes | ~180 ppm, tom de âncora_
**O que é:** plantão de telejornal: vinheta "NOTÍCIA URGENTE", estúdio azul com mapa-múndi, apresentador de terno e painel com imagens.
**Roteiro:** vinheta com zoom (1 a 2 s) > manchete em 1 frase > detalhes com imagens no painel > gancho de continuação ou CTA.
**Bruto:** apresentador de terno/blazer, plano médio frontal, fundo neutro (ou avatar fictício); imagens próprias ou com direito; roteiro jornalístico.
**Edição:** estúdio virtual azul escuro com linhas diagonais e globo; apresentador recortado embaixo (busto). Vinheta no topo (~10%): "NOTÍCIA" cromado + "URGENTE" em faixa vermelha 3D com serif branca bold, com whoosh. Painel largo no meio (~30% da altura) trocando a cada frase. Legenda branca bold caixa alta 2 a 3 palavras com palavra amarela a ~65%. Trilha de telejornal baixa.
**Ética (importante):** as referências usam apresentador real com notícia falsa e propaganda política: não replicar. Só apresentador próprio ou avatar que não imite pessoa real, informação verdadeira, sem nome, logo ou vinheta de emissora real (nada de "Jornal Nacional" nem identidade da Globo).
**Modos:** C: notícia verdadeira do nicho; "segue pra ficar por dentro". A: novidade real do negócio + CTA.

### 50. Anjinho VS Diabinho
_rosto | 58 a 63 s | 0 a 8 cortes | ~200 ppm | trilha leve/cômica_
**O que é:** a dúvida vira anjinho (escolha certa) e diabinho (tentação) "falando no ombro" da pessoa; a escolha certa é o caminho da mensagem/produto.
**Roteiro:** "Você escuta mais o seu anjinho ou o seu diabinho?" > dilemas com os dois opinando e imagens das opções > dilema principal > resolução + frase/CTA.
**Bruto:** tripé fixo, mesma luz: a pessoa no centro + gravada como diabinho (peruca escura, vermelho) e anjinho (peruca clara, claro); imagens das opções; cenas de resolução em locação aberta. Ou personagens ilustrados próprios.
**Edição:** central em tamanho normal, anjinho e diabinho recortados a ~55% atrás dos ombros, levemente desfocados ou com sombra; leve zoom/brilho em quem fala. Opções em círculo com contorno branco acima de quem sugere, pop + "plop". Legenda amarelo claro #FFF3A0 com contorno escuro, pequena, ~55%. Transição suave para a resolução. Nada de desenho animado protegido ou GIF de terceiros.
**Modos:** C: dilemas do nicho; "comenta: você ouve mais o anjinho ou o diabinho?". A: o produto resolve o dilema principal + CTA.