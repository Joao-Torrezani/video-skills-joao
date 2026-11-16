---
name: "edicao-minimal-premium"
description: "Use para editar talking head (Reels/Shorts 9:16) no estilo minimal premium com Remotion, do vídeo bruto ao plano de cenas, revisões, som e render final, e para treinar o estilo com vídeos de referência."
---

# Edição Minimal Premium (talking head com Remotion)

Método: bruto entra → transcrição palavra a palavra + corte de silêncio → juiz de cortes → documento de plano (o João decide as cenas) → Claude constrói as cenas → juiz → v1 → revisões → som → juiz do render → final.
Regra central: o plano é do João. Claude sugere com base em `referencias/estilo.md`, mas não constrói nada antes do plano aprovado (IA planejando sozinha sai pouco criativa).

Regra visual fixa (preferência do João, vale acima do `estilo.md` e das referências): lettering e motion entram POR CIMA do vídeo dele, nunca sobre fundo sólido de cor. O João continua aparecendo durante as cenas, e é isso que mantém a dinâmica do vídeo. O rosto nunca é coberto. Detalhes na seção "Lettering e motion sobre o vídeo".

## 0. Ambiente
- O kit fica em `/home/claude/estudio`. Se não existir: pedir ao João o arquivo `estudio-kit.zip`, descompactar em `/home/claude/estudio` e rodar `bash setup.sh` (instala Remotion, Whisper, baixa os repositórios de terceiros, gera texturas e sfx; leva alguns minutos).
- Ler sempre: `README.md`, `referencias/estilo.md`, `marca/marca.json` (cores/fontes da marca entram no `theme` do edit.json).
- Terceiros em `vendor/` (o `setup.sh` baixa nas versões fixadas):
  - `vendor/sfx-kit` (Wyzowl, CC0): 320 efeitos com ponto de sync, nível e quanto abaixar sob a voz. Ler `vendor/sfx-kit/GUIDE.md` uma vez por sessão. Usado por `tools/sfx.py`.
  - `vendor/agent-video-editor` (kmilo93sd, MIT): o juiz de edição. Regras com fonte para corte, ritmo, legenda, áudio e revisão, mais 15 trilhas e 113 efeitos CC0. Arquivos que valem para Reels talking head: `skills/editing-videos/SKILL.md` (regras duras), `recipes/talking-head.md`, `recipes/shorts-from-long-form.md`, `review-checklist.md`, `references/audio-and-sfx.md`, `references/graphics-and-text.md`. Ignorar a parte de HyperFrames, Playwright e ElevenLabs (o kit usa Remotion). Usado por `tools/juiz.py`.
  - Se o juiz e o `estilo.md` discordarem, vale o `estilo.md` para o visual e o juiz para tempo de leitura, pausas, níveis de áudio e licença. Dizer ao João quando houver conflito.
  - Se o `estilo.md` ou uma referência pedir cena com fundo sólido, vale a regra visual fixa: adaptar a cena para cima do vídeo do João e avisar.
- Render demora: ~1 a 1,7 frame/s em resolução cheia e ~2,5 frame/s em `--rapido` nesse ambiente de 2 núcleos. Um vídeo de 60 s leva ~20 a 30 min no final. Avisar o João antes.
- Remotion é grátis para pessoa física e empresa com até 3 funcionários; empresa maior precisa de Company License (remotion.dev/license). Lembrar disso se o vídeo for de uma empresa.

## 1. Modo TREINO (quando chegarem vídeos de referência)
1. Vídeos em `referencias/videos/` (10 a 20, os melhores do estilo).
2. `python3 tools/extract_refs.py referencias/videos` → frames em cada troca de cena, pranchas 6x5, ritmo (plano médio, cortes/min) e transcrição.
3. Abrir cada prancha (`referencias/frames/*_prancha_*.jpg`) com Read. Para cada cena boa perguntar: por que essa cena aqui, por que esse design, essas cores, esse efeito, essa animação, em que palavra do roteiro ela entra.
4. Copiar os frames bons para `referencias/board/<principio>/` (um frame = uma referência; nome = `<video>_<tempo>.jpg`).
5. Reescrever `referencias/estilo.md` preenchendo a seção "A preencher no treino" com números medidos (ritmo, duração por tipo de cena, tamanhos, cores com hex amostrado dos frames via PIL, frequência de cada princípio e em que ponto do roteiro aparecem). Só escrever o que foi medido ou visto; o resto marcar como "não verificado".
6. Se algum padrão das referências não existir nas cenas do kit, propor ao João um componente novo em `src/scenes/` antes de criar.
7. Frames de referência com fundo sólido servem para tipografia, ritmo, cor do texto e animação. O fundo deles não entra no `estilo.md` como regra.

