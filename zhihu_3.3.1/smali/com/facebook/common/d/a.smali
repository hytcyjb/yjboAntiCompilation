.class public Lcom/facebook/common/d/a;
.super Ljava/lang/Object;
.source "FLog.java"


# static fields
.field private static a:Lcom/facebook/common/d/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    invoke-static {}, Lcom/facebook/common/d/b;->a()Lcom/facebook/common/d/b;

    move-result-object v0

    sput-object v0, Lcom/facebook/common/d/a;->a:Lcom/facebook/common/d/c;

    return-void
.end method

.method private static a(Ljava/lang/Class;)Ljava/lang/String;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 497
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static varargs a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 493
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 88
    sget-object v0, Lcom/facebook/common/d/a;->a:Lcom/facebook/common/d/c;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/facebook/common/d/c;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    sget-object v0, Lcom/facebook/common/d/a;->a:Lcom/facebook/common/d/c;

    invoke-static {p0}, Lcom/facebook/common/d/a;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/facebook/common/d/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 94
    sget-object v0, Lcom/facebook/common/d/a;->a:Lcom/facebook/common/d/c;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/facebook/common/d/c;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    sget-object v0, Lcom/facebook/common/d/a;->a:Lcom/facebook/common/d/c;

    invoke-static {p0}, Lcom/facebook/common/d/a;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-static {p1, v2}, Lcom/facebook/common/d/a;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/facebook/common/d/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    .line 100
    sget-object v0, Lcom/facebook/common/d/a;->a:Lcom/facebook/common/d/c;

    invoke-interface {v0, v2}, Lcom/facebook/common/d/c;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    sget-object v0, Lcom/facebook/common/d/a;->a:Lcom/facebook/common/d/c;

    invoke-static {p0}, Lcom/facebook/common/d/a;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 v3, 0x1

    aput-object p3, v2, v3

    invoke-static {p1, v2}, Lcom/facebook/common/d/a;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/facebook/common/d/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    .line 106
    invoke-static {v2}, Lcom/facebook/common/d/a;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 v1, 0x1

    aput-object p3, v0, v1

    aput-object p4, v0, v2

    invoke-static {p1, v0}, Lcom/facebook/common/d/a;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/facebook/common/d/a;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 109
    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x2

    .line 113
    sget-object v0, Lcom/facebook/common/d/a;->a:Lcom/facebook/common/d/c;

    invoke-interface {v0, v4}, Lcom/facebook/common/d/c;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    sget-object v0, Lcom/facebook/common/d/a;->a:Lcom/facebook/common/d/c;

    invoke-static {p0}, Lcom/facebook/common/d/a;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 v3, 0x1

    aput-object p3, v2, v3

    aput-object p4, v2, v4

    const/4 v3, 0x3

    aput-object p5, v2, v3

    invoke-static {p1, v2}, Lcom/facebook/common/d/a;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/facebook/common/d/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 391
    sget-object v0, Lcom/facebook/common/d/a;->a:Lcom/facebook/common/d/c;

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Lcom/facebook/common/d/c;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 392
    sget-object v0, Lcom/facebook/common/d/a;->a:Lcom/facebook/common/d/c;

    invoke-static {p0}, Lcom/facebook/common/d/a;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Lcom/facebook/common/d/c;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 394
    :cond_0
    return-void
.end method

.method public static varargs a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 131
    sget-object v0, Lcom/facebook/common/d/a;->a:Lcom/facebook/common/d/c;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/facebook/common/d/c;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    sget-object v0, Lcom/facebook/common/d/a;->a:Lcom/facebook/common/d/c;

    invoke-static {p0}, Lcom/facebook/common/d/a;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, p2}, Lcom/facebook/common/d/a;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/facebook/common/d/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    :cond_0
    return-void
.end method

