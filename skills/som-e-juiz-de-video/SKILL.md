---
name: "som-e-juiz-de-video"
description: "Use junto com qualquer criação ou edição de vídeo (edicao-minimal-premium, motion-reel, video-making ou outra) quando houver efeitos sonoros, trilha, cortes de fala, legendas ou revisão final: dá acesso ao SFX Kit (320 sons CC0) e ao juiz de edição agent-video-editor."
---

# Som e juiz de vídeo

Dois repositórios de terceiros que servem para qualquer vídeo, qualquer ferramenta (Remotion, HTML + ffmpeg, HyperFrames, CapCut):

1. **SFX Kit** (Wyzowl, CC0, sem crédito obrigatório): 320 efeitos WAV 48 kHz em 28 categorias, cada um com descrição, quando usar e quando evitar, ponto de sync, nível e quanto abaixar sob a voz.
2. **agent-video-editor** (kmilo93sd, código MIT, áudio CC0): o "juiz" de edição. Regras com fonte para cortes, pausas, gancho, legendas, texto na tela, punch-in, níveis de áudio, ducking, licença e um checklist de revisão. Traz também 15 trilhas e 113 efeitos CC0.

## Onde estão
- No estúdio do João: `/home/claude/estudio/vendor/sfx-kit` e `/home/claude/estudio/vendor/agent-video-editor` (o `setup.sh` do estúdio baixa os dois nas versões testadas).
- Em qualquer outra sessão, baixar só o que for usar:
  `git clone --depth 1 https://github.com/wyzowl/sfx-kit.git ./sfx-kit`
  `git clone --depth 1 https://github.com/kmilo93sd/agent-video-editor.git ./agent-video-editor`
  (versões testadas: sfx-kit 92780e7, agent-video-editor 8e32c0a). O SFX Kit também está em huggingface.co/datasets/wyzowl/sfx-kit.

## Efeitos sonoros (SFX Kit)
1. Ler `sfx-kit/GUIDE.md` uma vez (tabela "o que acontece na tela → som"). Escolher em `sounds.json` por `use_for`, `avoid_for`, `tags` e `fits_seconds`.
2. Posicionar: início = momento − `sync.at` (se mudar a velocidade, dividir os tempos pela velocidade). Início antes de 0: começar em 0 e cortar o começo.
3. Volume: os sons já estão nivelados entre si; onde o corpo do som (`timing.onset` a `timing.body_end`) cai em cima da fala, abaixar `under_voiceover_db`. Sons cujo `avoid_for` começa com "On top of speech" não vão por cima de fala.
4. Copiar só os arquivos usados para dentro do projeto.
5. No estúdio do João existe `tools/sfx.py` (buscar, colocar, sugerir, musica) que faz isso automaticamente.

## Juiz de edição (agent-video-editor)
Ler `agent-video-editor/skills/editing-videos/SKILL.md` (processo e regras duras) e só a receita do tipo de vídeo:
- talking head / Reels de fala: `recipes/talking-head.md` + `recipes/shorts-from-long-form.md`
- vídeo de produto, motion, explicativo sem câmera: o núcleo (`references/graphics-and-text.md`, `references/audio-and-sfx.md`)
- tutorial de tela narrado: `recipes/narrated-screen-tutorial.md` (os templates dele exigem HyperFrames, Playwright e ElevenLabs; usar só as regras se a ferramenta for outra)
Antes de mostrar qualquer corte, rodar `review-checklist.md` (medido, visto, ouvido). No estúdio do João, `tools/juiz.py` automatiza a parte medível.

Regras que valem sempre:
- Todo corte tem motivo; nunca no meio de palavra. Gancho nos primeiros segundos, sem cumprimento ou logo antes.
- Reels: pausa entre frases 200-300 ms; algo novo na tela a cada 2-3 s.
- Gráfico entra no máximo 0,5 s antes da palavra que o nomeia e nunca fica vazio. Texto fica pelo menos max(1,5 s; palavras × 0,33 s + 0,5 s). Legenda ≥ 20 frames.
- Trilha 18-25 dB abaixo da voz e com ducking; efeito nunca cobre palavra-chave e não repete mais de 3 vezes seguidas.
- Master: -14 LUFS integrado, pico ≤ -1 dBTP (medir com `ffmpeg -i final.mp4 -af ebur128=peak=true -f null -`).
- Só mídia com licença clara (CC0, biblioteca da plataforma ou licença comercial por escrito). Nenhum número inventado.

## Trilhas CC0
`node agent-video-editor/skills/editing-videos/library/search.mjs --category music --paths` lista as 15 trilhas com LUFS e quando usar (ex.: music-ambient-piano para fala, music-lofi-tea para ritmo, music-tension-soft para "o problema"). Seguras para uso comercial. Se a skill do vídeo já tem biblioteca própria do usuário, ela vem primeiro; estas são a alternativa sem risco de direitos autorais.

## Conflitos
O estilo visual da skill do vídeo manda no visual. O juiz manda em tempo de leitura, pausas, níveis de áudio e licença. Quando discordarem, dizer ao usuário qual regra foi seguida.