## 2. Modo PRODUÇÃO

### Etapa 1: preparar o bruto
`tools/prep.sh <arquivo_bruto> <slug> "<vocabulário de marca.json>" [--drop "12.3-15.8,40-42"] [--pad 0.12]`
- Folga padrão 0.12 s por lado (~240 ms de respiro entre frases, regra do juiz para Reels: 200-300 ms). `--pad 0.03` reproduz o corte seco do vídeo de referência; usar só se o João pedir esse ritmo.
- Gera `public/projetos/<slug>/`: transcricao.json, cut.mp4 (1080x1920, voz com passa-alta + loudnorm -14 LUFS), proxy.mp4, words_cut.json, cuts.json, edit.json (legendas automáticas).
- Conferir as palavras com baixa confiança que o script lista e corrigir o texto direto em `edit.json` → `words[i].w` (nomes próprios, termos da marca). O Whisper às vezes inventa "Obrigado." no silêncio final; o corte já descarta, mas conferir.
- Erros de fala, repetições e takes ruins: ler a transcrição, listar os trechos em tempo ORIGINAL e rodar de novo com `--drop`. Perguntar ao João quando houver dúvida sobre qual take manter.
- Rodar `python3 tools/juiz.py <slug>`: lista cumprimento no começo (o gancho vem antes), pausas mortas, muletas ("é", "tipo", "né", "então"...), frases repetidas (take ruim) e palavras de baixa confiança. Decidir o que cortar, montar o `--drop` em tempo ORIGINAL e rodar o prep de novo. O Whisper omite muitas muletas, então também ouvir os trechos suspeitos.
- O prep reescreve o `edit.json`: fazer todos os cortes ANTES de montar cenas.

### Etapa 2: documento de plano
1. Ler `words_cut.json` inteiro. Dividir o roteiro em trechos de 1 ideia (normalmente 2 a 6 s). Os trechos devem cobrir todas as palavras, sem buraco.
2. Para cada trecho escolher a cena sugerida pela regra de montagem (abaixo) e 2 alternativas, com o motivo em 1 frase e a ideia concreta da cena. Na ideia, dizer onde o lettering/motion fica em relação ao rosto (acima da cabeça, terço de baixo ou lateral livre).
3. Escrever `public/projetos/<slug>/plano_input.json`:
   `{"titulo": "Plano <em>Nome do Vídeo</em>", "trechos": [{"i0":0,"i1":8,"rec":"aroll","alts":["texto","grafico"],"why":"...","idea":"..."}]}`
4. `python3 tools/make_plan.py public/projetos/<slug>` → `plano/index.html` + `plano/proxy.mp4`.
5. Carregar a skill `artifact-design`, publicar com Artifact: `file_path=public/projetos/<slug>/plano/index.html`, `files={"proxy.mp4": "public/projetos/<slug>/plano/proxy.mp4"}`, icon "video". Pedir ao João para escolher, anotar e colar o plano copiado na conversa.

### Etapa 3: construir
1. Converter o plano colado em `scenes` no `edit.json` (esquema abaixo). Trechos "aroll" não viram cena (ficam no rosto com legenda).
   - Antes de posicionar qualquer elemento, marcar a zona do rosto: tirar stills do `cut.mp4` em 3 a 5 momentos (começo, meio, fim e trechos com punch-in), olhar com Read e anotar a área que o rosto ocupa, com folga para gesto e movimento de cabeça. Todo texto e motion fica fora dessa área, inclusive no caminho da animação de entrada e saída.
2. Revisar as legendas automáticas: grupos de até 5 palavras, destaque na palavra que carrega o sentido, alternar serif itálico e sans bold com critério (números e palavras curtas fortes em sans; conceitos em serif).
3. Lista de assets: para cada cena, o que precisa (ilustração, foto, b-roll, print/gravação do app). Ordem de preferência: material do João (`marca/prints`, `biblioteca/`) → gerado pelo João no Higgsfield com `biblioteca/ilustracoes/PROMPTS.md` → banco de imagem gratuito (Pexels/Unsplash: os CDNs de imagem respondem no shell com User-Agent de navegador; achar a URL pela busca ou pelo Chrome do João; conferir a licença) → placeholder gerado por código, sempre avisado como placeholder. Não usar foto de pessoa real famosa, personagem, logo de terceiro nem obra protegida. Pintura só de domínio público.
4. Salvar assets em `public/projetos/<slug>/assets/` e referenciar como `projetos/<slug>/assets/arquivo`.
5. Rodar `python3 tools/juiz.py <slug>` e corrigir todo AVISO que não for intencional (cena curta demais para ler, cena vazia antes do texto, 4 cenas sem voltar ao rosto, legenda curta, asset provisório, zoom cruzando corte).
6. Checagem visual antes de mandar: renderizar stills nos frames-chave de cada cena (`npx remotion still src/index.ts Video out.jpg --props=public/projetos/<slug>/edit.json --frame=N --scale=0.5`), juntar numa prancha e olhar: texto cortado, sobreposição, legenda ou motion em cima do rosto, fundo sólido aparecendo, texto sem contraste sobre o vídeo, cena vazia, fonte errada. Corrigir e só então renderizar.
7. `tools/render.sh <slug> v1 --rapido` e mandar o vídeo com SendUserFile. Avisar que a v1 fica em ~60-70% e pedir revisões numeradas com o segundo do vídeo.

