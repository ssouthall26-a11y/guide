<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <title>Maine Grouse Field Guide</title>
  <meta name="description" content="A clean, interactive guide to ruffed grouse habitat, seasons, strategy, dog work, and safety in Maine." />
  <link rel="preconnect" href="https://fonts.googleapis.com" />
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
  <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&display=swap" rel="stylesheet" />
  <style>
    :root {
      --bg:#0b0c10;
      --card:#0f1117;
      --muted:#8a93a7;
      --text:#e6e9f2;
      --accent:#7c9cff;
      --accent-2:#a3ffd6;
      --ring:rgba(124,156,255,.45);
      --maxw:1100px;
      --shadow:0 10px 30px rgba(0,0,0,.35);
      --radius:16px;
    }
    @media (prefers-color-scheme: light){
      :root{
        --bg:#f6f8ff;
        --card:#fff;
        --muted:#5a6175;
        --text:#182033;
        --accent:#3459ff;
        --accent-2:#00c48c;
        --ring:rgba(52,89,255,.28);
        --shadow:0 10px 30px rgba(20,26,60,.08);
      }
    }
    *{box-sizing:border-box}
    html,body{height:100%}
    body{
      margin:0;
      font-family:Inter,system-ui,-apple-system,Segoe UI,Roboto,Helvetica,Arial,"Apple Color Emoji","Segoe UI Emoji";
      color:var(--text);
      background:
        radial-gradient(1200px 600px at 80% -10%,rgba(124,156,255,.12),transparent 60%),
        radial-gradient(900px 500px at 0% 20%,rgba(163,255,214,.10),transparent 60%),
        var(--bg);
      line-height:1.6;
    }
    a{color:inherit;text-decoration:none}
    .container{width:min(100%,var(--maxw));margin:0 auto;padding:0 20px}

    header{
      position:sticky;top:0;z-index:10;
      backdrop-filter:saturate(180%) blur(8px);
      background:color-mix(in srgb,var(--bg),transparent 12%);
      border-bottom:1px solid color-mix(in srgb,var(--text),transparent 92%);
    }
    .nav{display:flex;align-items:center;justify-content:space-between;padding:14px 0}
    .brand{display:inline-flex;align-items:center;gap:10px;font-weight:700}
    .brand-logo{
      width:28px;height:28px;border-radius:8px;
      background:linear-gradient(135deg,var(--accent),var(--accent-2));
      box-shadow:var(--shadow);
    }
    .links{display:flex;gap:16px}
    .links a{padding:8px 12px;border-radius:10px;opacity:.9}
    .links a:hover{background:color-mix(in srgb,var(--text),transparent 92%);opacity:1}
    .mobile-toggle{
      display:none;
      border:1px solid color-mix(in srgb,var(--text),transparent 85%);
      background:transparent;color:var(--text);
      padding:8px 10px;border-radius:10px;
    }
    @media (max-width:860px){
      .links{display:none}
      .mobile-toggle{display:inline-flex}
      .mobile-menu{display:none}
      .mobile-menu.open{
        display:grid;gap:12px;padding:12px;
        border-bottom:1px solid color-mix(in srgb,var(--text),transparent 90%);
      }
      .mobile-menu a{
        padding:10px 12px;border-radius:10px;
        background:color-mix(in srgb,var(--text),transparent 92%);
      }
    }

    .hero{padding:72px 0 28px}
    .hero .wrap{display:grid;grid-template-columns:1.2fr 1fr;gap:32px;align-items:center}
    @media (max-width:980px){.hero .wrap{grid-template-columns:1fr}}
    .eyebrow{
      display:inline-flex;gap:8px;align-items:center;
      padding:6px 10px;border-radius:999px;
      background:color-mix(in srgb,var(--text),transparent 92%);
      color:var(--muted);font-size:13px;
    }
    .eyebrow i{
      width:6px;height:6px;border-radius:999px;
      background:var(--accent);
      box-shadow:0 0 0 4px color-mix(in srgb,var(--accent),transparent 70%);
    }
    h1{
      font-size:clamp(34px,5.2vw,52px);
      line-height:1.08;
      margin:14px 0 8px;
      letter-spacing:-.02em;
    }
    p.lede{margin:0 0 22px;font-size:clamp(16px,2.2vw,18px);color:var(--muted)}
    .cta-row{display:flex;gap:12px;flex-wrap:wrap}
    .btn{
      display:inline-flex;align-items:center;gap:10px;
      border:1px solid transparent;
      padding:12px 16px;border-radius:12px;
      font-weight:600;cursor:pointer;
    }
    .btn.primary{
      background:linear-gradient(135deg,var(--accent),var(--accent-2));
      color:#0a0a0a;box-shadow:var(--shadow);
    }
    .btn.ghost{border-color:color-mix(in srgb,var(--text),transparent 85%)}

    section{padding:46px 0}
    .section-title{font-size:22px;margin:0 0 18px}
    .grid{display:grid;gap:18px;grid-template-columns:repeat(3,1fr)}
    @media (max-width:980px){.grid{grid-template-columns:1fr 1fr}}
    @media (max-width:640px){.grid{grid-template-columns:1fr}}

    .card{
      background:var(--card);
      border:1px solid color-mix(in srgb,var(--text),transparent 92%);
      border-radius:var(--radius);
      box-shadow:var(--shadow);
    }
    .two-col{display:grid;gap:16px;grid-template-columns:1fr 1fr}
    @media (max-width:860px){.two-col{grid-template-columns:1fr}}

    /* Habitats */
    .chipbar{display:flex;gap:8px;flex-wrap:wrap;margin-bottom:12px}
    .chip{
      border:1px solid color-mix(in srgb,var(--text),transparent 86%);
      padding:8px 12px;border-radius:999px;cursor:pointer;
    }
    .chip[aria-pressed="true"]{
      background:color-mix(in srgb,var(--accent),transparent 82%);
      border-color:var(--accent);
    }
    .habitat{padding:16px}
    .habitat .shot{
      width:100%;height:180px;border-radius:12px;
      border:1px solid color-mix(in srgb,var(--text),transparent 88%);
      object-fit:cover;display:block;
      background:linear-gradient(135deg,
        color-mix(in srgb,var(--accent),transparent 65%),
        color-mix(in srgb,var(--accent-2),transparent 65%));
    }

    footer{padding:28px 0 60px;color:var(--muted)}
    .footer-row{display:flex;gap:12px;justify-content:space-between;align-items:center;flex-wrap:wrap}
  </style>
