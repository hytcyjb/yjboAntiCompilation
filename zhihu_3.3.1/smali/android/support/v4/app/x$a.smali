.class final Landroid/support/v4/app/x$a;
.super Ljava/lang/Object;
.source "LoaderManager.java"

# interfaces
.implements Landroid/support/v4/content/i$a;
.implements Landroid/support/v4/content/i$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/support/v4/content/i$a",
        "<",
        "Ljava/lang/Object;",
        ">;",
        "Landroid/support/v4/content/i$b",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final a:I

.field final b:Landroid/os/Bundle;

.field c:Landroid/support/v4/app/w$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/app/w$a",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field d:Landroid/support/v4/content/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/content/i",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field e:Z

.field f:Z

.field g:Ljava/lang/Object;

.field h:Z

.field i:Z

.field j:Z

.field k:Z

.field l:Z

.field m:Z

.field n:Landroid/support/v4/app/x$a;

.field final synthetic o:Landroid/support/v4/app/x;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/x;ILandroid/os/Bundle;Landroid/support/v4/app/w$a;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            "Landroid/support/v4/app/w$a",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 235
    iput-object p1, p0, Landroid/support/v4/app/x$a;->o:Landroid/support/v4/app/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 236
    iput p2, p0, Landroid/support/v4/app/x$a;->a:I

    .line 237
    iput-object p3, p0, Landroid/support/v4/app/x$a;->b:Landroid/os/Bundle;

    .line 238
    iput-object p4, p0, Landroid/support/v4/app/x$a;->c:Landroid/support/v4/app/w$a;

    .line 239
    return-void
.end method


# virtual methods
.method a()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 242
    iget-boolean v0, p0, Landroid/support/v4/app/x$a;->i:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/support/v4/app/x$a;->j:Z

    if-eqz v0, :cond_1

    .line 246
    iput-boolean v3, p0, Landroid/support/v4/app/x$a;->h:Z

    .line 275
    :cond_0
    :goto_0
    return-void

    .line 250
    :cond_1
    iget-boolean v0, p0, Landroid/support/v4/app/x$a;->h:Z

    if-nez v0, :cond_0

    .line 255
    iput-boolean v3, p0, Landroid/support/v4/app/x$a;->h:Z

    .line 257
    sget-boolean v0, Landroid/support/v4/app/x;->a:Z

    if-eqz v0, :cond_2

    const-string v0, "LoaderManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Starting: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/x$a;->d:Landroid/support/v4/content/i;

    if-nez v0, :cond_3

    iget-object v0, p0, Landroid/support/v4/app/x$a;->c:Landroid/support/v4/app/w$a;

    if-eqz v0, :cond_3

    .line 259
    iget-object v0, p0, Landroid/support/v4/app/x$a;->c:Landroid/support/v4/app/w$a;

    iget v1, p0, Landroid/support/v4/app/x$a;->a:I

    iget-object v2, p0, Landroid/support/v4/app/x$a;->b:Landroid/os/Bundle;

    invoke-interface {v0, v1, v2}, Landroid/support/v4/app/w$a;->onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/i;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/x$a;->d:Landroid/support/v4/content/i;

    .line 261
    :cond_3
    iget-object v0, p0, Landroid/support/v4/app/x$a;->d:Landroid/support/v4/content/i;

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Landroid/support/v4/app/x$a;->d:Landroid/support/v4/content/i;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isMemberClass()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/support/v4/app/x$a;->d:Landroid/support/v4/content/i;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    if-nez v0, :cond_4

    .line 264
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Object returned from onCreateLoader must not be a non-static inner member class: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v4/app/x$a;->d:Landroid/support/v4/content/i;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 268
    :cond_4
    iget-boolean v0, p0, Landroid/support/v4/app/x$a;->m:Z

    if-nez v0, :cond_5

    .line 269
    iget-object v0, p0, Landroid/support/v4/app/x$a;->d:Landroid/support/v4/content/i;

    iget v1, p0, Landroid/support/v4/app/x$a;->a:I

    invoke-virtual {v0, v1, p0}, Landroid/support/v4/content/i;->registerListener(ILandroid/support/v4/content/i$b;)V

    .line 270
    iget-object v0, p0, Landroid/support/v4/app/x$a;->d:Landroid/support/v4/content/i;

    invoke-virtual {v0, p0}, Landroid/support/v4/content/i;->registerOnLoadCanceledListener(Landroid/support/v4/content/i$a;)V

    .line 271
    iput-boolean v3, p0, Landroid/support/v4/app/x$a;->m:Z

    .line 273
    :cond_5
    iget-object v0, p0, Landroid/support/v4/app/x$a;->d:Landroid/support/v4/content/i;

    invoke-virtual {v0}, Landroid/support/v4/content/i;->startLoading()V

    goto/16 :goto_0