.method public static varargs a(Ljava/lang/Class;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Throwable;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 137
    sget-object v0, Lcom/facebook/common/d/a;->a:Lcom/facebook/common/d/c;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/facebook/common/d/c;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    sget-object v0, Lcom/facebook/common/d/a;->a:Lcom/facebook/common/d/c;

    invoke-static {p0}, Lcom/facebook/common/d/a;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, p3}, Lcom/facebook/common/d/a;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2, p1}, Lcom/facebook/common/d/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 140
    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 397
    sget-object v0, Lcom/facebook/common/d/a;->a:Lcom/facebook/common/d/c;

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Lcom/facebook/common/d/c;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 398
    sget-object v0, Lcom/facebook/common/d/a;->a:Lcom/facebook/common/d/c;

    invoke-interface {v0, p0, p1}, Lcom/facebook/common/d/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 385
    sget-object v0, Lcom/facebook/common/d/a;->a:Lcom/facebook/common/d/c;

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Lcom/facebook/common/d/c;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 386
    sget-object v0, Lcom/facebook/common/d/a;->a:Lcom/facebook/common/d/c;

    invoke-interface {v0, p0, p1, p2}, Lcom/facebook/common/d/c;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 388
    :cond_0
    return-void
.end method

.method public static varargs a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 119
    sget-object v0, Lcom/facebook/common/d/a;->a:Lcom/facebook/common/d/c;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/facebook/common/d/c;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    sget-object v0, Lcom/facebook/common/d/a;->a:Lcom/facebook/common/d/c;

    invoke-static {p1, p2}, Lcom/facebook/common/d/a;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Lcom/facebook/common/d/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    :cond_0
    return-void
.end method

.method public static a(I)Z
    .locals 1
    .parameter

    .prologue
    .line 46
    sget-object v0, Lcom/facebook/common/d/a;->a:Lcom/facebook/common/d/c;

    invoke-interface {v0, p0}, Lcom/facebook/common/d/c;->a(I)Z

    move-result v0

    return v0
.end method

