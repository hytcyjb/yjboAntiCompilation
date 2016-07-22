.class public Lcom/facebook/imagepipeline/d/d;
.super Ljava/lang/Object;
.source "ImagePipelineConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/imagepipeline/d/d$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/facebook/imagepipeline/animated/a/b;

.field private final b:Landroid/graphics/Bitmap$Config;

.field private final c:Lcom/facebook/common/internal/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/internal/i",
            "<",
            "Lcom/facebook/imagepipeline/c/q;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/facebook/imagepipeline/c/f;

.field private final e:Landroid/content/Context;

.field private final f:Z

.field private final g:Z

.field private final h:Z

.field private final i:Z

.field private final j:Lcom/facebook/common/internal/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/internal/i",
            "<",
            "Lcom/facebook/imagepipeline/c/q;",
            ">;"
        }
    .end annotation
.end field

.field private final k:Lcom/facebook/imagepipeline/d/b;

.field private final l:Lcom/facebook/imagepipeline/c/n;

.field private final m:Lcom/facebook/imagepipeline/decoder/a;

.field private final n:Lcom/facebook/common/internal/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/internal/i",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final o:Lcom/facebook/cache/disk/c;

.field private final p:Lcom/facebook/common/memory/b;

.field private final q:Lcom/facebook/imagepipeline/producers/ad;

.field private final r:Lcom/facebook/imagepipeline/b/e;

.field private final s:Lcom/facebook/imagepipeline/memory/s;

.field private final t:Lcom/facebook/imagepipeline/decoder/b;

.field private final u:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/facebook/imagepipeline/g/b;",
            ">;"
        }
    .end annotation
.end field

.field private final v:Z

.field private final w:Lcom/facebook/cache/disk/c;