### Etapa 4: revisões
- Aplicar todas as revisões de uma vez, renderizar `v2`, listar em 1 linha o que mudou em cada item. Perguntar se está pronto para o som ou se tem mais revisão.

### Etapa 5: som e final
Princípio: menos é mais. Som só onde ajuda o espectador (marca um evento visual que importa, guia a atenção ou dá emoção). Nada em toda legenda ou todo corte, nada em cima da palavra-chave, no máximo 3 sons iguais seguidos.
- `python3 tools/sfx.py sugerir <slug>` propõe um desenho de som contido com o SFX Kit e o motivo de cada som. Revisar a lista perguntando "o espectador sentiria falta?", então `--aplicar`.
- Ajuste fino: `python3 tools/sfx.py buscar <termos>` e `python3 tools/sfx.py colocar <slug> <id> <momento> --motivo "..."`. O script aplica a regra do kit (início = momento − sync.at) e abaixa `under_voiceover_db` quando o corpo do som cai em cima da fala. `limpar` zera.
- Os sons sintetizados antigos (`sfxAuto: true`) ficam só como último recurso.
- Trilha: só arquivo com licença clara. Opções: a do João, ou CC0 do juiz (`node vendor/agent-video-editor/skills/editing-videos/library/search.mjs --category music --paths`; ex.: music-ambient-piano para fala, music-lofi-tea para ritmo). Depois `python3 tools/sfx.py musica <slug> <arquivo>`: mede voz e trilha em LUFS, deixa a trilha 20 dB abaixo da voz e sobe 6 dB nas pausas (ducking).
- Render final sem `--rapido`, depois `python3 tools/juiz.py <slug> --render <final.mp4>`: loudness integrado ~-14 LUFS, pico ≤ -1 dBTP, 1080x1920, 48 kHz, duração. Corrigir antes de entregar e lembrar o João de ouvir com fone e ver no celular.

## Regras do juiz que valem sempre (fonte: vendor/agent-video-editor)
- Todo corte tem motivo; nunca no meio de palavra. Gancho nos 3 primeiros segundos, sem cumprimento antes.
- Pausa entre frases 200-300 ms em Reels; algo novo na tela a cada 2-3 s, novidade maior a cada 5-7 s.
- Cena/gráfico entra no máximo 0,5 s antes da palavra e nunca fica vazio; cada elemento ≤ 0,6 s da palavra que o nomeia.
- Texto fica pelo menos max(1,5 s; palavras × 0,33 s + 0,5 s). Legenda: 1-5 palavras, ≥ 20 frames, revisada palavra por palavra.
- Punch-in só com motivo e nunca atravessando corte. Trilha 18-25 dB abaixo da voz, com ducking. Só mídia com licença clara. Nenhum número inventado.

## Regra de montagem (resumo do estilo)
- Abre no rosto com legenda (conexão). Primeira cena visual forte (gancho visual).
- Anunciou item novo → rosto. Descreveu o item → cena.
- Nunca dois tipos iguais seguidos; a cada 2-3 cenas, deixar um trecho limpo (só o João com legenda, sem motion por cima) para o vídeo respirar.
- Toda animação entra NA palavra (usar `w:N`). Número falado → gráfico/número. Sequência ou fases → linha. Pessoa/persona → ilustração. Coisa concreta → objeto ou b-roll. Produto → tela. Frase-tese → texto com aspas.
- Fechar com cena de texto (aspas) ou linha + texto.

