.class public Lcom/facebook/imagepipeline/d/d$a;
.super Ljava/lang/Object;
.source "ImagePipelineConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/imagepipeline/d/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Lcom/facebook/imagepipeline/animated/a/b;

.field private b:Landroid/graphics/Bitmap$Config;

.field private c:Lcom/facebook/common/internal/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/internal/i",
            "<",
            "Lcom/facebook/imagepipeline/c/q;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/facebook/imagepipeline/c/f;

.field private final e:Landroid/content/Context;

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Lcom/facebook/common/internal/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/internal/i",
            "<",
            "Lcom/facebook/imagepipeline/c/q;",
            ">;"
        }
    .end annotation
.end field

.field private k:Lcom/facebook/imagepipeline/d/b;

.field private l:Lcom/facebook/imagepipeline/c/n;

.field private m:Lcom/facebook/imagepipeline/decoder/a;

.field private n:Lcom/facebook/common/internal/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/internal/i",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private o:Lcom/facebook/cache/disk/c;

.field private p:Lcom/facebook/common/memory/b;

.field private q:Lcom/facebook/imagepipeline/producers/ad;

.field private r:Lcom/facebook/imagepipeline/b/e;

.field private s:Lcom/facebook/imagepipeline/memory/s;

.field private t:Lcom/facebook/imagepipeline/decoder/b;

.field private u:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/facebook/imagepipeline/g/b;",
            ">;"
        }
    .end annotation
.end field

.field private v:Z

.field private w:Lcom/facebook/cache/disk/c;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 300
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 281
    iput-boolean v0, p0, Lcom/facebook/imagepipeline/d/d$a;->f:Z

    .line 282
    iput-boolean v0, p0, Lcom/facebook/imagepipeline/d/d$a;->g:Z

    .line 283
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/d/d$a;->f:Z

    iput-boolean v0, p0, Lcom/facebook/imagepipeline/d/d$a;->h:Z

    .line 297
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/imagepipeline/d/d$a;->v:Z

    .line 302
    invoke-static {p1}, Lcom/facebook/common/internal/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/facebook/imagepipeline/d/d$a;->e:Landroid/content/Context;

    .line 303
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/facebook/imagepipeline/d/d$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 274
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/d/d$a;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/imagepipeline/d/d$a;)Lcom/facebook/imagepipeline/animated/a/b;
    .locals 1
    .parameter

    .prologue
    .line 274
    iget-object v0, p0, Lcom/facebook/imagepipeline/d/d$a;->a:Lcom/facebook/imagepipeline/animated/a/b;

    return-object v0
.end method

.method static synthetic b(Lcom/facebook/imagepipeline/d/d$a;)Lcom/facebook/common/internal/i;
    .locals 1
    .parameter

    .prologue
    .line 274
    iget-object v0, p0, Lcom/facebook/imagepipeline/d/d$a;->c:Lcom/facebook/common/internal/i;

    return-object v0
.end method

