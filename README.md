# Skills de edição de vídeo

Skills do Claude que a equipe usa para editar e produzir vídeos (Reels/Shorts, motion e som).

## Skills

| Skill | Pra que serve |
|---|---|
| [`edicao-minimal-premium`](skills/edicao-minimal-premium/SKILL.md) | Edita talking head 9:16 no estilo minimal premium com Remotion: do vídeo bruto ao plano de cenas, revisões, som e render final. Também treina o estilo a partir de vídeos de referência. |
| [`motion-reel`](skills/motion-reel/SKILL.md) | Cria vídeo de motion renderizado por código: lançamento de produto, showreel, explicativo animado ou anúncio. |
| [`som-e-juiz-de-video`](skills/som-e-juiz-de-video/SKILL.md) | Usada junto com qualquer edição: efeitos sonoros (SFX Kit, 320 sons CC0), trilhas CC0 e o "juiz" de edição com regras de corte, legenda, texto na tela e níveis de áudio. |
| [`formatos`](skills/formatos/SKILL.md) | Biblioteca dos 50 formatos de Reels/TikTok que escalam (Caixinha, POV, Tela Verde, Top 5, Fofoca...): roteiro, material bruto, especificação de edição e diferença entre conteúdo e anúncio. Usada junto com qualquer skill de edição para escolher e aplicar o formato. |

As quatro se complementam: `formatos` define a estrutura do vídeo, `edicao-minimal-premium` e `motion-reel` fazem o vídeo, `som-e-juiz-de-video` cuida do som e da revisão.

## Estrutura

```
skills/
  edicao-minimal-premium/SKILL.md
  formatos/SKILL.md
  motion-reel/SKILL.md
  som-e-juiz-de-video/SKILL.md
scripts/
  instalar.ps1     copia as skills para ~/.claude/skills (Claude Code)
  empacotar.ps1    gera um .zip por skill em dist/ (para subir no Claude)
```

## Como instalar

### No Claude (app ou claude.ai)

1. Clone o repositório e rode no PowerShell, dentro da pasta dele:
   ```powershell
   powershell -ExecutionPolicy Bypass -File .\scripts\empacotar.ps1
   ```
2. Os arquivos ficam em `dist/`, um `.zip` por skill.
3. Suba cada `.zip` na área de Skills das configurações do Claude.

### No Claude Code

```powershell
powershell -ExecutionPolicy Bypass -File .\scripts\instalar.ps1
```

O script copia cada pasta de `skills/` para `~/.claude/skills/`. Se a skill já existir lá, ela é substituída pela versão do repositório.

## O que cada skill precisa para funcionar

- **`edicao-minimal-premium`** depende do kit do estúdio (`estudio-kit.zip`, com Remotion, Whisper e os scripts `tools/prep.sh`, `tools/juiz.py`, `tools/sfx.py`, `tools/render.sh`). O kit **não está neste repositório**: peça ao João.
- **`motion-reel`** usa a biblioteca de músicas e efeitos do João, que fica em `C:\Users\olase\Music\Musicas e efeitos sonoros` no computador dele. Em outro computador, peça o `Musicas-e-efeitos-sonoros.zip` e anexe na conversa, ou use as alternativas CC0 da `som-e-juiz-de-video`.
- **`som-e-juiz-de-video`** baixa dois repositórios públicos quando precisa: [wyzowl/sfx-kit](https://github.com/wyzowl/sfx-kit) e [kmilo93sd/agent-video-editor](https://github.com/kmilo93sd/agent-video-editor).

## Regras de estilo que valem em todas

- Quando o vídeo tem o João na câmera, lettering e motion entram **por cima do vídeo dele**, nunca sobre fundo sólido de cor, e o rosto nunca é coberto.
- Som é ferramenta, não cota: menos é mais.
- Só mídia com licença clara. Nenhum número inventado.

## Como contribuir

1. Crie uma branch: `git checkout -b ajuste/nome-da-skill`.
2. Edite o `SKILL.md` da skill (mantenha o cabeçalho `name` e `description`).
3. Faça um commit por skill alterada, com mensagem dizendo o que mudou.
4. Abra um pull request.

Para criar uma skill nova, crie `skills/<nome-da-skill>/SKILL.md` e adicione uma linha na tabela acima.