</head>
<body>
  <header>
    <div class="container nav">
      <a class="brand" href="#home" aria-label="Home">
        <span class="brand-logo" aria-hidden="true"></span>
        <span>Grouse Guide</span>
      </a>
      <nav class="links" aria-label="Primary">
        <a href="#strategy">Strategy</a>
        <a href="#habitats">Habitats</a>
        <a href="#seasons">Seasons</a>
        <a href="#dog">Dog Work</a>
        <a href="#ethics">Safety</a>
      </nav>
      <button class="mobile-toggle" aria-expanded="false" aria-controls="mobile-menu">Menu</button>
    </div>
    <div id="mobile-menu" class="container mobile-menu" role="menu" aria-label="Mobile">
      <a role="menuitem" href="#strategy">Strategy</a>
      <a role="menuitem" href="#habitats">Habitats</a>
      <a role="menuitem" href="#seasons">Seasons</a>
      <a role="menuitem" href="#dog">Dog Work</a>
      <a role="menuitem" href="#ethics">Safety</a>
    </div>
  </header>

  <main id="home" class="container">
    <section class="hero">
      <div class="wrap">
        <div>
          <span class="eyebrow"><i></i> Maine ruffed grouse</span>
          <h1>Read a cover. Move like wind. Expect the flush.</h1>
          <p class="lede">
            A fast, no-nonsense field guide built from the basics: young forest, edges, and quiet feet.
            Use the filters, skim the cards, and take it to the woods.
          </p>
          <div class="cta-row">
            <a class="btn primary" href="#habitats">Start with habitats</a>
            <a class="btn ghost" href="#strategy">Hunt strategy</a>
          </div>
        </div>
      </div>
    </section>

    <section id="strategy">
      <h2 class="section-title">Strategy</h2>
      <div class="two-col">
        <div class="card" style="padding:16px">
          <h3 style="margin-top:0">Wind & Movement</h3>
          <ul>
            <li>Work <em>into</em> or across wind; slice likely objectives.</li>
            <li>Pause at blowdowns, berry runs, alder tangles.</li>
            <li>Two more steps after you think you’re past it.</li>
          </ul>
        </div>
        <div class="card" style="padding:16px">
          <h3 style="margin-top:0">Reading Sign</h3>
          <ul>
            <li>Tracks and droppings on skid roads tell time and direction.</li>
            <li>Bud-clipped twigs at head height = active feed.</li>
            <li>Shadow the shady side early season; conifer edges late.</li>
          </ul>
        </div>
      </div>
    </section>

    <section id="habitats">
      <h2 class="section-title">Habitats</h2>
      <div class="chipbar" role="toolbar" aria-label="Habitat filters">
        <button class="chip" data-tag="aspen" aria-pressed="false">Aspen/Poplar</button>
        <button class="chip" data-tag="alder" aria-pressed="false">Alder/Drains</button>
        <button class="chip" data-tag="spruce" aria-pressed="false">Spruce/Fir</button>
        <button class="chip" data-tag="edge" aria-pressed="false">Edges</button>
        <button class="chip" data-tag="midday" aria-pressed="false">Midday</button>
        <button class="chip" data-tag="roost" aria-pressed="false">Roost</button>
      </div>
      <div class="grid" id="habitatGrid"></div>
    </section>

    <section id="seasons">
      <h2 class="section-title">Seasons & Timing</h2>
      <div class="two-col">
        <div class="card" style="padding:16px">
          <h3 style="margin-top:0">Early season (leaves on)</h3>
          <ul>
            <li>Focus on loud edges and obvious regen.</li>
            <li>Creeks and seeps = cooler air + bugs.</li>
            <li>Expect tight holds and quick shots.</li>
          </ul>
        </div>
        <div class="card" style="padding:16px">
          <h3 style="margin-top:0">Late season (leaves down / snow)</h3>
          <ul>
            <li>Thermal cover near feed: spruce/fir edges by birch/aspen.</li>
            <li>Midday sun on south faces; birds loaf there.</li>
            <li>Slow, methodical dog work wins.</li>
          </ul>
        </div>
      </div>
    </section>

    <section id="dog">
      <h2 class="section-title">Dog Work</h2>
      <div class="two-col">
        <div class="card" style="padding:16px">
          <h3 style="margin-top:0">Reading your dog</h3>
          <ul>
            <li>Tail metronome → scent cone hit.</li>
            <li>Crabbing cross-wind → working cone edge.</li>
            <li>Frozen / slow ratchet → bird close; get ready.</li>
          </ul>
        </div>
        <div class="card" style="padding:16px">
          <h3 style="margin-top:0">Handler pace</h3>
          <ul>
            <li>Match range to cover. Thick = slower.</li>
            <li>Pause on objectives; create safe lanes.</li>
            <li>Let the dog solve; you set angles.</li>
          </ul>
        </div>
      </div>
    </section>

    <section id="ethics">
      <h2 class="section-title">Safety & Ethics</h2>
      <div class="card" style="padding:16px">
        <ul>
          <li>Know your target and what’s beyond. No low shots over dogs.</li>
          <li>Eye/ear protection; orange for every human.</li>
          <li>Respect landowners; pack out trash.</li>
          <li>Mind season dates, bag limits, and private land rules in Maine.</li>
        </ul>
      </div>
    </section>
  </main>

  <footer>
    <div class="container footer-row">
      <span>© <span id="year"></span> Grouse Guide • Maine</span>
      <a href="#home">Back to top ↑</a>
    </div>
  </footer>

  <script>
    // --- Header / navigation ---
    const toggle = document.querySelector('.mobile-toggle');
    const menu = document.getElementById('mobile-menu');
    if (toggle && menu) {
      toggle.addEventListener('click', () => {
        const open = menu.classList.toggle('open');
        toggle.setAttribute('aria-expanded', open ? 'true' : 'false');
      });
    }
    document.querySelectorAll('a[href^="#"]').forEach(a => {
      a.addEventListener('click', e => {
        const id = a.getAttribute('href');
        const el = id && document.querySelector(id);
        if (!el) return;
        e.preventDefault();
        el.scrollIntoView({ behavior: 'smooth', block: 'start' });
        menu && menu.classList.remove('open');
      });
    });

    // Footer year
    document.getElementById('year').textContent = new Date().getFullYear();

    // --- Habitat data ---
    const HABITATS = [
      {
        title:'Young Aspen/Poplar Regen (5–20 yrs)',
        tags:['aspen','edge'],
        blurb:'Broom-handle stems, high stem density, nearby softwood for winter. Classic flush cover.',
        how:[
          'Work cross-wind along the edge.',
          'Pause at blowdowns and berry runs.',
          'Watch for tracks/droppings on skid roads.'
        ],
        file:'aspen',
        alt:'Young aspen regeneration with dense stems in Maine'
      },
      {
        title:'Alder Runs & Wet Bottoms',
        tags:['alder','midday'],
        blurb:'Bugs, shade, and soft soils. Good on warm days and early season.',
        how:[
          'Trace the green seams parallel to water.',
          'Hit intersections of alder with hardwood regen.',
          'Expect tight-holding birds; shots are quick.'
        ],
        file:'alder',
        alt:'Alder thicket along a wet drainage'
      },
      {
        title:'Spruce/Fir Islands Next to Hardwoods',
        tags:['spruce','roost'],
        blurb:'Thermal cover and roost trees near feed (birch/aspen buds). Late-season money.',
        how:[
          'Hunt edges during midday sun.',
          'Check leeward sides when windy.',
          'Slow your dog; let them sort the cone.'
        ],
        file:'spruce',
        alt:'Spruce and fir mix in winter cover'
      },
      {
        title:'Old Logging Roads & Cuts',
        tags:['edge','midday'],
        blurb:'Travel lanes with food on both sides. Birds cross, loaf, and dust here.',
        how:[
          'Still-hunt the shady side.',
          'Work junctions and fresh skidder berms.',
          'Stop. Wait. Then take two more steps.'
        ],
        file:'logging-road',
        alt:'Old logging road bordered by young growth'
      },
      {
        title:'Mixed Hardwood Edges',
        tags:['edge'],
        blurb:'Transition lines between age classes. Birds love contrast and cover.',
        how:[
          'Run the seam, not the middle.',
          'Probe “points” and inward corners.',
          'Angle across wind to slice objectives.'
        ],
        file:'mixed-hardwood',
        alt:'Mixed hardwood edge with contrasting ages'
      },
      {
        title:'Snowy South Faces',
        tags:['spruce','roost','midday'],
        blurb:'Sun-warmed pockets where birds loaf and bud. Look for tracks and droppings.',
        how:[
          'Track first, then set up a cross-wind approach.',
          'Scan for bud-clipped twigs at head height.',
          'Expect delayed flushes from tight cover.'
        ],
        file:'south-face',
        alt:'South-facing slope with conifers and snow'
      }
    ];

    const grid = document.getElementById('habitatGrid');

    // Render all habitat cards
    function render(cards){
      grid.innerHTML = cards.map(h => `
        <article class="card habitat" data-tags="${(h.tags||[]).join(' ')}">
          <img
            class="shot"
            data-file="${h.file||''}"
            data-title="${h.title}"
            data-tags="${(h.tags||[]).join(',')}"
            alt="${h.alt || ''}"
            loading="lazy"
          />
          <h3>${h.title}</h3>
          <p>${h.blurb}</p>
          <details>
            <summary>How to work it</summary>
            <ul>${h.how.map(x=>`<li>${x}</li>`).join('')}</ul>
          </details>
        </article>
      `).join('');

      document.querySelectorAll('img.shot').forEach(img => {
        setImgSrc(img, {
          file: img.dataset.file,
          title: img.dataset.title,
          tags: (img.dataset.tags || '').split(',').filter(Boolean)
        });
      });
    }

    // Image resolver — tries multiple filename patterns, including GitHub's weird "images:aspen.jpeg"
    function setImgSrc(img, meta){
      const toSlug = (s) => (s || '')
        .toLowerCase()
        .replace(/&/g,' and ')
        .replace(/[^a-z0-9]+/g,'-')
        .replace(/^-+|-+$/g,'');

      const bases = [];
      if (meta.file) bases.push(meta.file);
      (meta.tags || []).forEach(t => { bases.push(t, toSlug(t)); });
      bases.push(toSlug(meta.title));

      const seen = new Set();
      const uniqueBases = bases.filter(b => {
        if (!b) return false;
        if (seen.has(b)) return false;
        seen.add(b);
        return true;
      });

      const makeVariants = (base) => [
        `images/${base}.jpg`,
        `images/${base}.jpeg`,
        `images/images:${base}.jpg`,
        `images/images:${base}.jpeg`,
        `images/images/${base}.jpg`,
        `images/images/${base}.jpeg`
      ];

      const variants = uniqueBases.flatMap(makeVariants);

      const placeholder = () => {
        img.style.display = 'none';
        const ph = document.createElement('div');
        ph.className = 'shot';
        img.parentElement.insertBefore(ph, img);
      };

      let i = 0;
      const tryNext = () => {
        if (i >= variants.length) { placeholder(); return; }
        const candidate = variants[i++];
        const probe = new Image();
        probe.onload = () => { img.src = candidate; };
        probe.onerror = tryNext;
        probe.src = candidate;
      };
      tryNext();
    }

    // Filter chips
    const chips = document.querySelectorAll('.chip');
    let active = new Set();

    chips.forEach(chip => chip.addEventListener('click', () => {
      const tag = chip.dataset.tag;
      const pressed = chip.getAttribute('aria-pressed') === 'true';
      chip.setAttribute('aria-pressed', pressed ? 'false' : 'true');
      pressed ? active.delete(tag) : active.add(tag);
      applyFilter();
    }));

    function applyFilter(){
      const cards = Array.from(grid.children);
      if (active.size === 0){
        cards.forEach(c => c.style.display = 'grid');
        return;
      }
      cards.forEach(c => {
        const tags = (c.dataset.tags || '').split(' ').filter(Boolean);
        const show = [...active].every(t => tags.includes(t));
        c.style.display = show ? 'grid' : 'none';
      });
    }

    // Minimal self-check in console
    (function selfTest(){
      console.assert(/20\d{2}/.test(document.getElementById('year').textContent), 'Footer year not set');
    })();

    // Kick everything off
    render(HABITATS);
  </script>
</body>
</html>