.end method

.method public a(Landroid/support/v4/content/i;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/i",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 382
    sget-boolean v0, Landroid/support/v4/app/x;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "LoaderManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLoadCanceled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    :cond_0
    iget-boolean v0, p0, Landroid/support/v4/app/x$a;->l:Z

    if-eqz v0, :cond_2

    .line 385
    sget-boolean v0, Landroid/support/v4/app/x;->a:Z

    if-eqz v0, :cond_1

    const-string v0, "LoaderManager"

    const-string v1, "  Ignoring load canceled -- destroyed"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    :cond_1
    :goto_0
    return-void

    .line 389
    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/x$a;->o:Landroid/support/v4/app/x;

    iget-object v0, v0, Landroid/support/v4/app/x;->b:Landroid/support/v4/e/j;

    iget v1, p0, Landroid/support/v4/app/x$a;->a:I

    invoke-virtual {v0, v1}, Landroid/support/v4/e/j;->a(I)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p0, :cond_3

    .line 392
    sget-boolean v0, Landroid/support/v4/app/x;->a:Z

    if-eqz v0, :cond_1

    const-string v0, "LoaderManager"

    const-string v1, "  Ignoring load canceled -- not active"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 396
    :cond_3
    iget-object v0, p0, Landroid/support/v4/app/x$a;->n:Landroid/support/v4/app/x$a;

    .line 397
    if-eqz v0, :cond_1

    .line 401
    sget-boolean v1, Landroid/support/v4/app/x;->a:Z

    if-eqz v1, :cond_4

    const-string v1, "LoaderManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  Switching to pending loader: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    :cond_4
    iput-object v4, p0, Landroid/support/v4/app/x$a;->n:Landroid/support/v4/app/x$a;

    .line 403
    iget-object v1, p0, Landroid/support/v4/app/x$a;->o:Landroid/support/v4/app/x;

    iget-object v1, v1, Landroid/support/v4/app/x;->b:Landroid/support/v4/e/j;

    iget v2, p0, Landroid/support/v4/app/x$a;->a:I

    invoke-virtual {v1, v2, v4}, Landroid/support/v4/e/j;->b(ILjava/lang/Object;)V

    .line 404
    invoke-virtual {p0}, Landroid/support/v4/app/x$a;->g()V

    .line 405
    iget-object v1, p0, Landroid/support/v4/app/x$a;->o:Landroid/support/v4/app/x;

    invoke-virtual {v1, v0}, Landroid/support/v4/app/x;->a(Landroid/support/v4/app/x$a;)V

    goto :goto_0
.end method

.method public a(Landroid/support/v4/content/i;Ljava/lang/Object;)V
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/i",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 411
    sget-boolean v0, Landroid/support/v4/app/x;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "LoaderManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLoadComplete: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    :cond_0
    iget-boolean v0, p0, Landroid/support/v4/app/x$a;->l:Z

    if-eqz v0, :cond_2

    .line 414
    sget-boolean v0, Landroid/support/v4/app/x;->a:Z

    if-eqz v0, :cond_1

    const-string v0, "LoaderManager"

    const-string v1, "  Ignoring load complete -- destroyed"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    :cond_1
    :goto_0
    return-void

    .line 418
    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/x$a;->o:Landroid/support/v4/app/x;

    iget-object v0, v0, Landroid/support/v4/app/x;->b:Landroid/support/v4/e/j;

    iget v1, p0, Landroid/support/v4/app/x$a;->a:I

    invoke-virtual {v0, v1}, Landroid/support/v4/e/j;->a(I)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p0, :cond_3

    .line 421
    sget-boolean v0, Landroid/support/v4/app/x;->a:Z

    if-eqz v0, :cond_1

    const-string v0, "LoaderManager"

    const-string v1, "  Ignoring load complete -- not active"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 425
    :cond_3
    iget-object v0, p0, Landroid/support/v4/app/x$a;->n:Landroid/support/v4/app/x$a;

    .line 426
    if-eqz v0, :cond_5

    .line 430
    sget-boolean v1, Landroid/support/v4/app/x;->a:Z

    if-eqz v1, :cond_4

    const-string v1, "LoaderManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  Switching to pending loader: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    :cond_4
    iput-object v4, p0, Landroid/support/v4/app/x$a;->n:Landroid/support/v4/app/x$a;

    .line 432
    iget-object v1, p0, Landroid/support/v4/app/x$a;->o:Landroid/support/v4/app/x;

    iget-object v1, v1, Landroid/support/v4/app/x;->b:Landroid/support/v4/e/j;

    iget v2, p0, Landroid/support/v4/app/x$a;->a:I

    invoke-virtual {v1, v2, v4}, Landroid/support/v4/e/j;->b(ILjava/lang/Object;)V

    .line 433
    invoke-virtual {p0}, Landroid/support/v4/app/x$a;->g()V

    .line 434
    iget-object v1, p0, Landroid/support/v4/app/x$a;->o:Landroid/support/v4/app/x;

    invoke-virtual {v1, v0}, Landroid/support/v4/app/x;->a(Landroid/support/v4/app/x$a;)V

    goto :goto_0

    .line 440
    :cond_5
    iget-object v0, p0, Landroid/support/v4/app/x$a;->g:Ljava/lang/Object;

    if-ne v0, p2, :cond_6

    iget-boolean v0, p0, Landroid/support/v4/app/x$a;->e:Z

    if-nez v0, :cond_7

    .line 441
    :cond_6
    iput-object p2, p0, Landroid/support/v4/app/x$a;->g:Ljava/lang/Object;

    .line 442
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/x$a;->e:Z

    .line 443
    iget-boolean v0, p0, Landroid/support/v4/app/x$a;->h:Z

    if-eqz v0, :cond_7

    .line 444
    invoke-virtual {p0, p1, p2}, Landroid/support/v4/app/x$a;->b(Landroid/support/v4/content/i;Ljava/lang/Object;)V

    .line 454
    :cond_7
    iget-object v0, p0, Landroid/support/v4/app/x$a;->o:Landroid/support/v4/app/x;

    iget-object v0, v0, Landroid/support/v4/app/x;->c:Landroid/support/v4/e/j;

    iget v1, p0, Landroid/support/v4/app/x$a;->a:I

    invoke-virtual {v0, v1}, Landroid/support/v4/e/j;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/x$a;

    .line 455
    if-eqz v0, :cond_8

    if-eq v0, p0, :cond_8

    .line 456
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/support/v4/app/x$a;->f:Z

    .line 457
    invoke-virtual {v0}, Landroid/support/v4/app/x$a;->g()V

    .line 458
    iget-object v0, p0, Landroid/support/v4/app/x$a;->o:Landroid/support/v4/app/x;

    iget-object v0, v0, Landroid/support/v4/app/x;->c:Landroid/support/v4/e/j;

    iget v1, p0, Landroid/support/v4/app/x$a;->a:I

    invoke-virtual {v0, v1}, Landroid/support/v4/e/j;->c(I)V

    .line 461
    :cond_8
    iget-object v0, p0, Landroid/support/v4/app/x$a;->o:Landroid/support/v4/app/x;

    invoke-static {v0}, Landroid/support/v4/app/x;->a(Landroid/support/v4/app/x;)Landroid/support/v4/app/o;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/app/x$a;->o:Landroid/support/v4/app/x;

    invoke-virtual {v0}, Landroid/support/v4/app/x;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 462
    iget-object v0, p0, Landroid/support/v4/app/x$a;->o:Landroid/support/v4/app/x;

    invoke-static {v0}, Landroid/support/v4/app/x;->a(Landroid/support/v4/app/x;)Landroid/support/v4/app/o;

    move-result-object v0

    iget-object v0, v0, Landroid/support/v4/app/o;->d:Landroid/support/v4/app/q;

    invoke-virtual {v0}, Landroid/support/v4/app/q;->f()V

    goto/16 :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 500
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mId="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/support/v4/app/x$a;->a:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 501
    const-string v0, " mArgs="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/x$a;->b:Landroid/os/Bundle;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 502
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mCallbacks="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/x$a;->c:Landroid/support/v4/app/w$a;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 503
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mLoader="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/x$a;->d:Landroid/support/v4/content/i;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 504
    iget-object v0, p0, Landroid/support/v4/app/x$a;->d:Landroid/support/v4/content/i;

    if-eqz v0, :cond_0

    .line 505
    iget-object v0, p0, Landroid/support/v4/app/x$a;->d:Landroid/support/v4/content/i;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3, p4}, Landroid/support/v4/content/i;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 507
    :cond_0
    iget-boolean v0, p0, Landroid/support/v4/app/x$a;->e:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroid/support/v4/app/x$a;->f:Z

    if-eqz v0, :cond_2

    .line 508
    :cond_1
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mHaveData="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/x$a;->e:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 509
    const-string v0, "  mDeliveredData="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/x$a;->f:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 510
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mData="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/x$a;->g:Ljava/lang/Object;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 512
    :cond_2
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mStarted="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/x$a;->h:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 513
    const-string v0, " mReportNextStart="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/x$a;->k:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 514
    const-string v0, " mDestroyed="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/x$a;->l:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 515
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mRetaining="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/x$a;->i:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 516
    const-string v0, " mRetainingStarted="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/x$a;->j:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 517
    const-string v0, " mListenerRegistered="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/x$a;->m:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 518
    iget-object v0, p0, Landroid/support/v4/app/x$a;->n:Landroid/support/v4/app/x$a;

    if-eqz v0, :cond_3

    .line 519
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Pending Loader "

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 520
    iget-object v0, p0, Landroid/support/v4/app/x$a;->n:Landroid/support/v4/app/x$a;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v0, ":"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 521
    iget-object v0, p0, Landroid/support/v4/app/x$a;->n:Landroid/support/v4/app/x$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3, p4}, Landroid/support/v4/app/x$a;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 523
    :cond_3
    return-void
