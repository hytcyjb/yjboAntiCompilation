.class public Landroid/support/v4/app/n;
.super Ljava/lang/Object;
.source "FragmentController.java"


# instance fields
.field private final a:Landroid/support/v4/app/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/app/o",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/support/v4/app/o;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/o",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Landroid/support/v4/app/n;->a:Landroid/support/v4/app/o;

    .line 53
    return-void
.end method

.method public static final a(Landroid/support/v4/app/o;)Landroid/support/v4/app/n;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/o",
            "<*>;)",
            "Landroid/support/v4/app/n;"
        }
    .end annotation

    .prologue
    .line 48
    new-instance v0, Landroid/support/v4/app/n;

    invoke-direct {v0, p0}, Landroid/support/v4/app/n;-><init>(Landroid/support/v4/app/o;)V

    return-object v0
.end method


# virtual methods
.method a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    .locals 1
    .parameter

    .prologue
    .line 74
    iget-object v0, p0, Landroid/support/v4/app/n;->a:Landroid/support/v4/app/o;

    iget-object v0, v0, Landroid/support/v4/app/o;->d:Landroid/support/v4/app/q;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/q;->b(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method public a()Landroid/support/v4/app/p;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Landroid/support/v4/app/n;->a:Landroid/support/v4/app/o;

    invoke-virtual {v0}, Landroid/support/v4/app/o;->k()Landroid/support/v4/app/q;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 120
    iget-object v0, p0, Landroid/support/v4/app/n;->a:Landroid/support/v4/app/o;

    iget-object v0, v0, Landroid/support/v4/app/o;->d:Landroid/support/v4/app/q;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/support/v4/app/q;->a(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 89
    iget-object v0, p0, Landroid/support/v4/app/n;->a:Landroid/support/v4/app/o;

    iget-object v0, v0, Landroid/support/v4/app/o;->d:Landroid/support/v4/app/q;

    iget-object v0, v0, Landroid/support/v4/app/q;->f:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 90
    const/4 p1, 0x0

    .line 96
    :goto_0
    return-object p1

    .line 92
    :cond_0
    if-nez p1, :cond_1

    .line 93
    new-instance p1, Ljava/util/ArrayList;

    invoke-virtual {p0}, Landroid/support/v4/app/n;->b()I

    move-result v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 95
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/n;->a:Landroid/support/v4/app/o;

    iget-object v0, v0, Landroid/support/v4/app/o;->d:Landroid/support/v4/app/q;

    iget-object v0, v0, Landroid/support/v4/app/q;->f:Ljava/util/ArrayList;

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method public a(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter

    .prologue
    .line 255
    iget-object v0, p0, Landroid/support/v4/app/n;->a:Landroid/support/v4/app/o;

    iget-object v0, v0, Landroid/support/v4/app/o;->d:Landroid/support/v4/app/q;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/q;->a(Landroid/content/res/Configuration;)V

    .line 256
    return-void
.end method

.method public a(Landroid/os/Parcelable;Ljava/util/List;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcelable;",
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 144
    iget-object v0, p0, Landroid/support/v4/app/n;->a:Landroid/support/v4/app/o;

    iget-object v0, v0, Landroid/support/v4/app/o;->d:Landroid/support/v4/app/q;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/app/q;->a(Landroid/os/Parcelable;Ljava/util/List;)V

    .line 145
    return-void
.end method

.method public a(Landroid/support/v4/app/Fragment;)V
    .locals 3
    .parameter

    .prologue
    .line 104
    iget-object v0, p0, Landroid/support/v4/app/n;->a:Landroid/support/v4/app/o;

    iget-object v0, v0, Landroid/support/v4/app/o;->d:Landroid/support/v4/app/q;

    iget-object v1, p0, Landroid/support/v4/app/n;->a:Landroid/support/v4/app/o;

    iget-object v2, p0, Landroid/support/v4/app/n;->a:Landroid/support/v4/app/o;

    invoke-virtual {v0, v1, v2, p1}, Landroid/support/v4/app/q;->a(Landroid/support/v4/app/o;Landroid/support/v4/app/m;Landroid/support/v4/app/Fragment;)V

    .line 106
    return-void
.end method

.method public a(Landroid/support/v4/e/i;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/e/i",
            "<",
            "Ljava/lang/String;",
            "Landroid/support/v4/app/w;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 396
    iget-object v0, p0, Landroid/support/v4/app/n;->a:Landroid/support/v4/app/o;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/o;->a(Landroid/support/v4/e/i;)V

    .line 397
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 403
    iget-object v0, p0, Landroid/support/v4/app/n;->a:Landroid/support/v4/app/o;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/support/v4/app/o;->b(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 404
    return-void
.end method

.method public a(Z)V
    .locals 1
    .parameter

    .prologue
    .line 357
    iget-object v0, p0, Landroid/support/v4/app/n;->a:Landroid/support/v4/app/o;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/o;->a(Z)V

    .line 358
    return-void
.end method

.method public a(Landroid/view/Menu;)Z
    .locals 1
    .parameter

    .prologue
    .line 291
    iget-object v0, p0, Landroid/support/v4/app/n;->a:Landroid/support/v4/app/o;

    iget-object v0, v0, Landroid/support/v4/app/o;->d:Landroid/support/v4/app/q;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/q;->a(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public a(Landroid/view/Menu;Landroid/view/MenuInflater;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 279
    iget-object v0, p0, Landroid/support/v4/app/n;->a:Landroid/support/v4/app/o;

    iget-object v0, v0, Landroid/support/v4/app/o;->d:Landroid/support/v4/app/q;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/app/q;->a(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result v0

    return v0
.end method

.method public a(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter

    .prologue
    .line 304
    iget-object v0, p0, Landroid/support/v4/app/n;->a:Landroid/support/v4/app/o;

    iget-object v0, v0, Landroid/support/v4/app/o;->d:Landroid/support/v4/app/q;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/q;->a(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Landroid/support/v4/app/n;->a:Landroid/support/v4/app/o;

    iget-object v0, v0, Landroid/support/v4/app/o;->d:Landroid/support/v4/app/q;

    iget-object v0, v0, Landroid/support/v4/app/q;->f:Ljava/util/ArrayList;

    .line 82
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public b(Landroid/view/Menu;)V
    .locals 1
    .parameter

    .prologue
    .line 328
    iget-object v0, p0, Landroid/support/v4/app/n;->a:Landroid/support/v4/app/o;

    iget-object v0, v0, Landroid/support/v4/app/o;->d:Landroid/support/v4/app/q;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/q;->b(Landroid/view/Menu;)V

    .line 329
    return-void
.end method

.method public b(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter

    .prologue
    .line 317
    iget-object v0, p0, Landroid/support/v4/app/n;->a:Landroid/support/v4/app/o;

    iget-object v0, v0, Landroid/support/v4/app/o;->d:Landroid/support/v4/app/q;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/q;->b(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public c()V
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Landroid/support/v4/app/n;->a:Landroid/support/v4/app/o;

    iget-object v0, v0, Landroid/support/v4/app/o;->d:Landroid/support/v4/app/q;

    invoke-virtual {v0}, Landroid/support/v4/app/q;->k()V

    .line 128
    return-void
.end method

.method public d()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Landroid/support/v4/app/n;->a:Landroid/support/v4/app/o;

    iget-object v0, v0, Landroid/support/v4/app/o;->d:Landroid/support/v4/app/q;

    invoke-virtual {v0}, Landroid/support/v4/app/q;->j()Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

.method public e()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 152
    iget-object v0, p0, Landroid/support/v4/app/n;->a:Landroid/support/v4/app/o;

    iget-object v0, v0, Landroid/support/v4/app/o;->d:Landroid/support/v4/app/q;

    invoke-virtual {v0}, Landroid/support/v4/app/q;->i()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public f()V
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Landroid/support/v4/app/n;->a:Landroid/support/v4/app/o;

    iget-object v0, v0, Landroid/support/v4/app/o;->d:Landroid/support/v4/app/q;

    invoke-virtual {v0}, Landroid/support/v4/app/q;->l()V

    .line 164
    return-void
.end method

.method public g()V
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Landroid/support/v4/app/n;->a:Landroid/support/v4/app/o;

    iget-object v0, v0, Landroid/support/v4/app/o;->d:Landroid/support/v4/app/q;

    invoke-virtual {v0}, Landroid/support/v4/app/q;->m()V

    .line 175
    return-void
.end method

.method public h()V
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Landroid/support/v4/app/n;->a:Landroid/support/v4/app/o;

    iget-object v0, v0, Landroid/support/v4/app/o;->d:Landroid/support/v4/app/q;

    invoke-virtual {v0}, Landroid/support/v4/app/q;->n()V

    .line 186
    return-void
.end method

.method public i()V
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Landroid/support/v4/app/n;->a:Landroid/support/v4/app/o;

    iget-object v0, v0, Landroid/support/v4/app/o;->d:Landroid/support/v4/app/q;

    invoke-virtual {v0}, Landroid/support/v4/app/q;->o()V

    .line 197
    return-void
.end method

.method public j()V
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Landroid/support/v4/app/n;->a:Landroid/support/v4/app/o;

    iget-object v0, v0, Landroid/support/v4/app/o;->d:Landroid/support/v4/app/q;

    invoke-virtual {v0}, Landroid/support/v4/app/q;->p()V

    .line 208
    return-void
.end method

.method public k()V
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Landroid/support/v4/app/n;->a:Landroid/support/v4/app/o;

    iget-object v0, v0, Landroid/support/v4/app/o;->d:Landroid/support/v4/app/q;

    invoke-virtual {v0}, Landroid/support/v4/app/q;->q()V

    .line 219
    return-void
.end method

.method public l()V
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Landroid/support/v4/app/n;->a:Landroid/support/v4/app/o;

    iget-object v0, v0, Landroid/support/v4/app/o;->d:Landroid/support/v4/app/q;

    invoke-virtual {v0}, Landroid/support/v4/app/q;->r()V

    .line 223
    return-void
.end method

.method public m()V
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Landroid/support/v4/app/n;->a:Landroid/support/v4/app/o;

    iget-object v0, v0, Landroid/support/v4/app/o;->d:Landroid/support/v4/app/q;

    invoke-virtual {v0}, Landroid/support/v4/app/q;->t()V

    .line 245
    return-void
.end method

.method public n()V
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Landroid/support/v4/app/n;->a:Landroid/support/v4/app/o;

    iget-object v0, v0, Landroid/support/v4/app/o;->d:Landroid/support/v4/app/q;

    invoke-virtual {v0}, Landroid/support/v4/app/q;->u()V

    .line 268
    return-void
.end method

.method public o()Z
    .locals 1

    .prologue
    .line 339
    iget-object v0, p0, Landroid/support/v4/app/n;->a:Landroid/support/v4/app/o;

    iget-object v0, v0, Landroid/support/v4/app/o;->d:Landroid/support/v4/app/q;

    invoke-virtual {v0}, Landroid/support/v4/app/q;->g()Z

    move-result v0

    return v0
.end method

.method public p()V
    .locals 1

    .prologue
    .line 346
    iget-object v0, p0, Landroid/support/v4/app/n;->a:Landroid/support/v4/app/o;

    invoke-virtual {v0}, Landroid/support/v4/app/o;->m()V

    .line 347
    return-void
.end method

.method public q()V
    .locals 1

    .prologue
    .line 371
    iget-object v0, p0, Landroid/support/v4/app/n;->a:Landroid/support/v4/app/o;

    invoke-virtual {v0}, Landroid/support/v4/app/o;->n()V

    .line 372
    return-void
.end method

.method public r()V
    .locals 1

    .prologue
    .line 378
    iget-object v0, p0, Landroid/support/v4/app/n;->a:Landroid/support/v4/app/o;

    invoke-virtual {v0}, Landroid/support/v4/app/o;->o()V

    .line 379
    return-void
.end method

.method public s()Landroid/support/v4/e/i;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v4/e/i",
            "<",
            "Ljava/lang/String;",
            "Landroid/support/v4/app/w;",
            ">;"
        }
    .end annotation

    .prologue
    .line 386
    iget-object v0, p0, Landroid/support/v4/app/n;->a:Landroid/support/v4/app/o;

    invoke-virtual {v0}, Landroid/support/v4/app/o;->p()Landroid/support/v4/e/i;

    move-result-object v0

    return-object v0
.end method