.method static synthetic c(Lcom/facebook/imagepipeline/d/d$a;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 274
    iget-object v0, p0, Lcom/facebook/imagepipeline/d/d$a;->e:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic d(Lcom/facebook/imagepipeline/d/d$a;)Landroid/graphics/Bitmap$Config;
    .locals 1
    .parameter

    .prologue
    .line 274
    iget-object v0, p0, Lcom/facebook/imagepipeline/d/d$a;->b:Landroid/graphics/Bitmap$Config;

    return-object v0
.end method

.method static synthetic e(Lcom/facebook/imagepipeline/d/d$a;)Lcom/facebook/imagepipeline/c/f;
    .locals 1
    .parameter

    .prologue
    .line 274
    iget-object v0, p0, Lcom/facebook/imagepipeline/d/d$a;->d:Lcom/facebook/imagepipeline/c/f;

    return-object v0
.end method

.method static synthetic f(Lcom/facebook/imagepipeline/d/d$a;)Z
    .locals 1
    .parameter

    .prologue
    .line 274
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/d/d$a;->f:Z

    return v0
.end method

.method static synthetic g(Lcom/facebook/imagepipeline/d/d$a;)Z
    .locals 1
    .parameter

    .prologue
    .line 274
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/d/d$a;->h:Z

    return v0
.end method

.method static synthetic h(Lcom/facebook/imagepipeline/d/d$a;)Z
    .locals 1
    .parameter

    .prologue
    .line 274
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/d/d$a;->i:Z

    return v0
.end method

.method static synthetic i(Lcom/facebook/imagepipeline/d/d$a;)Z
    .locals 1
    .parameter

    .prologue
    .line 274
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/d/d$a;->g:Z

    return v0
.end method

.method static synthetic j(Lcom/facebook/imagepipeline/d/d$a;)Lcom/facebook/common/internal/i;
    .locals 1
    .parameter

    .prologue
    .line 274
    iget-object v0, p0, Lcom/facebook/imagepipeline/d/d$a;->j:Lcom/facebook/common/internal/i;

    return-object v0
.end method

.method static synthetic k(Lcom/facebook/imagepipeline/d/d$a;)Lcom/facebook/imagepipeline/c/n;
    .locals 1
    .parameter

    .prologue
    .line 274
    iget-object v0, p0, Lcom/facebook/imagepipeline/d/d$a;->l:Lcom/facebook/imagepipeline/c/n;

    return-object v0
.end method

.method static synthetic l(Lcom/facebook/imagepipeline/d/d$a;)Lcom/facebook/imagepipeline/decoder/a;
    .locals 1
    .parameter

    .prologue
    .line 274
    iget-object v0, p0, Lcom/facebook/imagepipeline/d/d$a;->m:Lcom/facebook/imagepipeline/decoder/a;

    return-object v0
.end method

.method static synthetic m(Lcom/facebook/imagepipeline/d/d$a;)Lcom/facebook/common/internal/i;
    .locals 1
    .parameter

    .prologue
    .line 274
    iget-object v0, p0, Lcom/facebook/imagepipeline/d/d$a;->n:Lcom/facebook/common/internal/i;

    return-object v0
.end method

.method static synthetic n(Lcom/facebook/imagepipeline/d/d$a;)Lcom/facebook/cache/disk/c;
    .locals 1
    .parameter

    .prologue
    .line 274
    iget-object v0, p0, Lcom/facebook/imagepipeline/d/d$a;->o:Lcom/facebook/cache/disk/c;

    return-object v0
.end method

.method static synthetic o(Lcom/facebook/imagepipeline/d/d$a;)Lcom/facebook/common/memory/b;
    .locals 1
    .parameter

    .prologue
    .line 274
    iget-object v0, p0, Lcom/facebook/imagepipeline/d/d$a;->p:Lcom/facebook/common/memory/b;

    return-object v0
.end method

.method static synthetic p(Lcom/facebook/imagepipeline/d/d$a;)Lcom/facebook/imagepipeline/producers/ad;
    .locals 1
    .parameter

    .prologue
    .line 274
    iget-object v0, p0, Lcom/facebook/imagepipeline/d/d$a;->q:Lcom/facebook/imagepipeline/producers/ad;

    return-object v0
.end method

.method static synthetic q(Lcom/facebook/imagepipeline/d/d$a;)Lcom/facebook/imagepipeline/b/e;
    .locals 1
    .parameter

    .prologue
    .line 274
    iget-object v0, p0, Lcom/facebook/imagepipeline/d/d$a;->r:Lcom/facebook/imagepipeline/b/e;

    return-object v0
.end method

.method static synthetic r(Lcom/facebook/imagepipeline/d/d$a;)Lcom/facebook/imagepipeline/memory/s;
    .locals 1
    .parameter

    .prologue
    .line 274
    iget-object v0, p0, Lcom/facebook/imagepipeline/d/d$a;->s:Lcom/facebook/imagepipeline/memory/s;

    return-object v0
.end method

.method static synthetic s(Lcom/facebook/imagepipeline/d/d$a;)Lcom/facebook/imagepipeline/decoder/b;
    .locals 1
    .parameter

    .prologue
    .line 274
    iget-object v0, p0, Lcom/facebook/imagepipeline/d/d$a;->t:Lcom/facebook/imagepipeline/decoder/b;

    return-object v0
.end method

.method static synthetic t(Lcom/facebook/imagepipeline/d/d$a;)Ljava/util/Set;
    .locals 1
    .parameter

    .prologue
    .line 274
    iget-object v0, p0, Lcom/facebook/imagepipeline/d/d$a;->u:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic u(Lcom/facebook/imagepipeline/d/d$a;)Z
    .locals 1
    .parameter

    .prologue
    .line 274
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/d/d$a;->v:Z

    return v0
.end method

.method static synthetic v(Lcom/facebook/imagepipeline/d/d$a;)Lcom/facebook/cache/disk/c;
    .locals 1
    .parameter

    .prologue
    .line 274
    iget-object v0, p0, Lcom/facebook/imagepipeline/d/d$a;->w:Lcom/facebook/cache/disk/c;

    return-object v0
.end method

.method static synthetic w(Lcom/facebook/imagepipeline/d/d$a;)Lcom/facebook/imagepipeline/d/b;
    .locals 1
    .parameter

    .prologue
    .line 274
    iget-object v0, p0, Lcom/facebook/imagepipeline/d/d$a;->k:Lcom/facebook/imagepipeline/d/b;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/facebook/cache/disk/c;)Lcom/facebook/imagepipeline/d/d$a;
    .locals 0
    .parameter

    .prologue
    .line 375
    iput-object p1, p0, Lcom/facebook/imagepipeline/d/d$a;->o:Lcom/facebook/cache/disk/c;

    .line 376
    return-object p0
.end method

.method public a(Lcom/facebook/imagepipeline/producers/ad;)Lcom/facebook/imagepipeline/d/d$a;
    .locals 0
    .parameter

    .prologue
    .line 385
    iput-object p1, p0, Lcom/facebook/imagepipeline/d/d$a;->q:Lcom/facebook/imagepipeline/producers/ad;

    .line 386
    return-object p0
.end method

.method public a()Lcom/facebook/imagepipeline/d/d;
    .locals 2

    .prologue
    .line 420
    new-instance v0, Lcom/facebook/imagepipeline/d/d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/imagepipeline/d/d;-><init>(Lcom/facebook/imagepipeline/d/d$a;Lcom/facebook/imagepipeline/d/d$1;)V

    return-object v0
.end method