# direct methods
.method private constructor <init>(Lcom/facebook/imagepipeline/d/d$a;)V
    .locals 5
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    invoke-static {p1}, Lcom/facebook/imagepipeline/d/d$a;->a(Lcom/facebook/imagepipeline/d/d$a;)Lcom/facebook/imagepipeline/animated/a/b;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/d/d;->a:Lcom/facebook/imagepipeline/animated/a/b;

    .line 97
    invoke-static {p1}, Lcom/facebook/imagepipeline/d/d$a;->b(Lcom/facebook/imagepipeline/d/d$a;)Lcom/facebook/common/internal/i;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v1, Lcom/facebook/imagepipeline/c/i;

    .line 99
    invoke-static {p1}, Lcom/facebook/imagepipeline/d/d$a;->c(Lcom/facebook/imagepipeline/d/d$a;)Landroid/content/Context;

    move-result-object v0

    const-string v4, "activity"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-direct {v1, v0}, Lcom/facebook/imagepipeline/c/i;-><init>(Landroid/app/ActivityManager;)V

    move-object v0, v1

    .line 100
    :goto_0
    iput-object v0, p0, Lcom/facebook/imagepipeline/d/d;->c:Lcom/facebook/common/internal/i;

    .line 102
    invoke-static {p1}, Lcom/facebook/imagepipeline/d/d$a;->d(Lcom/facebook/imagepipeline/d/d$a;)Landroid/graphics/Bitmap$Config;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 104
    :goto_1
    iput-object v0, p0, Lcom/facebook/imagepipeline/d/d;->b:Landroid/graphics/Bitmap$Config;

    .line 106
    invoke-static {p1}, Lcom/facebook/imagepipeline/d/d$a;->e(Lcom/facebook/imagepipeline/d/d$a;)Lcom/facebook/imagepipeline/c/f;

    move-result-object v0

    if-nez v0, :cond_2

    .line 107
    invoke-static {}, Lcom/facebook/imagepipeline/c/j;->a()Lcom/facebook/imagepipeline/c/j;

    move-result-object v0

    .line 108
    :goto_2
    iput-object v0, p0, Lcom/facebook/imagepipeline/d/d;->d:Lcom/facebook/imagepipeline/c/f;

    .line 109
    invoke-static {p1}, Lcom/facebook/imagepipeline/d/d$a;->c(Lcom/facebook/imagepipeline/d/d$a;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/common/internal/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/facebook/imagepipeline/d/d;->e:Landroid/content/Context;

    .line 110
    invoke-static {p1}, Lcom/facebook/imagepipeline/d/d$a;->f(Lcom/facebook/imagepipeline/d/d$a;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 111
    invoke-static {p1}, Lcom/facebook/imagepipeline/d/d$a;->g(Lcom/facebook/imagepipeline/d/d$a;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v2

    :goto_3
    iput-boolean v0, p0, Lcom/facebook/imagepipeline/d/d;->h:Z

    .line 112
    invoke-static {p1}, Lcom/facebook/imagepipeline/d/d$a;->h(Lcom/facebook/imagepipeline/d/d$a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/imagepipeline/d/d;->i:Z

    .line 113
    invoke-static {p1}, Lcom/facebook/imagepipeline/d/d$a;->f(Lcom/facebook/imagepipeline/d/d$a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/imagepipeline/d/d;->f:Z

    .line 114
    invoke-static {p1}, Lcom/facebook/imagepipeline/d/d$a;->i(Lcom/facebook/imagepipeline/d/d$a;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-boolean v0, Lcom/facebook/common/h/b;->e:Z

    if-eqz v0, :cond_4

    :goto_4
    iput-boolean v2, p0, Lcom/facebook/imagepipeline/d/d;->g:Z

    .line 116
    invoke-static {p1}, Lcom/facebook/imagepipeline/d/d$a;->j(Lcom/facebook/imagepipeline/d/d$a;)Lcom/facebook/common/internal/i;

    move-result-object v0

    if-nez v0, :cond_5

    new-instance v0, Lcom/facebook/imagepipeline/c/k;

    invoke-direct {v0}, Lcom/facebook/imagepipeline/c/k;-><init>()V

    .line 118
    :goto_5
    iput-object v0, p0, Lcom/facebook/imagepipeline/d/d;->j:Lcom/facebook/common/internal/i;

    .line 120
    invoke-static {p1}, Lcom/facebook/imagepipeline/d/d$a;->k(Lcom/facebook/imagepipeline/d/d$a;)Lcom/facebook/imagepipeline/c/n;

    move-result-object v0

    if-nez v0, :cond_6

    .line 121
    invoke-static {}, Lcom/facebook/imagepipeline/c/t;->l()Lcom/facebook/imagepipeline/c/t;

    move-result-object v0

    .line 122
    :goto_6
    iput-object v0, p0, Lcom/facebook/imagepipeline/d/d;->l:Lcom/facebook/imagepipeline/c/n;

    .line 123
    invoke-static {p1}, Lcom/facebook/imagepipeline/d/d$a;->l(Lcom/facebook/imagepipeline/d/d$a;)Lcom/facebook/imagepipeline/decoder/a;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/d/d;->m:Lcom/facebook/imagepipeline/decoder/a;

    .line 125
    invoke-static {p1}, Lcom/facebook/imagepipeline/d/d$a;->m(Lcom/facebook/imagepipeline/d/d$a;)Lcom/facebook/common/internal/i;

    move-result-object v0

    if-nez v0, :cond_7

    new-instance v0, Lcom/facebook/imagepipeline/d/d$1;

    invoke-direct {v0, p0}, Lcom/facebook/imagepipeline/d/d$1;-><init>(Lcom/facebook/imagepipeline/d/d;)V

    .line 132
    :goto_7
    iput-object v0, p0, Lcom/facebook/imagepipeline/d/d;->n:Lcom/facebook/common/internal/i;

    .line 134
    invoke-static {p1}, Lcom/facebook/imagepipeline/d/d$a;->n(Lcom/facebook/imagepipeline/d/d$a;)Lcom/facebook/cache/disk/c;

    move-result-object v0

    if-nez v0, :cond_8

    .line 135
    invoke-static {p1}, Lcom/facebook/imagepipeline/d/d$a;->c(Lcom/facebook/imagepipeline/d/d$a;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/imagepipeline/d/d;->b(Landroid/content/Context;)Lcom/facebook/cache/disk/c;

    move-result-object v0

    .line 136
    :goto_8
    iput-object v0, p0, Lcom/facebook/imagepipeline/d/d;->o:Lcom/facebook/cache/disk/c;

    .line 138
    invoke-static {p1}, Lcom/facebook/imagepipeline/d/d$a;->o(Lcom/facebook/imagepipeline/d/d$a;)Lcom/facebook/common/memory/b;

    move-result-object v0

    if-nez v0, :cond_9

    .line 139
    invoke-static {}, Lcom/facebook/common/memory/c;->a()Lcom/facebook/common/memory/c;

    move-result-object v0

    .line 140
    :goto_9
    iput-object v0, p0, Lcom/facebook/imagepipeline/d/d;->p:Lcom/facebook/common/memory/b;

    .line 142
    invoke-static {p1}, Lcom/facebook/imagepipeline/d/d$a;->p(Lcom/facebook/imagepipeline/d/d$a;)Lcom/facebook/imagepipeline/producers/ad;

    move-result-object v0

    if-nez v0, :cond_a

    new-instance v0, Lcom/facebook/imagepipeline/producers/s;

    invoke-direct {v0}, Lcom/facebook/imagepipeline/producers/s;-><init>()V

    .line 144
    :goto_a
    iput-object v0, p0, Lcom/facebook/imagepipeline/d/d;->q:Lcom/facebook/imagepipeline/producers/ad;

    .line 145
    invoke-static {p1}, Lcom/facebook/imagepipeline/d/d$a;->q(Lcom/facebook/imagepipeline/d/d$a;)Lcom/facebook/imagepipeline/b/e;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/d/d;->r:Lcom/facebook/imagepipeline/b/e;

    .line 147
    invoke-static {p1}, Lcom/facebook/imagepipeline/d/d$a;->r(Lcom/facebook/imagepipeline/d/d$a;)Lcom/facebook/imagepipeline/memory/s;

    move-result-object v0

    if-nez v0, :cond_b

    new-instance v0, Lcom/facebook/imagepipeline/memory/s;

    .line 148
    invoke-static {}, Lcom/facebook/imagepipeline/memory/r;->i()Lcom/facebook/imagepipeline/memory/r$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/imagepipeline/memory/r$a;->a()Lcom/facebook/imagepipeline/memory/r;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/imagepipeline/memory/s;-><init>(Lcom/facebook/imagepipeline/memory/r;)V

    .line 149
    :goto_b
    iput-object v0, p0, Lcom/facebook/imagepipeline/d/d;->s:Lcom/facebook/imagepipeline/memory/s;

    .line 151
    invoke-static {p1}, Lcom/facebook/imagepipeline/d/d$a;->s(Lcom/facebook/imagepipeline/d/d$a;)Lcom/facebook/imagepipeline/decoder/b;

    move-result-object v0

    if-nez v0, :cond_c

    new-instance v0, Lcom/facebook/imagepipeline/decoder/d;

    invoke-direct {v0}, Lcom/facebook/imagepipeline/decoder/d;-><init>()V

    .line 153
    :goto_c
    iput-object v0, p0, Lcom/facebook/imagepipeline/d/d;->t:Lcom/facebook/imagepipeline/decoder/b;

    .line 155
    invoke-static {p1}, Lcom/facebook/imagepipeline/d/d$a;->t(Lcom/facebook/imagepipeline/d/d$a;)Ljava/util/Set;

    move-result-object v0

    if-nez v0, :cond_d

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 157
    :goto_d
    iput-object v0, p0, Lcom/facebook/imagepipeline/d/d;->u:Ljava/util/Set;

    .line 158
    invoke-static {p1}, Lcom/facebook/imagepipeline/d/d$a;->u(Lcom/facebook/imagepipeline/d/d$a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/imagepipeline/d/d;->v:Z

    .line 160
    invoke-static {p1}, Lcom/facebook/imagepipeline/d/d$a;->v(Lcom/facebook/imagepipeline/d/d$a;)Lcom/facebook/cache/disk/c;

    move-result-object v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/facebook/imagepipeline/d/d;->o:Lcom/facebook/cache/disk/c;

    .line 162
    :goto_e
    iput-object v0, p0, Lcom/facebook/imagepipeline/d/d;->w:Lcom/facebook/cache/disk/c;

    .line 165
    iget-object v0, p0, Lcom/facebook/imagepipeline/d/d;->s:Lcom/facebook/imagepipeline/memory/s;

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/memory/s;->c()I

    move-result v1

    .line 167
    invoke-static {p1}, Lcom/facebook/imagepipeline/d/d$a;->w(Lcom/facebook/imagepipeline/d/d$a;)Lcom/facebook/imagepipeline/d/b;

    move-result-object v0

    if-nez v0, :cond_f

    new-instance v0, Lcom/facebook/imagepipeline/d/a;

    invoke-direct {v0, v1}, Lcom/facebook/imagepipeline/d/a;-><init>(I)V

    .line 168
    :goto_f
    iput-object v0, p0, Lcom/facebook/imagepipeline/d/d;->k:Lcom/facebook/imagepipeline/d/b;

    .line 169
    return-void

    .line 100
    :cond_0
    invoke-static {p1}, Lcom/facebook/imagepipeline/d/d$a;->b(Lcom/facebook/imagepipeline/d/d$a;)Lcom/facebook/common/internal/i;

    move-result-object v0

    goto/16 :goto_0

    .line 104
    :cond_1
    invoke-static {p1}, Lcom/facebook/imagepipeline/d/d$a;->d(Lcom/facebook/imagepipeline/d/d$a;)Landroid/graphics/Bitmap$Config;

    move-result-object v0

    goto/16 :goto_1

    .line 108
    :cond_2
    invoke-static {p1}, Lcom/facebook/imagepipeline/d/d$a;->e(Lcom/facebook/imagepipeline/d/d$a;)Lcom/facebook/imagepipeline/c/f;

    move-result-object v0

    goto/16 :goto_2

    :cond_3
    move v0, v3

    .line 111
    goto/16 :goto_3

    :cond_4
    move v2, v3

    .line 114
    goto/16 :goto_4

    .line 118
    :cond_5
    invoke-static {p1}, Lcom/facebook/imagepipeline/d/d$a;->j(Lcom/facebook/imagepipeline/d/d$a;)Lcom/facebook/common/internal/i;

    move-result-object v0

    goto/16 :goto_5

    .line 122
    :cond_6
    invoke-static {p1}, Lcom/facebook/imagepipeline/d/d$a;->k(Lcom/facebook/imagepipeline/d/d$a;)Lcom/facebook/imagepipeline/c/n;

    move-result-object v0

    goto/16 :goto_6

    .line 132
    :cond_7
    invoke-static {p1}, Lcom/facebook/imagepipeline/d/d$a;->m(Lcom/facebook/imagepipeline/d/d$a;)Lcom/facebook/common/internal/i;

    move-result-object v0

    goto/16 :goto_7

    .line 136
    :cond_8
    invoke-static {p1}, Lcom/facebook/imagepipeline/d/d$a;->n(Lcom/facebook/imagepipeline/d/d$a;)Lcom/facebook/cache/disk/c;

    move-result-object v0

    goto/16 :goto_8

    .line 140
    :cond_9
    invoke-static {p1}, Lcom/facebook/imagepipeline/d/d$a;->o(Lcom/facebook/imagepipeline/d/d$a;)Lcom/facebook/common/memory/b;

    move-result-object v0

    goto/16 :goto_9

    .line 144
    :cond_a
    invoke-static {p1}, Lcom/facebook/imagepipeline/d/d$a;->p(Lcom/facebook/imagepipeline/d/d$a;)Lcom/facebook/imagepipeline/producers/ad;

    move-result-object v0

    goto/16 :goto_a

    .line 149
    :cond_b
    invoke-static {p1}, Lcom/facebook/imagepipeline/d/d$a;->r(Lcom/facebook/imagepipeline/d/d$a;)Lcom/facebook/imagepipeline/memory/s;

    move-result-object v0

    goto :goto_b

    .line 153
    :cond_c
    invoke-static {p1}, Lcom/facebook/imagepipeline/d/d$a;->s(Lcom/facebook/imagepipeline/d/d$a;)Lcom/facebook/imagepipeline/decoder/b;

    move-result-object v0

    goto :goto_c

    .line 157
    :cond_d
    invoke-static {p1}, Lcom/facebook/imagepipeline/d/d$a;->t(Lcom/facebook/imagepipeline/d/d$a;)Ljava/util/Set;

    move-result-object v0

    goto :goto_d

    .line 162
    :cond_e
    invoke-static {p1}, Lcom/facebook/imagepipeline/d/d$a;->v(Lcom/facebook/imagepipeline/d/d$a;)Lcom/facebook/cache/disk/c;

    move-result-object v0

    goto :goto_e

    .line 168
    :cond_f
    invoke-static {p1}, Lcom/facebook/imagepipeline/d/d$a;->w(Lcom/facebook/imagepipeline/d/d$a;)Lcom/facebook/imagepipeline/d/b;

    move-result-object v0

    goto :goto_f
.end method

.method synthetic constructor <init>(Lcom/facebook/imagepipeline/d/d$a;Lcom/facebook/imagepipeline/d/d$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/d/d;-><init>(Lcom/facebook/imagepipeline/d/d$a;)V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/facebook/imagepipeline/d/d$a;
    .locals 2
    .parameter

    .prologue
    .line 271
    new-instance v0, Lcom/facebook/imagepipeline/d/d$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/imagepipeline/d/d$a;-><init>(Landroid/content/Context;Lcom/facebook/imagepipeline/d/d$1;)V

    return-object v0
.end method

.method private static b(Landroid/content/Context;)Lcom/facebook/cache/disk/c;
    .locals 1
    .parameter

    .prologue
    .line 172
    invoke-static {p0}, Lcom/facebook/cache/disk/c;->a(Landroid/content/Context;)Lcom/facebook/cache/disk/c$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/cache/disk/c$a;->a()Lcom/facebook/cache/disk/c;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()Lcom/facebook/imagepipeline/animated/a/b;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/facebook/imagepipeline/d/d;->a:Lcom/facebook/imagepipeline/animated/a/b;

    return-object v0
.end method

.method public b()Landroid/graphics/Bitmap$Config;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/facebook/imagepipeline/d/d;->b:Landroid/graphics/Bitmap$Config;

    return-object v0
.end method

.method public c()Lcom/facebook/common/internal/i;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/common/internal/i",
            "<",
            "Lcom/facebook/imagepipeline/c/q;",
            ">;"
        }
    .end annotation

    .prologue
    .line 185
    iget-object v0, p0, Lcom/facebook/imagepipeline/d/d;->c:Lcom/facebook/common/internal/i;

    return-object v0
.end method

.method public d()Lcom/facebook/imagepipeline/c/f;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/facebook/imagepipeline/d/d;->d:Lcom/facebook/imagepipeline/c/f;

    return-object v0
.end method

.method public e()Landroid/content/Context;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/facebook/imagepipeline/d/d;->e:Landroid/content/Context;

    return-object v0
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 197
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/d/d;->h:Z

    return v0
.end method

.method public g()Z
    .locals 1

    .prologue
    .line 201
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/d/d;->i:Z

    return v0
.end method

.method public h()Z
    .locals 1

    .prologue
    .line 205
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/d/d;->f:Z

    return v0
.end method

.method public i()Z
    .locals 1

    .prologue
    .line 209
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/d/d;->g:Z

    return v0
.end method

.method public j()Lcom/facebook/common/internal/i;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/common/internal/i",
            "<",
            "Lcom/facebook/imagepipeline/c/q;",
            ">;"
        }
    .end annotation

    .prologue
    .line 213
    iget-object v0, p0, Lcom/facebook/imagepipeline/d/d;->j:Lcom/facebook/common/internal/i;

    return-object v0
.end method

.method public k()Lcom/facebook/imagepipeline/d/b;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/facebook/imagepipeline/d/d;->k:Lcom/facebook/imagepipeline/d/b;

    return-object v0
.end method

.method public l()Lcom/facebook/imagepipeline/c/n;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/facebook/imagepipeline/d/d;->l:Lcom/facebook/imagepipeline/c/n;

    return-object v0
.end method

.method public m()Lcom/facebook/imagepipeline/decoder/a;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/facebook/imagepipeline/d/d;->m:Lcom/facebook/imagepipeline/decoder/a;

    return-object v0
.end method

.method public n()Lcom/facebook/common/internal/i;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/common/internal/i",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 230
    iget-object v0, p0, Lcom/facebook/imagepipeline/d/d;->n:Lcom/facebook/common/internal/i;

    return-object v0
.end method

.method public o()Lcom/facebook/cache/disk/c;
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/facebook/imagepipeline/d/d;->o:Lcom/facebook/cache/disk/c;

    return-object v0
.end method

.method public p()Lcom/facebook/common/memory/b;
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/facebook/imagepipeline/d/d;->p:Lcom/facebook/common/memory/b;

    return-object v0
.end method

.method public q()Lcom/facebook/imagepipeline/producers/ad;
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/facebook/imagepipeline/d/d;->q:Lcom/facebook/imagepipeline/producers/ad;

    return-object v0
.end method

.method public r()Lcom/facebook/imagepipeline/memory/s;
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/facebook/imagepipeline/d/d;->s:Lcom/facebook/imagepipeline/memory/s;

    return-object v0
.end method

.method public s()Lcom/facebook/imagepipeline/decoder/b;
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/facebook/imagepipeline/d/d;->t:Lcom/facebook/imagepipeline/decoder/b;

    return-object v0
.end method

.method public t()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/facebook/imagepipeline/g/b;",
            ">;"
        }
    .end annotation

    .prologue
    .line 259
    iget-object v0, p0, Lcom/facebook/imagepipeline/d/d;->u:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public u()Z
    .locals 1

    .prologue
    .line 263
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/d/d;->v:Z

    return v0
.end method

.method public v()Lcom/facebook/cache/disk/c;
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lcom/facebook/imagepipeline/d/d;->w:Lcom/facebook/cache/disk/c;

    return-object v0
.end method