.method public static b(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 185
    sget-object v0, Lcom/facebook/common/d/a;->a:Lcom/facebook/common/d/c;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/facebook/common/d/c;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    sget-object v0, Lcom/facebook/common/d/a;->a:Lcom/facebook/common/d/c;

    invoke-static {p0}, Lcom/facebook/common/d/a;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/facebook/common/d/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    :cond_0
    return-void
.end method

.method public static b(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 191
    sget-object v0, Lcom/facebook/common/d/a;->a:Lcom/facebook/common/d/c;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/facebook/common/d/c;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 192
    sget-object v0, Lcom/facebook/common/d/a;->a:Lcom/facebook/common/d/c;

    invoke-static {p0}, Lcom/facebook/common/d/a;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-static {p1, v2}, Lcom/facebook/common/d/a;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/facebook/common/d/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    :cond_0
    return-void
.end method

.method public static b(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 439
    sget-object v0, Lcom/facebook/common/d/a;->a:Lcom/facebook/common/d/c;

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Lcom/facebook/common/d/c;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 440
    sget-object v0, Lcom/facebook/common/d/a;->a:Lcom/facebook/common/d/c;

    invoke-static {p0}, Lcom/facebook/common/d/a;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Lcom/facebook/common/d/c;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 442
    :cond_0
    return-void
.end method

.method public static varargs b(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 373
    sget-object v0, Lcom/facebook/common/d/a;->a:Lcom/facebook/common/d/c;

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Lcom/facebook/common/d/c;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 374
    sget-object v0, Lcom/facebook/common/d/a;->a:Lcom/facebook/common/d/c;

    invoke-static {p0}, Lcom/facebook/common/d/a;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, p2}, Lcom/facebook/common/d/a;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/facebook/common/d/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    :cond_0
    return-void
.end method

.method public static varargs b(Ljava/lang/Class;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Throwable;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 379
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/facebook/common/d/a;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 380
    invoke-static {p2, p3}, Lcom/facebook/common/d/a;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/facebook/common/d/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 382
    :cond_0
    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 433
    sget-object v0, Lcom/facebook/common/d/a;->a:Lcom/facebook/common/d/c;

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Lcom/facebook/common/d/c;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 434
    sget-object v0, Lcom/facebook/common/d/a;->a:Lcom/facebook/common/d/c;

    invoke-interface {v0, p0, p1, p2}, Lcom/facebook/common/d/c;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 436
    :cond_0
    return-void
.end method

.method public static varargs b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 361
    sget-object v0, Lcom/facebook/common/d/a;->a:Lcom/facebook/common/d/c;

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Lcom/facebook/common/d/c;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 362
    sget-object v0, Lcom/facebook/common/d/a;->a:Lcom/facebook/common/d/c;

    invoke-static {p1, p2}, Lcom/facebook/common/d/a;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Lcom/facebook/common/d/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    :cond_0
    return-void
.end method

.method public static c(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 282
    sget-object v0, Lcom/facebook/common/d/a;->a:Lcom/facebook/common/d/c;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Lcom/facebook/common/d/c;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 283
    sget-object v0, Lcom/facebook/common/d/a;->a:Lcom/facebook/common/d/c;

    invoke-static {p0}, Lcom/facebook/common/d/a;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/facebook/common/d/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    :cond_0
    return-void
.end method

.method public static c(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 487
    sget-object v0, Lcom/facebook/common/d/a;->a:Lcom/facebook/common/d/c;

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Lcom/facebook/common/d/c;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 488
    sget-object v0, Lcom/facebook/common/d/a;->a:Lcom/facebook/common/d/c;

    invoke-static {p0}, Lcom/facebook/common/d/a;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Lcom/facebook/common/d/c;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 490
    :cond_0
    return-void
.end method

.method public static varargs c(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 421
    sget-object v0, Lcom/facebook/common/d/a;->a:Lcom/facebook/common/d/c;

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Lcom/facebook/common/d/c;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 422
    sget-object v0, Lcom/facebook/common/d/a;->a:Lcom/facebook/common/d/c;

    invoke-static {p0}, Lcom/facebook/common/d/a;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, p2}, Lcom/facebook/common/d/a;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/facebook/common/d/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    :cond_0
    return-void
.end method

.method public static varargs c(Ljava/lang/Class;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Throwable;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 427
    sget-object v0, Lcom/facebook/common/d/a;->a:Lcom/facebook/common/d/c;

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Lcom/facebook/common/d/c;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 428
    sget-object v0, Lcom/facebook/common/d/a;->a:Lcom/facebook/common/d/c;

    invoke-static {p0}, Lcom/facebook/common/d/a;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, p3}, Lcom/facebook/common/d/a;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2, p1}, Lcom/facebook/common/d/c;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 430
    :cond_0
    return-void
.end method

.method public static varargs c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 457
    sget-object v0, Lcom/facebook/common/d/a;->a:Lcom/facebook/common/d/c;

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Lcom/facebook/common/d/c;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 458
    sget-object v0, Lcom/facebook/common/d/a;->a:Lcom/facebook/common/d/c;

    invoke-static {p1, p2}, Lcom/facebook/common/d/a;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Lcom/facebook/common/d/c;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    :cond_0
    return-void
.end method

.method public static d(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 403
    sget-object v0, Lcom/facebook/common/d/a;->a:Lcom/facebook/common/d/c;

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Lcom/facebook/common/d/c;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 404
    sget-object v0, Lcom/facebook/common/d/a;->a:Lcom/facebook/common/d/c;

    invoke-static {p0}, Lcom/facebook/common/d/a;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/facebook/common/d/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    :cond_0
    return-void
.end method

.method public static varargs d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 469
    sget-object v0, Lcom/facebook/common/d/a;->a:Lcom/facebook/common/d/c;

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Lcom/facebook/common/d/c;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 470
    sget-object v0, Lcom/facebook/common/d/a;->a:Lcom/facebook/common/d/c;

    invoke-static {p0}, Lcom/facebook/common/d/a;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, p2}, Lcom/facebook/common/d/a;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/facebook/common/d/c;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    :cond_0
    return-void
.end method