## Lettering e motion sobre o vídeo (regra fixa)
- O fundo de toda cena é o próprio vídeo do João. Proibido: tela cheia de cor sólida (claro, azul, escuro, branco ou degradê), cartão ou caixa cheia atrás do texto, qualquer coisa que esconda o João. Vale para texto, linha, gráfico, ilustração, objeto, tela e rótulos.
- O rosto nunca é coberto. Lugar padrão do lettering: acima da cabeça, terço de baixo ou a lateral livre do quadro, conforme a zona do rosto marcada na Etapa 3.
- Legibilidade sem fundo, nesta ordem: (1) escolher a área do quadro com fundo mais limpo e uma cor de texto que contraste com ela; (2) sombra suave ou contorno fino no próprio texto, sem caixa; (3) só se ainda não der para ler, leve desfoque no vídeo do João enquanto o texto está na tela (ponto de partida: 4 a 8 px em 1080 de largura, entrando e saindo junto com o texto em ~0,2 s; ajustar olhando o still). Nunca escurecer ou desfocar a ponto de parecer um fundo.
- Ilustração e objeto: PNG com fundo transparente (remover o fundo branco antes de usar), sem placa sólida atrás.
- Tela (print ou gravação do app): o celular flutua por cima do vídeo do João, ao lado ou abaixo do rosto, sem fundo de cor atrás.
- B-roll de foto ou vídeo ainda pode ocupar a tela inteira quando a cena pede (é imagem, não fundo sólido), mas com moderação: o padrão é o João aparecendo.
- Punch-in/zoom do A-roll: depois do zoom, conferir se o rosto continua fora da área do texto.
- Se um componente do kit em `src/scenes/` desenha fundo sólido (ex.: `tone` do `texto`, `linha` com tone escuro, `grafico`), adaptar o componente antes do primeiro uso: fundo transparente com o A-roll por baixo e suporte a `fundo` e `blur` (esquema abaixo). Mostrar ao João um still da cena adaptada antes de seguir.
- Fundo sólido só se o João pedir explicitamente para aquela cena.

## Esquema do edit.json
Tempos: segundos ou `"w:N"` (início da palavra N), `"w:Ne"` (fim), `"w:N+0.2"`.
Bloco de texto: sincronizado `{"i0":9,"i1":11,"main":[10,11],"font":"serif|sans","x":0.5,"y":0.5,"size":120}` ou livre `{"top":"..","main":"..","bottom":"..","at":"w:9","font":"sans"}`. Palavras antes do destaque vão em cima, depois do destaque embaixo. `main` precisa ser contínuo.
Raiz: `fps, width, height, duration, video, words, cuts, theme, aroll{punch:"alternado"|"nenhum", punchScale, zooms:[{at,ate,scale}]}, captions[], captionY, scenes[], music{src,volume,duckDb,fadeIn,fadeOut}, sfx[{src,at,v,rate,trim,id,motivo}], sfxAuto`.
Toda cena: `type, s, e`, opcional `legenda: true` (mostra a legenda do A-roll por cima), `fundo`: "video" (padrão, A-roll por baixo) | "blur" (A-roll com leve desfoque, intensidade em `blur` px) | "solido" (só com pedido do João). Com `fundo` "video" ou "blur", o `tone` de qualquer cena define só a cor do texto e dos detalhes, nunca um fundo.
- `texto`: `tone` claro|azul|escuro, `texto` (bloco), `aspas` (padrão true)
- `linha`: `tone` (padrão escuro), `layout` horizontal|zigzag|vertical|subida, `nos:[{texto, imagem?, ponto?, tam?, at?}]`, `continuar`
- `grafico`: `ritmo` degrau|continuo, `pontos:[{v:0..1, at, rotulo?}]`, `titulo` (bloco), `valor` (bloco perto da bolinha), `tituloY`
- `broll`: `src` (jpg/mp4), `inicio` (s, para vídeo), `texto`, `pb` (preto e branco), `foco` (% vertical), `zoomDe/zoomAte`
- `pintura`: `src`, `de` direita|esquerda|baixo|cima, `texto` ou `textos[]`, `textoCor` branco|tinta, `posicao`
- `ilustracao`: `src` (PNG transparente; imagem com fundo branco precisa ter o fundo removido antes), `lugar` centro|esquerda|direita, `anel` true|"meio", `pano` (só PNG transparente), `texto`/`textos[]`, `tam`, `topo`, `bordaLimpa`
- `objeto`: `src`, `tam`, `foto` (true = foto real, sem multiplicar), `rotulos:[{pos: topo|baixo|esq|dir, texto}]`, `texto`
- `tela`: `src` (gravação de tela mp4 ou print), `inicio`, `texto`, `textoY`, `marcas:[{at,x,y,r}]` (x,y em fração da tela do celular), `zoom:[{at,ate,x,y,scale}]`, `rotulos:[{texto,x,y}]`, `largura`, `y`
Componentes novos: criar em `src/scenes/` e registrar em `SCENES` no `src/Video.tsx`. Todo componente novo nasce transparente (A-roll por baixo) e respeita a zona do rosto.

## O que pedir ao João quando faltar
Bruto (vertical, 1080p ou 4K, 30 fps), vocabulário/nomes próprios, cores e fontes da marca, logo, prints e gravações de tela do app, b-roll próprio, ilustrações do Higgsfield, trilha licenciada, e a definição do objetivo do vídeo (perfil, público, CTA).