.end method

.method b()V
    .locals 3

    .prologue
    .line 278
    sget-boolean v0, Landroid/support/v4/app/x;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "LoaderManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Retaining: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/x$a;->i:Z

    .line 280
    iget-boolean v0, p0, Landroid/support/v4/app/x$a;->h:Z

    iput-boolean v0, p0, Landroid/support/v4/app/x$a;->j:Z

    .line 281
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/x$a;->h:Z

    .line 282
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/app/x$a;->c:Landroid/support/v4/app/w$a;

    .line 283
    return-void
.end method

.method b(Landroid/support/v4/content/i;Ljava/lang/Object;)V
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/i",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 467
    iget-object v0, p0, Landroid/support/v4/app/x$a;->c:Landroid/support/v4/app/w$a;

    if-eqz v0, :cond_2

    .line 468
    const/4 v0, 0x0

    .line 469
    iget-object v1, p0, Landroid/support/v4/app/x$a;->o:Landroid/support/v4/app/x;

    invoke-static {v1}, Landroid/support/v4/app/x;->a(Landroid/support/v4/app/x;)Landroid/support/v4/app/o;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 470
    iget-object v0, p0, Landroid/support/v4/app/x$a;->o:Landroid/support/v4/app/x;

    invoke-static {v0}, Landroid/support/v4/app/x;->a(Landroid/support/v4/app/x;)Landroid/support/v4/app/o;

    move-result-object v0

    iget-object v0, v0, Landroid/support/v4/app/o;->d:Landroid/support/v4/app/q;

    iget-object v0, v0, Landroid/support/v4/app/q;->v:Ljava/lang/String;

    .line 471
    iget-object v1, p0, Landroid/support/v4/app/x$a;->o:Landroid/support/v4/app/x;

    invoke-static {v1}, Landroid/support/v4/app/x;->a(Landroid/support/v4/app/x;)Landroid/support/v4/app/o;

    move-result-object v1

    iget-object v1, v1, Landroid/support/v4/app/o;->d:Landroid/support/v4/app/q;

    const-string v2, "onLoadFinished"

    iput-object v2, v1, Landroid/support/v4/app/q;->v:Ljava/lang/String;

    move-object v1, v0

    .line 474
    :goto_0
    :try_start_0
    sget-boolean v0, Landroid/support/v4/app/x;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "LoaderManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  onLoadFinished in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1, p2}, Landroid/support/v4/content/i;->dataToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/x$a;->c:Landroid/support/v4/app/w$a;

    invoke-interface {v0, p1, p2}, Landroid/support/v4/app/w$a;->onLoadFinished(Landroid/support/v4/content/i;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 478
    iget-object v0, p0, Landroid/support/v4/app/x$a;->o:Landroid/support/v4/app/x;

    invoke-static {v0}, Landroid/support/v4/app/x;->a(Landroid/support/v4/app/x;)Landroid/support/v4/app/o;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 479
    iget-object v0, p0, Landroid/support/v4/app/x$a;->o:Landroid/support/v4/app/x;

    invoke-static {v0}, Landroid/support/v4/app/x;->a(Landroid/support/v4/app/x;)Landroid/support/v4/app/o;

    move-result-object v0

    iget-object v0, v0, Landroid/support/v4/app/o;->d:Landroid/support/v4/app/q;

    iput-object v1, v0, Landroid/support/v4/app/q;->v:Ljava/lang/String;

    .line 482
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/x$a;->f:Z

    .line 484
    :cond_2
    return-void

    .line 478
    :catchall_0
    move-exception v0

    iget-object v2, p0, Landroid/support/v4/app/x$a;->o:Landroid/support/v4/app/x;

    invoke-static {v2}, Landroid/support/v4/app/x;->a(Landroid/support/v4/app/x;)Landroid/support/v4/app/o;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 479
    iget-object v2, p0, Landroid/support/v4/app/x$a;->o:Landroid/support/v4/app/x;

    invoke-static {v2}, Landroid/support/v4/app/x;->a(Landroid/support/v4/app/x;)Landroid/support/v4/app/o;

    move-result-object v2

    iget-object v2, v2, Landroid/support/v4/app/o;->d:Landroid/support/v4/app/q;

    iput-object v1, v2, Landroid/support/v4/app/q;->v:Ljava/lang/String;

    :cond_3
    throw v0

    :cond_4
    move-object v1, v0

    goto :goto_0
.end method

.method c()V
    .locals 3

    .prologue
    .line 286
    iget-boolean v0, p0, Landroid/support/v4/app/x$a;->i:Z

    if-eqz v0, :cond_1

    .line 287
    sget-boolean v0, Landroid/support/v4/app/x;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "LoaderManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Finished Retaining: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/x$a;->i:Z

    .line 289
    iget-boolean v0, p0, Landroid/support/v4/app/x$a;->h:Z

    iget-boolean v1, p0, Landroid/support/v4/app/x$a;->j:Z

    if-eq v0, v1, :cond_1

    .line 290
    iget-boolean v0, p0, Landroid/support/v4/app/x$a;->h:Z

    if-nez v0, :cond_1

    .line 294
    invoke-virtual {p0}, Landroid/support/v4/app/x$a;->e()V

    .line 299
    :cond_1
    iget-boolean v0, p0, Landroid/support/v4/app/x$a;->h:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Landroid/support/v4/app/x$a;->e:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Landroid/support/v4/app/x$a;->k:Z

    if-nez v0, :cond_2

    .line 306
    iget-object v0, p0, Landroid/support/v4/app/x$a;->d:Landroid/support/v4/content/i;

    iget-object v1, p0, Landroid/support/v4/app/x$a;->g:Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/x$a;->b(Landroid/support/v4/content/i;Ljava/lang/Object;)V

    .line 308
    :cond_2
    return-void
.end method

.method d()V
    .locals 2

    .prologue
    .line 311
    iget-boolean v0, p0, Landroid/support/v4/app/x$a;->h:Z

    if-eqz v0, :cond_0

    .line 312
    iget-boolean v0, p0, Landroid/support/v4/app/x$a;->k:Z

    if-eqz v0, :cond_0

    .line 313
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/x$a;->k:Z

    .line 314
    iget-boolean v0, p0, Landroid/support/v4/app/x$a;->e:Z

    if-eqz v0, :cond_0

    .line 315
    iget-object v0, p0, Landroid/support/v4/app/x$a;->d:Landroid/support/v4/content/i;

    iget-object v1, p0, Landroid/support/v4/app/x$a;->g:Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/x$a;->b(Landroid/support/v4/content/i;Ljava/lang/Object;)V

    .line 319
    :cond_0
    return-void
.end method

.method e()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 322
    sget-boolean v0, Landroid/support/v4/app/x;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "LoaderManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Stopping: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    :cond_0
    iput-boolean v3, p0, Landroid/support/v4/app/x$a;->h:Z

    .line 324
    iget-boolean v0, p0, Landroid/support/v4/app/x$a;->i:Z

    if-nez v0, :cond_1

    .line 325
    iget-object v0, p0, Landroid/support/v4/app/x$a;->d:Landroid/support/v4/content/i;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/support/v4/app/x$a;->m:Z

    if-eqz v0, :cond_1

    .line 327
    iput-boolean v3, p0, Landroid/support/v4/app/x$a;->m:Z

    .line 328
    iget-object v0, p0, Landroid/support/v4/app/x$a;->d:Landroid/support/v4/content/i;

    invoke-virtual {v0, p0}, Landroid/support/v4/content/i;->unregisterListener(Landroid/support/v4/content/i$b;)V

    .line 329
    iget-object v0, p0, Landroid/support/v4/app/x$a;->d:Landroid/support/v4/content/i;

    invoke-virtual {v0, p0}, Landroid/support/v4/content/i;->unregisterOnLoadCanceledListener(Landroid/support/v4/content/i$a;)V

    .line 330
    iget-object v0, p0, Landroid/support/v4/app/x$a;->d:Landroid/support/v4/content/i;

    invoke-virtual {v0}, Landroid/support/v4/content/i;->stopLoading()V

    .line 333
    :cond_1
    return-void
.end method

.method f()V
    .locals 3

    .prologue
    .line 336
    sget-boolean v0, Landroid/support/v4/app/x;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "LoaderManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Canceling: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    :cond_0
    iget-boolean v0, p0, Landroid/support/v4/app/x$a;->h:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/app/x$a;->d:Landroid/support/v4/content/i;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/support/v4/app/x$a;->m:Z

    if-eqz v0, :cond_1

    .line 338
    iget-object v0, p0, Landroid/support/v4/app/x$a;->d:Landroid/support/v4/content/i;

    invoke-virtual {v0}, Landroid/support/v4/content/i;->cancelLoad()Z

    move-result v0

    if-nez v0, :cond_1

    .line 339
    iget-object v0, p0, Landroid/support/v4/app/x$a;->d:Landroid/support/v4/content/i;

    invoke-virtual {p0, v0}, Landroid/support/v4/app/x$a;->a(Landroid/support/v4/content/i;)V

    .line 342
    :cond_1
    return-void
.end method

.method g()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 345
    sget-boolean v0, Landroid/support/v4/app/x;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "LoaderManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  Destroying: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/x$a;->l:Z

    .line 347
    iget-boolean v0, p0, Landroid/support/v4/app/x$a;->f:Z

    .line 348
    iput-boolean v4, p0, Landroid/support/v4/app/x$a;->f:Z

    .line 349
    iget-object v1, p0, Landroid/support/v4/app/x$a;->c:Landroid/support/v4/app/w$a;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/support/v4/app/x$a;->d:Landroid/support/v4/content/i;

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Landroid/support/v4/app/x$a;->e:Z

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 350
    sget-boolean v0, Landroid/support/v4/app/x;->a:Z

    if-eqz v0, :cond_1

    const-string v0, "LoaderManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  Reseting: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/x$a;->o:Landroid/support/v4/app/x;

    invoke-static {v0}, Landroid/support/v4/app/x;->a(Landroid/support/v4/app/x;)Landroid/support/v4/app/o;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 353
    iget-object v0, p0, Landroid/support/v4/app/x$a;->o:Landroid/support/v4/app/x;

    invoke-static {v0}, Landroid/support/v4/app/x;->a(Landroid/support/v4/app/x;)Landroid/support/v4/app/o;

    move-result-object v0

    iget-object v0, v0, Landroid/support/v4/app/o;->d:Landroid/support/v4/app/q;

    iget-object v0, v0, Landroid/support/v4/app/q;->v:Ljava/lang/String;

    .line 354
    iget-object v1, p0, Landroid/support/v4/app/x$a;->o:Landroid/support/v4/app/x;

    invoke-static {v1}, Landroid/support/v4/app/x;->a(Landroid/support/v4/app/x;)Landroid/support/v4/app/o;

    move-result-object v1

    iget-object v1, v1, Landroid/support/v4/app/o;->d:Landroid/support/v4/app/q;

    const-string v3, "onLoaderReset"

    iput-object v3, v1, Landroid/support/v4/app/q;->v:Ljava/lang/String;

    move-object v1, v0

    .line 357
    :goto_0
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/app/x$a;->c:Landroid/support/v4/app/w$a;

    iget-object v3, p0, Landroid/support/v4/app/x$a;->d:Landroid/support/v4/content/i;

    invoke-interface {v0, v3}, Landroid/support/v4/app/w$a;->onLoaderReset(Landroid/support/v4/content/i;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 359
    iget-object v0, p0, Landroid/support/v4/app/x$a;->o:Landroid/support/v4/app/x;

    invoke-static {v0}, Landroid/support/v4/app/x;->a(Landroid/support/v4/app/x;)Landroid/support/v4/app/o;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 360
    iget-object v0, p0, Landroid/support/v4/app/x$a;->o:Landroid/support/v4/app/x;

    invoke-static {v0}, Landroid/support/v4/app/x;->a(Landroid/support/v4/app/x;)Landroid/support/v4/app/o;

    move-result-object v0

    iget-object v0, v0, Landroid/support/v4/app/o;->d:Landroid/support/v4/app/q;

    iput-object v1, v0, Landroid/support/v4/app/q;->v:Ljava/lang/String;

    .line 364
    :cond_2
    iput-object v2, p0, Landroid/support/v4/app/x$a;->c:Landroid/support/v4/app/w$a;

    .line 365
    iput-object v2, p0, Landroid/support/v4/app/x$a;->g:Ljava/lang/Object;

    .line 366
    iput-boolean v4, p0, Landroid/support/v4/app/x$a;->e:Z

    .line 367
    iget-object v0, p0, Landroid/support/v4/app/x$a;->d:Landroid/support/v4/content/i;

    if-eqz v0, :cond_4

    .line 368
    iget-boolean v0, p0, Landroid/support/v4/app/x$a;->m:Z

    if-eqz v0, :cond_3

    .line 369
    iput-boolean v4, p0, Landroid/support/v4/app/x$a;->m:Z

    .line 370
    iget-object v0, p0, Landroid/support/v4/app/x$a;->d:Landroid/support/v4/content/i;

    invoke-virtual {v0, p0}, Landroid/support/v4/content/i;->unregisterListener(Landroid/support/v4/content/i$b;)V

    .line 371
    iget-object v0, p0, Landroid/support/v4/app/x$a;->d:Landroid/support/v4/content/i;

    invoke-virtual {v0, p0}, Landroid/support/v4/content/i;->unregisterOnLoadCanceledListener(Landroid/support/v4/content/i$a;)V

    .line 373
    :cond_3
    iget-object v0, p0, Landroid/support/v4/app/x$a;->d:Landroid/support/v4/content/i;

    invoke-virtual {v0}, Landroid/support/v4/content/i;->reset()V

    .line 375
    :cond_4
    iget-object v0, p0, Landroid/support/v4/app/x$a;->n:Landroid/support/v4/app/x$a;

    if-eqz v0, :cond_5

    .line 376
    iget-object v0, p0, Landroid/support/v4/app/x$a;->n:Landroid/support/v4/app/x$a;

    invoke-virtual {v0}, Landroid/support/v4/app/x$a;->g()V

    .line 378
    :cond_5
    return-void

    .line 359
    :catchall_0
    move-exception v0

    iget-object v2, p0, Landroid/support/v4/app/x$a;->o:Landroid/support/v4/app/x;

    invoke-static {v2}, Landroid/support/v4/app/x;->a(Landroid/support/v4/app/x;)Landroid/support/v4/app/o;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 360
    iget-object v2, p0, Landroid/support/v4/app/x$a;->o:Landroid/support/v4/app/x;

    invoke-static {v2}, Landroid/support/v4/app/x;->a(Landroid/support/v4/app/x;)Landroid/support/v4/app/o;

    move-result-object v2

    iget-object v2, v2, Landroid/support/v4/app/o;->d:Landroid/support/v4/app/q;

    iput-object v1, v2, Landroid/support/v4/app/q;->v:Ljava/lang/String;

    :cond_6
    throw v0

    :cond_7
    move-object v1, v2

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 488
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 489
    const-string v1, "LoaderInfo{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 490
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 491
    const-string v1, " #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 492
    iget v1, p0, Landroid/support/v4/app/x$a;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 493
    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 494
    iget-object v1, p0, Landroid/support/v4/app/x$a;->d:Landroid/support/v4/content/i;

    invoke-static {v1, v0}, Landroid/support/v4/e/c;->a(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 495
    const-string v1, "}}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 496
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
