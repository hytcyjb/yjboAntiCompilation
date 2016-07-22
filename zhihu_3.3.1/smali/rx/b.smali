.class public Lrx/b;
.super Ljava/lang/Object;
.source "Observable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/b$h;,
        Lrx/b$e;,
        Lrx/b$d;,
        Lrx/b$b;,
        Lrx/b$a;,
        Lrx/b$c;,
        Lrx/b$i;,
        Lrx/b$g;,
        Lrx/b$f;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static final hook:Lrx/d/b;


# instance fields
.field final onSubscribe:Lrx/b$f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/b$f",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    invoke-static {}, Lrx/d/d;->a()Lrx/d/d;

    move-result-object v0

    invoke-virtual {v0}, Lrx/d/d;->c()Lrx/d/b;

    move-result-object v0

    sput-object v0, Lrx/b;->hook:Lrx/d/b;

    return-void
.end method

.method protected constructor <init>(Lrx/b$f;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/b$f",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lrx/b;->onSubscribe:Lrx/b$f;

    .line 61
    return-void
.end method

.method static synthetic access$000(Lrx/h;Lrx/b;)Lrx/i;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 46
    invoke-static {p0, p1}, Lrx/b;->subscribe(Lrx/h;Lrx/b;)Lrx/i;

    move-result-object v0

    return-object v0
.end method

.method public static amb(Ljava/lang/Iterable;)Lrx/b;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<+",
            "Lrx/b",
            "<+TT;>;>;)",
            "Lrx/b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 283
    invoke-static {p0}, Lrx/internal/operators/b;->a(Ljava/lang/Iterable;)Lrx/b$f;

    move-result-object v0

    invoke-static {v0}, Lrx/b;->create(Lrx/b$f;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public static amb(Lrx/b;Lrx/b;)Lrx/b;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/b",
            "<+TT;>;",
            "Lrx/b",
            "<+TT;>;)",
            "Lrx/b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 305
    invoke-static {p0, p1}, Lrx/internal/operators/b;->a(Lrx/b;Lrx/b;)Lrx/b$f;

    move-result-object v0

    invoke-static {v0}, Lrx/b;->create(Lrx/b$f;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public static amb(Lrx/b;Lrx/b;Lrx/b;)Lrx/b;
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/b",
            "<+TT;>;",
            "Lrx/b",
            "<+TT;>;",
            "Lrx/b",
            "<+TT;>;)",
            "Lrx/b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 329
    invoke-static {p0, p1, p2}, Lrx/internal/operators/b;->a(Lrx/b;Lrx/b;Lrx/b;)Lrx/b$f;

    move-result-object v0

    invoke-static {v0}, Lrx/b;->create(Lrx/b$f;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public static amb(Lrx/b;Lrx/b;Lrx/b;Lrx/b;)Lrx/b;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/b",
            "<+TT;>;",
            "Lrx/b",
            "<+TT;>;",
            "Lrx/b",
            "<+TT;>;",
            "Lrx/b",
            "<+TT;>;)",
            "Lrx/b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 355
    invoke-static {p0, p1, p2, p3}, Lrx/internal/operators/b;->a(Lrx/b;Lrx/b;Lrx/b;Lrx/b;)Lrx/b$f;

    move-result-object v0

    invoke-static {v0}, Lrx/b;->create(Lrx/b$f;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public static amb(Lrx/b;Lrx/b;Lrx/b;Lrx/b;Lrx/b;)Lrx/b;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/b",
            "<+TT;>;",
            "Lrx/b",
            "<+TT;>;",
            "Lrx/b",
            "<+TT;>;",
            "Lrx/b",
            "<+TT;>;",
            "Lrx/b",
            "<+TT;>;)",
            "Lrx/b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 383
    invoke-static {p0, p1, p2, p3, p4}, Lrx/internal/operators/b;->a(Lrx/b;Lrx/b;Lrx/b;Lrx/b;Lrx/b;)Lrx/b$f;

    move-result-object v0

    invoke-static {v0}, Lrx/b;->create(Lrx/b$f;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public static amb(Lrx/b;Lrx/b;Lrx/b;Lrx/b;Lrx/b;Lrx/b;)Lrx/b;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/b",
            "<+TT;>;",
            "Lrx/b",
            "<+TT;>;",
            "Lrx/b",
            "<+TT;>;",
            "Lrx/b",
            "<+TT;>;",
            "Lrx/b",
            "<+TT;>;",
            "Lrx/b",
            "<+TT;>;)",
            "Lrx/b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 413
    invoke-static/range {p0 .. p5}, Lrx/internal/operators/b;->a(Lrx/b;Lrx/b;Lrx/b;Lrx/b;Lrx/b;Lrx/b;)Lrx/b$f;

    move-result-object v0

    invoke-static {v0}, Lrx/b;->create(Lrx/b$f;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public static amb(Lrx/b;Lrx/b;Lrx/b;Lrx/b;Lrx/b;Lrx/b;Lrx/b;)Lrx/b;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/b",
            "<+TT;>;",
            "Lrx/b",
            "<+TT;>;",
            "Lrx/b",
            "<+TT;>;",
            "Lrx/b",
            "<+TT;>;",
            "Lrx/b",
            "<+TT;>;",
            "Lrx/b",
            "<+TT;>;",
            "Lrx/b",
            "<+TT;>;)",
            "Lrx/b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 445
    invoke-static/range {p0 .. p6}, Lrx/internal/operators/b;->a(Lrx/b;Lrx/b;Lrx/b;Lrx/b;Lrx/b;Lrx/b;Lrx/b;)Lrx/b$f;

    move-result-object v0

    invoke-static {v0}, Lrx/b;->create(Lrx/b$f;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public static amb(Lrx/b;Lrx/b;Lrx/b;Lrx/b;Lrx/b;Lrx/b;Lrx/b;Lrx/b;)Lrx/b;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/b",
            "<+TT;>;",
            "Lrx/b",
            "<+TT;>;",
            "Lrx/b",
            "<+TT;>;",
            "Lrx/b",
            "<+TT;>;",
            "Lrx/b",
            "<+TT;>;",
            "Lrx/b",
            "<+TT;>;",
            "Lrx/b",
            "<+TT;>;",
            "Lrx/b",
            "<+TT;>;)",
            "Lrx/b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 479
    invoke-static/range {p0 .. p7}, Lrx/internal/operators/b;->a(Lrx/b;Lrx/b;Lrx/b;Lrx/b;Lrx/b;Lrx/b;Lrx/b;Lrx/b;)Lrx/b$f;

    move-result-object v0

    invoke-static {v0}, Lrx/b;->create(Lrx/b$f;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public static amb(Lrx/b;Lrx/b;Lrx/b;Lrx/b;Lrx/b;Lrx/b;Lrx/b;Lrx/b;Lrx/b;)Lrx/b;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/b",
            "<+TT;>;",
            "Lrx/b",
            "<+TT;>;",
            "Lrx/b",
            "<+TT;>;",
            "Lrx/b",
            "<+TT;>;",
            "Lrx/b",
            "<+TT;>;",
            "Lrx/b",
            "<+TT;>;",
            "Lrx/b",
            "<+TT;>;",
            "Lrx/b",
            "<+TT;>;",
            "Lrx/b",
            "<+TT;>;)",
            "Lrx/b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 515
    invoke-static/range {p0 .. p8}, Lrx/internal/operators/b;->a(Lrx/b;Lrx/b;Lrx/b;Lrx/b;Lrx/b;Lrx/b;Lrx/b;Lrx/b;Lrx/b;)Lrx/b$f;

    move-result-object v0

    invoke-static {v0}, Lrx/b;->create(Lrx/b$f;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public static combineLatest(Ljava/lang/Iterable;Lrx/b/o;)Lrx/b;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<+",
            "Lrx/b",
            "<+TT;>;>;",
            "Lrx/b/o",
            "<+TR;>;)",
            "Lrx/b",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 835
    new-instance v0, Lrx/internal/operators/OnSubscribeCombineLatest;

    invoke-direct {v0, p0, p1}, Lrx/internal/operators/OnSubscribeCombineLatest;-><init>(Ljava/lang/Iterable;Lrx/b/o;)V

    invoke-static {v0}, Lrx/b;->create(Lrx/b$f;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public static combineLatest(Ljava/util/List;Lrx/b/o;)Lrx/b;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<+",
            "Lrx/b",
            "<+TT;>;>;",
            "Lrx/b/o",
            "<+TR;>;)",
            "Lrx/b",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 810
    new-instance v0, Lrx/internal/operators/OnSubscribeCombineLatest;

    invoke-direct {v0, p0, p1}, Lrx/internal/operators/OnSubscribeCombineLatest;-><init>(Ljava/lang/Iterable;Lrx/b/o;)V

    invoke-static {v0}, Lrx/b;->create(Lrx/b$f;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public static combineLatest(Lrx/b;Lrx/b;Lrx/b/g;)Lrx/b;
    .locals 2
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/b",
            "<+TT1;>;",
            "Lrx/b",
            "<+TT2;>;",
            "Lrx/b/g",
            "<-TT1;-TT2;+TR;>;)",
            "Lrx/b",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 541
    const/4 v0, 0x2

    new-array v0, v0, [Lrx/b;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {p2}, Lrx/b/p;->a(Lrx/b/g;)Lrx/b/o;

    move-result-object v1

    invoke-static {v0, v1}, Lrx/b;->combineLatest(Ljava/util/List;Lrx/b/o;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public static combineLatest(Lrx/b;Lrx/b;Lrx/b;Lrx/b/h;)Lrx/b;
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/b",
            "<+TT1;>;",
            "Lrx/b",
            "<+TT2;>;",
            "Lrx/b",
            "<+TT3;>;",
            "Lrx/b/h",
            "<-TT1;-TT2;-TT3;+TR;>;)",
            "Lrx/b",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 569
    const/4 v0, 0x3

    new-array v0, v0, [Lrx/b;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {p3}, Lrx/b/p;->a(Lrx/b/h;)Lrx/b/o;

    move-result-object v1

    invoke-static {v0, v1}, Lrx/b;->combineLatest(Ljava/util/List;Lrx/b/o;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public static combineLatest(Lrx/b;Lrx/b;Lrx/b;Lrx/b;Lrx/b/i;)Lrx/b;
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/b",
            "<+TT1;>;",
            "Lrx/b",
            "<+TT2;>;",
            "Lrx/b",
            "<+TT3;>;",
            "Lrx/b",
            "<+TT4;>;",
            "Lrx/b/i",
            "<-TT1;-TT2;-TT3;-TT4;+TR;>;)",
            "Lrx/b",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 600
    const/4 v0, 0x4

    new-array v0, v0, [Lrx/b;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    const/4 v1, 0x3

    aput-object p3, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {p4}, Lrx/b/p;->a(Lrx/b/i;)Lrx/b/o;

    move-result-object v1

    invoke-static {v0, v1}, Lrx/b;->combineLatest(Ljava/util/List;Lrx/b/o;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public static combineLatest(Lrx/b;Lrx/b;Lrx/b;Lrx/b;Lrx/b;Lrx/b/j;)Lrx/b;
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "T5:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/b",
            "<+TT1;>;",
            "Lrx/b",
            "<+TT2;>;",
            "Lrx/b",
            "<+TT3;>;",
            "Lrx/b",
            "<+TT4;>;",
            "Lrx/b",
            "<+TT5;>;",
            "Lrx/b/j",
            "<-TT1;-TT2;-TT3;-TT4;-TT5;+TR;>;)",
            "Lrx/b",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 633
    const/4 v0, 0x5

    new-array v0, v0, [Lrx/b;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    const/4 v1, 0x3

    aput-object p3, v0, v1

    const/4 v1, 0x4

    aput-object p4, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {p5}, Lrx/b/p;->a(Lrx/b/j;)Lrx/b/o;

    move-result-object v1

    invoke-static {v0, v1}, Lrx/b;->combineLatest(Ljava/util/List;Lrx/b/o;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public static combineLatest(Lrx/b;Lrx/b;Lrx/b;Lrx/b;Lrx/b;Lrx/b;Lrx/b/k;)Lrx/b;
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "T5:",
            "Ljava/lang/Object;",
            "T6:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/b",
            "<+TT1;>;",
            "Lrx/b",
            "<+TT2;>;",
            "Lrx/b",
            "<+TT3;>;",
            "Lrx/b",
            "<+TT4;>;",
            "Lrx/b",
            "<+TT5;>;",
            "Lrx/b",
            "<+TT6;>;",
            "Lrx/b/k",
            "<-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;+TR;>;)",
            "Lrx/b",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 668
    const/4 v0, 0x6

    new-array v0, v0, [Lrx/b;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    const/4 v1, 0x3

    aput-object p3, v0, v1

    const/4 v1, 0x4

    aput-object p4, v0, v1

    const/4 v1, 0x5

    aput-object p5, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {p6}, Lrx/b/p;->a(Lrx/b/k;)Lrx/b/o;

    move-result-object v1

    invoke-static {v0, v1}, Lrx/b;->combineLatest(Ljava/util/List;Lrx/b/o;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public static combineLatest(Lrx/b;Lrx/b;Lrx/b;Lrx/b;Lrx/b;Lrx/b;Lrx/b;Lrx/b/l;)Lrx/b;
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "T5:",
            "Ljava/lang/Object;",
            "T6:",
            "Ljava/lang/Object;",
            "T7:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/b",
            "<+TT1;>;",
            "Lrx/b",
            "<+TT2;>;",
            "Lrx/b",
            "<+TT3;>;",
            "Lrx/b",
            "<+TT4;>;",
            "Lrx/b",
            "<+TT5;>;",
            "Lrx/b",
            "<+TT6;>;",
            "Lrx/b",
            "<+TT7;>;",
            "Lrx/b/l",
            "<-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;-TT7;+TR;>;)",
            "Lrx/b",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 705
    const/4 v0, 0x7

    new-array v0, v0, [Lrx/b;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    const/4 v1, 0x3

    aput-object p3, v0, v1

    const/4 v1, 0x4

    aput-object p4, v0, v1

    const/4 v1, 0x5

    aput-object p5, v0, v1

    const/4 v1, 0x6

    aput-object p6, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {p7}, Lrx/b/p;->a(Lrx/b/l;)Lrx/b/o;

    move-result-object v1

    invoke-static {v0, v1}, Lrx/b;->combineLatest(Ljava/util/List;Lrx/b/o;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public static combineLatest(Lrx/b;Lrx/b;Lrx/b;Lrx/b;Lrx/b;Lrx/b;Lrx/b;Lrx/b;Lrx/b/m;)Lrx/b;
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "T5:",
            "Ljava/lang/Object;",
            "T6:",
            "Ljava/lang/Object;",
            "T7:",
            "Ljava/lang/Object;",
            "T8:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/b",
            "<+TT1;>;",
            "Lrx/b",
            "<+TT2;>;",
            "Lrx/b",
            "<+TT3;>;",
            "Lrx/b",
            "<+TT4;>;",
            "Lrx/b",
            "<+TT5;>;",
            "Lrx/b",
            "<+TT6;>;",
            "Lrx/b",
            "<+TT7;>;",
            "Lrx/b",
            "<+TT8;>;",
            "Lrx/b/m",
            "<-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;-TT7;-TT8;+TR;>;)",
            "Lrx/b",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 744
    const/16 v0, 0x8

    new-array v0, v0, [Lrx/b;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    const/4 v1, 0x3

    aput-object p3, v0, v1

    const/4 v1, 0x4

    aput-object p4, v0, v1

    const/4 v1, 0x5

    aput-object p5, v0, v1

    const/4 v1, 0x6

    aput-object p6, v0, v1

    const/4 v1, 0x7

    aput-object p7, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {p8}, Lrx/b/p;->a(Lrx/b/m;)Lrx/b/o;

    move-result-object v1

    invoke-static {v0, v1}, Lrx/b;->combineLatest(Ljava/util/List;Lrx/b/o;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public static combineLatest(Lrx/b;Lrx/b;Lrx/b;Lrx/b;Lrx/b;Lrx/b;Lrx/b;Lrx/b;Lrx/b;Lrx/b/n;)Lrx/b;
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "T5:",
            "Ljava/lang/Object;",
            "T6:",
            "Ljava/lang/Object;",
            "T7:",
            "Ljava/lang/Object;",
            "T8:",
            "Ljava/lang/Object;",
            "T9:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/b",
            "<+TT1;>;",
            "Lrx/b",
            "<+TT2;>;",
            "Lrx/b",
            "<+TT3;>;",
            "Lrx/b",
            "<+TT4;>;",
            "Lrx/b",
            "<+TT5;>;",
            "Lrx/b",
            "<+TT6;>;",
            "Lrx/b",
            "<+TT7;>;",
            "Lrx/b",
            "<+TT8;>;",
            "Lrx/b",
            "<+TT9;>;",
            "Lrx/b/n",
            "<-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;-TT7;-TT8;-TT9;+TR;>;)",
            "Lrx/b",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 786
    const/16 v0, 0x9

    new-array v0, v0, [Lrx/b;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    const/4 v1, 0x3

    aput-object p3, v0, v1

    const/4 v1, 0x4

    aput-object p4, v0, v1

    const/4 v1, 0x5

    aput-object p5, v0, v1

    const/4 v1, 0x6

    aput-object p6, v0, v1

    const/4 v1, 0x7

    aput-object p7, v0, v1

    const/16 v1, 0x8

    aput-object p8, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {p9}, Lrx/b/p;->a(Lrx/b/n;)Lrx/b/o;

    move-result-object v1

    invoke-static {v0, v1}, Lrx/b;->combineLatest(Ljava/util/List;Lrx/b/o;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public static concat(Lrx/b;)Lrx/b;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/b",
            "<+",
            "Lrx/b",
            "<+TT;>;>;)",
            "Lrx/b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 855
    invoke-static {}, Lrx/internal/operators/x;->a()Lrx/internal/operators/x;

    move-result-object v0

    invoke-virtual {p0, v0}, Lrx/b;->lift(Lrx/b$g;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public static concat(Lrx/b;Lrx/b;)Lrx/b;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/b",
            "<+TT;>;",
            "Lrx/b",
            "<+TT;>;)",
            "Lrx/b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 877
    invoke-static {p0, p1}, Lrx/b;->just(Ljava/lang/Object;Ljava/lang/Object;)Lrx/b;

    move-result-object v0

    invoke-static {v0}, Lrx/b;->concat(Lrx/b;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public static concat(Lrx/b;Lrx/b;Lrx/b;)Lrx/b;
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/b",
            "<+TT;>;",
            "Lrx/b",
            "<+TT;>;",
            "Lrx/b",
            "<+TT;>;)",
            "Lrx/b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 901
    invoke-static {p0, p1, p2}, Lrx/b;->just(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lrx/b;

    move-result-object v0

    invoke-static {v0}, Lrx/b;->concat(Lrx/b;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public static concat(Lrx/b;Lrx/b;Lrx/b;Lrx/b;)Lrx/b;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/b",
            "<+TT;>;",
            "Lrx/b",
            "<+TT;>;",
            "Lrx/b",
            "<+TT;>;",
            "Lrx/b",
            "<+TT;>;)",
            "Lrx/b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 927
    invoke-static {p0, p1, p2, p3}, Lrx/b;->just(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lrx/b;

    move-result-object v0

    invoke-static {v0}, Lrx/b;->concat(Lrx/b;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public static concat(Lrx/b;Lrx/b;Lrx/b;Lrx/b;Lrx/b;)Lrx/b;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/b",
            "<+TT;>;",
            "Lrx/b",
            "<+TT;>;",
            "Lrx/b",
            "<+TT;>;",
            "Lrx/b",
            "<+TT;>;",
            "Lrx/b",
            "<+TT;>;)",
            "Lrx/b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 955
    invoke-static {p0, p1, p2, p3, p4}, Lrx/b;->just(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lrx/b;

    move-result-object v0

    invoke-static {v0}, Lrx/b;->concat(Lrx/b;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public static concat(Lrx/b;Lrx/b;Lrx/b;Lrx/b;Lrx/b;Lrx/b;)Lrx/b;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/b",
            "<+TT;>;",
            "Lrx/b",
            "<+TT;>;",
            "Lrx/b",
            "<+TT;>;",
            "Lrx/b",
            "<+TT;>;",
            "Lrx/b",
            "<+TT;>;",
            "Lrx/b",
            "<+TT;>;)",
            "Lrx/b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 985
    invoke-static/range {p0 .. p5}, Lrx/b;->just(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lrx/b;

    move-result-object v0

    invoke-static {v0}, Lrx/b;->concat(Lrx/b;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public static concat(Lrx/b;Lrx/b;Lrx/b;Lrx/b;Lrx/b;Lrx/b;Lrx/b;)Lrx/b;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/b",
            "<+TT;>;",
            "Lrx/b",
            "<+TT;>;",
            "Lrx/b",
            "<+TT;>;",
            "Lrx/b",
            "<+TT;>;",
            "Lrx/b",
            "<+TT;>;",
            "Lrx/b",
            "<+TT;>;",
            "Lrx/b",
            "<+TT;>;)",
            "Lrx/b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1017
    invoke-static/range {p0 .. p6}, Lrx/b;->just(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lrx/b;

    move-result-object v0

    invoke-static {v0}, Lrx/b;->concat(Lrx/b;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public static concat(Lrx/b;Lrx/b;Lrx/b;Lrx/b;Lrx/b;Lrx/b;Lrx/b;Lrx/b;)Lrx/b;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/b",
            "<+TT;>;",
            "Lrx/b",
            "<+TT;>;",
            "Lrx/b",
            "<+TT;>;",
            "Lrx/b",
            "<+TT;>;",
            "Lrx/b",
            "<+TT;>;",
            "Lrx/b",
            "<+TT;>;",
            "Lrx/b",
            "<+TT;>;",
            "Lrx/b",
            "<+TT;>;)",
            "Lrx/b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1051
    invoke-static/range {p0 .. p7}, Lrx/b;->just(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lrx/b;

    move-result-object v0

    invoke-static {v0}, Lrx/b;->concat(Lrx/b;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public static concat(Lrx/b;Lrx/b;Lrx/b;Lrx/b;Lrx/b;Lrx/b;Lrx/b;Lrx/b;Lrx/b;)Lrx/b;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/b",
            "<+TT;>;",
            "Lrx/b",
            "<+TT;>;",
            "Lrx/b",
            "<+TT;>;",
            "Lrx/b",
            "<+TT;>;",
            "Lrx/b",
            "<+TT;>;",
            "Lrx/b",
            "<+TT;>;",
            "Lrx/b",
            "<+TT;>;",
            "Lrx/b",
            "<+TT;>;",
            "Lrx/b",
            "<+TT;>;)",
            "Lrx/b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1087
    invoke-static/range {p0 .. p8}, Lrx/b;->just(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lrx/b;

    move-result-object v0

    invoke-static {v0}, Lrx/b;->concat(Lrx/b;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public static concatEager(Ljava/lang/Iterable;)Lrx/b;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<+",
            "Lrx/b",
            "<+TT;>;>;)",
            "Lrx/b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 5002
    invoke-static {p0}, Lrx/b;->from(Ljava/lang/Iterable;)Lrx/b;

    move-result-object v0

    invoke-static {}, Lrx/internal/util/UtilityFunctions;->identity()Lrx/b/f;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/b;->concatMapEager(Lrx/b/f;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public static concatEager(Ljava/lang/Iterable;I)Lrx/b;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<+",
            "Lrx/b",
            "<+TT;>;>;I)",
            "Lrx/b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 5028
    invoke-static {p0}, Lrx/b;->from(Ljava/lang/Iterable;)Lrx/b;

    move-result-object v0

    invoke-static {}, Lrx/internal/util/UtilityFunctions;->identity()Lrx/b/f;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lrx/b;->concatMapEager(Lrx/b/f;I)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public static concatEager(Lrx/b;)Lrx/b;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/b",
            "<+",
            "Lrx/b",
            "<+TT;>;>;)",
            "Lrx/b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 5053
    invoke-static {}, Lrx/internal/util/UtilityFunctions;->identity()Lrx/b/f;

    move-result-object v0

    invoke-virtual {p0, v0}, Lrx/b;->concatMapEager(Lrx/b/f;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public static concatEager(Lrx/b;I)Lrx/b;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/b",
            "<+",
            "Lrx/b",
            "<+TT;>;>;I)",
            "Lrx/b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 5079
    invoke-static {}, Lrx/internal/util/UtilityFunctions;->identity()Lrx/b/f;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lrx/b;->concatMapEager(Lrx/b/f;I)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public static concatEager(Lrx/b;Lrx/b;)Lrx/b;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/b",
            "<+TT;>;",
            "Lrx/b",
            "<+TT;>;)",
            "Lrx/b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 4737
    const/4 v0, 0x2

    new-array v0, v0, [Lrx/b;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lrx/b;->concatEager(Ljava/lang/Iterable;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public static concatEager(Lrx/b;Lrx/b;Lrx/b;)Lrx/b;
    .locals 2
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/b",
            "<+TT;>;",
            "Lrx/b",
            "<+TT;>;",
            "Lrx/b",
            "<+TT;>;)",
            "Lrx/b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 4767
    const/4 v0, 0x3

    new-array v0, v0, [Lrx/b;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lrx/b;->concatEager(Ljava/lang/Iterable;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public static concatEager(Lrx/b;Lrx/b;Lrx/b;Lrx/b;)Lrx/b;
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/b",
            "<+TT;>;",
            "Lrx/b",
            "<+TT;>;",
            "Lrx/b",
            "<+TT;>;",
            "Lrx/b",
            "<+TT;>;)",
            "Lrx/b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 4798
    const/4 v0, 0x4

    new-array v0, v0, [Lrx/b;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    const/4 v1, 0x3

    aput-object p3, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lrx/b;->concatEager(Ljava/lang/Iterable;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public static concatEager(Lrx/b;Lrx/b;Lrx/b;Lrx/b;Lrx/b;)Lrx/b;
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/b",
            "<+TT;>;",
            "Lrx/b",
            "<+TT;>;",
            "Lrx/b",
            "<+TT;>;",
            "Lrx/b",
            "<+TT;>;",
            "Lrx/b",
            "<+TT;>;)",
            "Lrx/b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 4831
    const/4 v0, 0x5

    new-array v0, v0, [Lrx/b;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    const/4 v1, 0x3

    aput-object p3, v0, v1

    const/4 v1, 0x4

    aput-object p4, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lrx/b;->concatEager(Ljava/lang/Iterable;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public static concatEager(Lrx/b;Lrx/b;Lrx/b;Lrx/b;Lrx/b;Lrx/b;)Lrx/b;
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/b",
            "<+TT;>;",
            "Lrx/b",
            "<+TT;>;",
            "Lrx/b",
            "<+TT;>;",
            "Lrx/b",
            "<+TT;>;",
            "Lrx/b",
            "<+TT;>;",
            "Lrx/b",
            "<+TT;>;)",
            "Lrx/b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 4865
    const/4 v0, 0x6

    new-array v0, v0, [Lrx/b;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    const/4 v1, 0x3

    aput-object p3, v0, v1

    const/4 v1, 0x4

    aput-object p4, v0, v1

    const/4 v1, 0x5

    aput-object p5, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lrx/b;->concatEager(Ljava/lang/Iterable;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public static concatEager(Lrx/b;Lrx/b;Lrx/b;Lrx/b;Lrx/b;Lrx/b;Lrx/b;)Lrx/b;
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/b",
            "<+TT;>;",
            "Lrx/b",
            "<+TT;>;",
            "Lrx/b",
            "<+TT;>;",
            "Lrx/b",
            "<+TT;>;",
            "Lrx/b",
            "<+TT;>;",
            "Lrx/b",
            "<+TT;>;",
            "Lrx/b",
            "<+TT;>;)",
            "Lrx/b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 4901
    const/4 v0, 0x7

    new-array v0, v0, [Lrx/b;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    const/4 v1, 0x3

    aput-object p3, v0, v1

    const/4 v1, 0x4

    aput-object p4, v0, v1

    const/4 v1, 0x5

    aput-object p5, v0, v1

    const/4 v1, 0x6

    aput-object p6, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lrx/b;->concatEager(Ljava/lang/Iterable;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public static concatEager(Lrx/b;Lrx/b;Lrx/b;Lrx/b;Lrx/b;Lrx/b;Lrx/b;Lrx/b;)Lrx/b;
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/b",
            "<+TT;>;",
            "Lrx/b",
            "<+TT;>;",
            "Lrx/b",
            "<+TT;>;",
            "Lrx/b",
            "<+TT;>;",
            "Lrx/b",
            "<+TT;>;",
            "Lrx/b",
            "<+TT;>;",
            "Lrx/b",
            "<+TT;>;",
            "Lrx/b",
            "<+TT;>;)",
            "Lrx/b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 4938
    const/16 v0, 0x8

    new-array v0, v0, [Lrx/b;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    const/4 v1, 0x3

    aput-object p3, v0, v1

    const/4 v1, 0x4

    aput-object p4, v0, v1

    const/4 v1, 0x5

    aput-object p5, v0, v1

    const/4 v1, 0x6

    aput-object p6, v0, v1

    const/4 v1, 0x7

    aput-object p7, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lrx/b;->concatEager(Ljava/lang/Iterable;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public static concatEager(Lrx/b;Lrx/b;Lrx/b;Lrx/b;Lrx/b;Lrx/b;Lrx/b;Lrx/b;Lrx/b;)Lrx/b;
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/b",
            "<+TT;>;",
            "Lrx/b",
            "<+TT;>;",
            "Lrx/b",
            "<+TT;>;",
            "Lrx/b",
            "<+TT;>;",
            "Lrx/b",
            "<+TT;>;",
            "Lrx/b",
            "<+TT;>;",
            "Lrx/b",
            "<+TT;>;",
            "Lrx/b",
            "<+TT;>;",
            "Lrx/b",
            "<+TT;>;)",
            "Lrx/b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 4977
    const/16 v0, 0x9

    new-array v0, v0, [Lrx/b;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    const/4 v1, 0x3

    aput-object p3, v0, v1

    const/4 v1, 0x4

    aput-object p4, v0, v1

    const/4 v1, 0x5

    aput-object p5, v0, v1

    const/4 v1, 0x6

    aput-object p6, v0, v1

    const/4 v1, 0x7

    aput-object p7, v0, v1

    const/16 v1, 0x8

    aput-object p8, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lrx/b;->concatEager(Ljava/lang/Iterable;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public static create(Lrx/b$f;)Lrx/b;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/b$f",
            "<TT;>;)",
            "Lrx/b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 95
    new-instance v0, Lrx/b;

    sget-object v1, Lrx/b;->hook:Lrx/d/b;

    invoke-virtual {v1, p0}, Lrx/d/b;->a(Lrx/b$f;)Lrx/b$f;

    move-result-object v1

    invoke-direct {v0, v1}, Lrx/b;-><init>(Lrx/b$f;)V

    return-object v0
.end method

.method public static defer(Lrx/b/e;)Lrx/b;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/b/e",
            "<",
            "Lrx/b",
            "<TT;>;>;)",
            "Lrx/b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1115
    new-instance v0, Lrx/internal/operators/c;

    invoke-direct {v0, p0}, Lrx/internal/operators/c;-><init>(Lrx/b/e;)V

    invoke-static {v0}, Lrx/b;->create(Lrx/b$f;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public static empty()Lrx/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lrx/b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1146
    sget-object v0, Lrx/b$c;->a:Lrx/b;

    return-object v0
.end method

.method public static error(Ljava/lang/Throwable;)Lrx/b;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Throwable;",
            ")",
            "Lrx/b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1168
    new-instance v0, Lrx/b$h;

    invoke-direct {v0, p0}, Lrx/b$h;-><init>(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static from(Ljava/lang/Iterable;)Lrx/b;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<+TT;>;)",
            "Lrx/b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1276
    new-instance v0, Lrx/internal/operators/OnSubscribeFromIterable;

    invoke-direct {v0, p0}, Lrx/internal/operators/OnSubscribeFromIterable;-><init>(Ljava/lang/Iterable;)V

    invoke-static {v0}, Lrx/b;->create(Lrx/b$f;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public static from(Ljava/util/concurrent/Future;)Lrx/b;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Future",
            "<+TT;>;)",
            "Lrx/b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1195
    invoke-static {p0}, Lrx/internal/operators/o;->a(Ljava/util/concurrent/Future;)Lrx/b$f;

    move-result-object v0

    invoke-static {v0}, Lrx/b;->create(Lrx/b$f;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public static from(Ljava/util/concurrent/Future;JLjava/util/concurrent/TimeUnit;)Lrx/b;
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Future",
            "<+TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lrx/b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1226
    invoke-static {p0, p1, p2, p3}, Lrx/internal/operators/o;->a(Ljava/util/concurrent/Future;JLjava/util/concurrent/TimeUnit;)Lrx/b$f;

    move-result-object v0

    invoke-static {v0}, Lrx/b;->create(Lrx/b$f;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public static from(Ljava/util/concurrent/Future;Lrx/e;)Lrx/b;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Future",
            "<+TT;>;",
            "Lrx/e;",
            ")",
            "Lrx/b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1255
    invoke-static {p0}, Lrx/internal/operators/o;->a(Ljava/util/concurrent/Future;)Lrx/b$f;

    move-result-object v0

    invoke-static {v0}, Lrx/b;->create(Lrx/b$f;)Lrx/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lrx/b;->subscribeOn(Lrx/e;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public static from([Ljava/lang/Object;)Lrx/b;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Lrx/b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1296
    array-length v0, p0

    .line 1297
    if-nez v0, :cond_0

    .line 1298
    invoke-static {}, Lrx/b;->empty()Lrx/b;

    move-result-object v0

    .line 1303
    :goto_0
    return-object v0

    .line 1300
    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1301
    const/4 v0, 0x0

    aget-object v0, p0, v0

    invoke-static {v0}, Lrx/b;->just(Ljava/lang/Object;)Lrx/b;

    move-result-object v0

    goto :goto_0

    .line 1303
    :cond_1
    new-instance v0, Lrx/internal/operators/OnSubscribeFromArray;

    invoke-direct {v0, p0}, Lrx/internal/operators/OnSubscribeFromArray;-><init>([Ljava/lang/Object;)V

    invoke-static {v0}, Lrx/b;->create(Lrx/b$f;)Lrx/b;

    move-result-object v0

    goto :goto_0
.end method

.method public static fromCallable(Ljava/util/concurrent/Callable;)Lrx/b;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<+TT;>;)",
            "Lrx/b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1330
    new-instance v0, Lrx/internal/operators/g;

    invoke-direct {v0, p0}, Lrx/internal/operators/g;-><init>(Ljava/util/concurrent/Callable;)V

    invoke-static {v0}, Lrx/b;->create(Lrx/b$f;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public static interval(JJLjava/util/concurrent/TimeUnit;)Lrx/b;
    .locals 6
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lrx/b",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1401
    invoke-static {}, Lrx/schedulers/Schedulers;->computation()Lrx/e;

    move-result-object v5

    move-wide v0, p0

    move-wide v2, p2

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lrx/b;->interval(JJLjava/util/concurrent/TimeUnit;Lrx/e;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public static interval(JJLjava/util/concurrent/TimeUnit;Lrx/e;)Lrx/b;
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Lrx/e;",
            ")",
            "Lrx/b",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1431
    new-instance v1, Lrx/internal/operators/n;

    move-wide v2, p0

    move-wide v4, p2

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lrx/internal/operators/n;-><init>(JJLjava/util/concurrent/TimeUnit;Lrx/e;)V

    invoke-static {v1}, Lrx/b;->create(Lrx/b$f;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public static interval(JLjava/util/concurrent/TimeUnit;)Lrx/b;
    .locals 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lrx/b",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1350
    invoke-static {}, Lrx/schedulers/Schedulers;->computation()Lrx/e;

    move-result-object v5

    move-wide v0, p0

    move-wide v2, p0

    move-object v4, p2

    invoke-static/range {v0 .. v5}, Lrx/b;->interval(JJLjava/util/concurrent/TimeUnit;Lrx/e;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public static interval(JLjava/util/concurrent/TimeUnit;Lrx/e;)Lrx/b;
    .locals 6
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lrx/e;",
            ")",
            "Lrx/b",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1373
    move-wide v0, p0

    move-wide v2, p0

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lrx/b;->interval(JJLjava/util/concurrent/TimeUnit;Lrx/e;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public static just(Ljava/lang/Object;)Lrx/b;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lrx/b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1459
    invoke-static {p0}, Lrx/internal/util/ScalarSynchronousObservable;->create(Ljava/lang/Object;)Lrx/internal/util/ScalarSynchronousObservable;

    move-result-object v0

    return-object v0
.end method

.method public static just(Ljava/lang/Object;Ljava/lang/Object;)Lrx/b;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;)",
            "Lrx/b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1483
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    check-cast v0, [Ljava/lang/Object;

    invoke-static {v0}, Lrx/b;->from([Ljava/lang/Object;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public static just(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lrx/b;
    .locals 2
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;TT;)",
            "Lrx/b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1509
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    check-cast v0, [Ljava/lang/Object;

    invoke-static {v0}, Lrx/b;->from([Ljava/lang/Object;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public static just(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lrx/b;
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;TT;TT;)",
            "Lrx/b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1537
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    const/4 v1, 0x3

    aput-object p3, v0, v1

    check-cast v0, [Ljava/lang/Object;

    invoke-static {v0}, Lrx/b;->from([Ljava/lang/Object;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public static just(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lrx/b;
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;TT;TT;TT;)",
            "Lrx/b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1567
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    const/4 v1, 0x3

    aput-object p3, v0, v1

    const/4 v1, 0x4

    aput-object p4, v0, v1

    check-cast v0, [Ljava/lang/Object;

    invoke-static {v0}, Lrx/b;->from([Ljava/lang/Object;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public static just(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lrx/b;
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;TT;TT;TT;TT;)",
            "Lrx/b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1599
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    const/4 v1, 0x3

    aput-object p3, v0, v1

    const/4 v1, 0x4

    aput-object p4, v0, v1

    const/4 v1, 0x5

    aput-object p5, v0, v1

    check-cast v0, [Ljava/lang/Object;

    invoke-static {v0}, Lrx/b;->from([Ljava/lang/Object;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public static just(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lrx/b;
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;TT;TT;TT;TT;TT;)",
            "Lrx/b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1633
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    const/4 v1, 0x3

    aput-object p3, v0, v1

    const/4 v1, 0x4

    aput-object p4, v0, v1

    const/4 v1, 0x5

    aput-object p5, v0, v1

    const/4 v1, 0x6

    aput-object p6, v0, v1

    check-cast v0, [Ljava/lang/Object;

    invoke-static {v0}, Lrx/b;->from([Ljava/lang/Object;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public static just(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lrx/b;
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;TT;TT;TT;TT;TT;TT;)",
            "Lrx/b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1669
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    const/4 v1, 0x3

    aput-object p3, v0, v1

    const/4 v1, 0x4

    aput-object p4, v0, v1

    const/4 v1, 0x5

    aput-object p5, v0, v1

    const/4 v1, 0x6

    aput-object p6, v0, v1

    const/4 v1, 0x7

    aput-object p7, v0, v1

    check-cast v0, [Ljava/lang/Object;

    invoke-static {v0}, Lrx/b;->from([Ljava/lang/Object;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public static just(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lrx/b;
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;TT;TT;TT;TT;TT;TT;TT;)",
            "Lrx/b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1707
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    const/4 v1, 0x3

    aput-object p3, v0, v1

    const/4 v1, 0x4

    aput-object p4, v0, v1

    const/4 v1, 0x5

    aput-object p5, v0, v1

    const/4 v1, 0x6

    aput-object p6, v0, v1

    const/4 v1, 0x7

    aput-object p7, v0, v1

    const/16 v1, 0x8

    aput-object p8, v0, v1

    check-cast v0, [Ljava/lang/Object;

    invoke-static {v0}, Lrx/b;->from([Ljava/lang/Object;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public static just(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lrx/b;
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;TT;TT;TT;TT;TT;TT;TT;TT;)",
            "Lrx/b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1747
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    const/4 v1, 0x3

    aput-object p3, v0, v1

    const/4 v1, 0x4

    aput-object p4, v0, v1

    const/4 v1, 0x5

    aput-object p5, v0, v1

    const/4 v1, 0x6

    aput-object p6, v0, v1

    const/4 v1, 0x7

    aput-object p7, v0, v1

    const/16 v1, 0x8

    aput-object p8, v0, v1

    const/16 v1, 0x9

    aput-object p9, v0, v1

    check-cast v0, [Ljava/lang/Object;

    invoke-static {v0}, Lrx/b;->from([Ljava/lang/Object;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method private mapNotification(Lrx/b/f;Lrx/b/f;Lrx/b/e;)Lrx/b;
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/b/f",
            "<-TT;+TR;>;",
            "Lrx/b/f",
            "<-",
            "Ljava/lang/Throwable;",
            "+TR;>;",
            "Lrx/b/e",
            "<+TR;>;)",
            "Lrx/b",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 5958
    new-instance v0, Lrx/internal/operators/OperatorMapNotification;

    invoke-direct {v0, p1, p2, p3}, Lrx/internal/operators/OperatorMapNotification;-><init>(Lrx/b/f;Lrx/b/f;Lrx/b/e;)V

    invoke-virtual {p0, v0}, Lrx/b;->lift(Lrx/b$g;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public static merge(Ljava/lang/Iterable;)Lrx/b;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<+",
            "Lrx/b",
            "<+TT;>;>;)",
            "Lrx/b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1769
    invoke-static {p0}, Lrx/b;->from(Ljava/lang/Iterable;)Lrx/b;

    move-result-object v0

    invoke-static {v0}, Lrx/b;->merge(Lrx/b;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public static merge(Ljava/lang/Iterable;I)Lrx/b;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<+",
            "Lrx/b",
            "<+TT;>;>;I)",
            "Lrx/b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1796
    invoke-static {p0}, Lrx/b;->from(Ljava/lang/Iterable;)Lrx/b;

    move-result-object v0

    invoke-static {v0, p1}, Lrx/b;->merge(Lrx/b;I)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public static merge(Lrx/b;)Lrx/b;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/b",
            "<+",
            "Lrx/b",
            "<+TT;>;>;)",
            "Lrx/b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1820
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lrx/internal/util/ScalarSynchronousObservable;

    if-ne v0, v1, :cond_0

    .line 1821
    check-cast p0, Lrx/internal/util/ScalarSynchronousObservable;

    invoke-static {}, Lrx/internal/util/UtilityFunctions;->identity()Lrx/b/f;

    move-result-object v0

    invoke-virtual {p0, v0}, Lrx/internal/util/ScalarSynchronousObservable;->scalarFlatMap(Lrx/b/f;)Lrx/b;

    move-result-object v0

    .line 1823
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lrx/internal/operators/OperatorMerge;->a(Z)Lrx/internal/operators/OperatorMerge;

    move-result-object v0

    invoke-virtual {p0, v0}, Lrx/b;->lift(Lrx/b$g;)Lrx/b;

    move-result-object v0

    goto :goto_0
.end method

.method public static merge(Lrx/b;I)Lrx/b;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/b",
            "<+",
            "Lrx/b",
            "<+TT;>;>;I)",
            "Lrx/b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1853
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lrx/internal/util/ScalarSynchronousObservable;

    if-ne v0, v1, :cond_0

    .line 1854
    check-cast p0, Lrx/internal/util/ScalarSynchronousObservable;

    invoke-static {}, Lrx/internal/util/UtilityFunctions;->identity()Lrx/b/f;

    move-result-object v0

    invoke-virtual {p0, v0}, Lrx/internal/util/ScalarSynchronousObservable;->scalarFlatMap(Lrx/b/f;)Lrx/b;

    move-result-object v0

    .line 1856
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0, p1}, Lrx/internal/operators/OperatorMerge;->a(ZI)Lrx/internal/operators/OperatorMerge;

    move-result-object v0

    invoke-virtual {p0, v0}, Lrx/b;->lift(Lrx/b$g;)Lrx/b;

    move-result-object v0

    goto :goto_0
.end method

.method public static merge(Lrx/b;Lrx/b;)Lrx/b;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/b",
            "<+TT;>;",
            "Lrx/b",
            "<+TT;>;)",
            "Lrx/b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1880
    const/4 v0, 0x2

    new-array v0, v0, [Lrx/b;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-static {v0}, Lrx/b;->merge([Lrx/b;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public static merge(Lrx/b;Lrx/b;Lrx/b;)Lrx/b;
    .locals 2
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/b",
            "<+TT;>;",
            "Lrx/b",
            "<+TT;>;",
            "Lrx/b",
            "<+TT;>;)",
            "Lrx/b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1906
    const/4 v0, 0x3

    new-array v0, v0, [Lrx/b;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    invoke-static {v0}, Lrx/b;->merge([Lrx/b;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public static merge(Lrx/b;Lrx/b;Lrx/b;Lrx/b;)Lrx/b;
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/b",
            "<+TT;>;",
            "Lrx/b",
            "<+TT;>;",
            "Lrx/b",
            "<+TT;>;",
            "Lrx/b",
            "<+TT;>;)",
            "Lrx/b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1934
    const/4 v0, 0x4

    new-array v0, v0, [Lrx/b;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    const/4 v1, 0x3

    aput-object p3, v0, v1

    invoke-static {v0}, Lrx/b;->merge([Lrx/b;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public static merge(Lrx/b;Lrx/b;Lrx/b;Lrx/b;Lrx/b;)Lrx/b;
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/b",
            "<+TT;>;",
            "Lrx/b",
            "<+TT;>;",
            "Lrx/b",
            "<+TT;>;",
            "Lrx/b",
            "<+TT;>;",
            "Lrx/b",
            "<+TT;>;)",
            "Lrx/b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1964
    const/4 v0, 0x5

    new-array v0, v0, [Lrx/b;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    const/4 v1, 0x3

    aput-object p3, v0, v1

    const/4 v1, 0x4

    aput-object p4, v0, v1

    invoke-static {v0}, Lrx/b;->merge([Lrx/b;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public static merge(Lrx/b;Lrx/b;Lrx/b;Lrx/b;Lrx/b;Lrx/b;)Lrx/b;
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/b",
            "<+TT;>;",
            "Lrx/b",
            "<+TT;>;",
            "Lrx/b",
            "<+TT;>;",
            "Lrx/b",
            "<+TT;>;",
            "Lrx/b",
            "<+TT;>;",
            "Lrx/b",
            "<+TT;>;)",
            "Lrx/b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1996
    const/4 v0, 0x6

    new-array v0, v0, [Lrx/b;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    const/4 v1, 0x3

    aput-object p3, v0, v1

    const/4 v1, 0x4

    aput-object p4, v0, v1

    const/4 v1, 0x5

    aput-object p5, v0, v1

    invoke-static {v0}, Lrx/b;->merge([Lrx/b;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public static merge(Lrx/b;Lrx/b;Lrx/b;Lrx/b;Lrx/b;Lrx/b;Lrx/b;)Lrx/b;
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/b",
            "<+TT;>;",
            "Lrx/b",
            "<+TT;>;",
            "Lrx/b",
            "<+TT;>;",
            "Lrx/b",
            "<+TT;>;",
            "Lrx/b",
            "<+TT;>;",
            "Lrx/b",
            "<+TT;>;",
            "Lrx/b",
            "<+TT;>;)",
            "Lrx/b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2030
    const/4 v0, 0x7

    new-array v0, v0, [Lrx/b;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    const/4 v1, 0x3

    aput-object p3, v0, v1

    const/4 v1, 0x4

    aput-object p4, v0, v1

    const/4 v1, 0x5

    aput-object p5, v0, v1

    const/4 v1, 0x6

    aput-object p6, v0, v1

    invoke-static {v0}, Lrx/b;->merge([Lrx/b;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public static merge(Lrx/b;Lrx/b;Lrx/b;Lrx/b;Lrx/b;Lrx/b;Lrx/b;Lrx/b;)Lrx/b;
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/b",
            "<+TT;>;",
            "Lrx/b",
            "<+TT;>;",
            "Lrx/b",
            "<+TT;>;",
            "Lrx/b",
            "<+TT;>;",
            "Lrx/b",
            "<+TT;>;",
            "Lrx/b",
            "<+TT;>;",
            "Lrx/b",
            "<+TT;>;",
            "Lrx/b",
            "<+TT;>;)",
            "Lrx/b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2066
    const/16 v0, 0x8

    new-array v0, v0, [Lrx/b;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    const/4 v1, 0x3

    aput-object p3, v0, v1

    const/4 v1, 0x4

    aput-object p4, v0, v1

    const/4 v1, 0x5

    aput-object p5, v0, v1

    const/4 v1, 0x6

    aput-object p6, v0, v1

    const/4 v1, 0x7

    aput-object p7, v0, v1

    invoke-static {v0}, Lrx/b;->merge([Lrx/b;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public static merge(Lrx/b;Lrx/b;Lrx/b;Lrx/b;Lrx/b;Lrx/b;Lrx/b;Lrx/b;Lrx/b;)Lrx/b;
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/b",
            "<+TT;>;",
            "Lrx/b",
            "<+TT;>;",
            "Lrx/b",
            "<+TT;>;",
            "Lrx/b",
            "<+TT;>;",
            "Lrx/b",
            "<+TT;>;",
            "Lrx/b",
            "<+TT;>;",
            "Lrx/b",
            "<+TT;>;",
            "Lrx/b",
            "<+TT;>;",
            "Lrx/b",
            "<+TT;>;)",
            "Lrx/b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2104
    const/16 v0, 0x9

    new-array v0, v0, [Lrx/b;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    const/4 v1, 0x3

    aput-object p3, v0, v1

    const/4 v1, 0x4

    aput-object p4, v0, v1

    const/4 v1, 0x5

    aput-object p5, v0, v1

    const/4 v1, 0x6

    aput-object p6, v0, v1

    const/4 v1, 0x7

    aput-object p7, v0, v1

    const/16 v1, 0x8

    aput-object p8, v0, v1

    invoke-static {v0}, Lrx/b;->merge([Lrx/b;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public static merge([Lrx/b;)Lrx/b;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Lrx/b",
            "<+TT;>;)",
            "Lrx/b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2125
    invoke-static {p0}, Lrx/b;->from([Ljava/lang/Object;)Lrx/b;

    move-result-object v0

    invoke-static {v0}, Lrx/b;->merge(Lrx/b;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public static merge([Lrx/b;I)Lrx/b;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Lrx/b",
            "<+TT;>;I)",
            "Lrx/b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2150
    invoke-static {p0}, Lrx/b;->from([Ljava/lang/Object;)Lrx/b;

    move-result-object v0

    invoke-static {v0, p1}, Lrx/b;->merge(Lrx/b;I)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public static mergeDelayError(Ljava/lang/Iterable;)Lrx/b;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<+",
            "Lrx/b",
            "<+TT;>;>;)",
            "Lrx/b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2239
    invoke-static {p0}, Lrx/b;->from(Ljava/lang/Iterable;)Lrx/b;

    move-result-object v0

    invoke-static {v0}, Lrx/b;->mergeDelayError(Lrx/b;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public static mergeDelayError(Ljava/lang/Iterable;I)Lrx/b;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<+",
            "Lrx/b",
            "<+TT;>;>;I)",
            "Lrx/b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2269
    invoke-static {p0}, Lrx/b;->from(Ljava/lang/Iterable;)Lrx/b;

    move-result-object v0

    invoke-static {v0, p1}, Lrx/b;->mergeDelayError(Lrx/b;I)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public static mergeDelayError(Lrx/b;)Lrx/b;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/b",
            "<+",
            "Lrx/b",
            "<+TT;>;>;)",
            "Lrx/b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2178
    const/4 v0, 0x1

    invoke-static {v0}, Lrx/internal/operators/OperatorMerge;->a(Z)Lrx/internal/operators/OperatorMerge;

    move-result-object v0

    invoke-virtual {p0, v0}, Lrx/b;->lift(Lrx/b$g;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public static mergeDelayError(Lrx/b;I)Lrx/b;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/b",
            "<+",
            "Lrx/b",
            "<+TT;>;>;I)",
            "Lrx/b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2211
    const/4 v0, 0x1

    invoke-static {v0, p1}, Lrx/internal/operators/OperatorMerge;->a(ZI)Lrx/internal/operators/OperatorMerge;

    move-result-object v0

    invoke-virtual {p0, v0}, Lrx/b;->lift(Lrx/b$g;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public static mergeDelayError(Lrx/b;Lrx/b;)Lrx/b;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/b",
            "<+TT;>;",
            "Lrx/b",
            "<+TT;>;)",
            "Lrx/b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2299
    invoke-static {p0, p1}, Lrx/b;->just(Ljava/lang/Object;Ljava/lang/Object;)Lrx/b;

    move-result-object v0

    invoke-static {v0}, Lrx/b;->mergeDelayError(Lrx/b;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public static mergeDelayError(Lrx/b;Lrx/b;Lrx/b;)Lrx/b;
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/b",
            "<+TT;>;",
            "Lrx/b",
            "<+TT;>;",
            "Lrx/b",
            "<+TT;>;)",
            "Lrx/b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2331
    invoke-static {p0, p1, p2}, Lrx/b;->just(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lrx/b;

    move-result-object v0

    invoke-static {v0}, Lrx/b;->mergeDelayError(Lrx/b;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public static mergeDelayError(Lrx/b;Lrx/b;Lrx/b;Lrx/b;)Lrx/b;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/b",
            "<+TT;>;",
            "Lrx/b",
            "<+TT;>;",
            "Lrx/b",
            "<+TT;>;",
            "Lrx/b",
            "<+TT;>;)",
            "Lrx/b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2365
    invoke-static {p0, p1, p2, p3}, Lrx/b;->just(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lrx/b;

    move-result-object v0

    invoke-static {v0}, Lrx/b;->mergeDelayError(Lrx/b;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public static mergeDelayError(Lrx/b;Lrx/b;Lrx/b;Lrx/b;Lrx/b;)Lrx/b;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/b",
            "<+TT;>;",
            "Lrx/b",
            "<+TT;>;",
            "Lrx/b",
            "<+TT;>;",
            "Lrx/b",
            "<+TT;>;",
            "Lrx/b",
            "<+TT;>;)",
            "Lrx/b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2401
    invoke-static {p0, p1, p2, p3, p4}, Lrx/b;->just(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lrx/b;

    move-result-object v0

    invoke-static {v0}, Lrx/b;->mergeDelayError(Lrx/b;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public static mergeDelayError(Lrx/b;Lrx/b;Lrx/b;Lrx/b;Lrx/b;Lrx/b;)Lrx/b;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/b",
            "<+TT;>;",
            "Lrx/b",
            "<+TT;>;",
            "Lrx/b",
            "<+TT;>;",
            "Lrx/b",
            "<+TT;>;",
            "Lrx/b",
            "<+TT;>;",
            "Lrx/b",
            "<+TT;>;)",
            "Lrx/b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2439
    invoke-static/range {p0 .. p5}, Lrx/b;->just(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lrx/b;

    move-result-object v0

    invoke-static {v0}, Lrx/b;->mergeDelayError(Lrx/b;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public static mergeDelayError(Lrx/b;Lrx/b;Lrx/b;Lrx/b;Lrx/b;Lrx/b;Lrx/b;)Lrx/b;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/b",
            "<+TT;>;",
            "Lrx/b",
            "<+TT;>;",
            "Lrx/b",
            "<+TT;>;",
            "Lrx/b",
            "<+TT;>;",
            "Lrx/b",
            "<+TT;>;",
            "Lrx/b",
            "<+TT;>;",
            "Lrx/b",
            "<+TT;>;)",
            "Lrx/b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2480
    invoke-static/range {p0 .. p6}, Lrx/b;->just(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lrx/b;

    move-result-object v0

    invoke-static {v0}, Lrx/b;->mergeDelayError(Lrx/b;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public static mergeDelayError(Lrx/b;Lrx/b;Lrx/b;Lrx/b;Lrx/b;Lrx/b;Lrx/b;Lrx/b;)Lrx/b;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/b",
            "<+TT;>;",
            "Lrx/b",
            "<+TT;>;",
            "Lrx/b",
            "<+TT;>;",
            "Lrx/b",
            "<+TT;>;",
            "Lrx/b",
            "<+TT;>;",
            "Lrx/b",
            "<+TT;>;",
            "Lrx/b",
            "<+TT;>;",
            "Lrx/b",
            "<+TT;>;)",
            "Lrx/b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2523
    invoke-static/range {p0 .. p7}, Lrx/b;->just(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lrx/b;

    move-result-object v0

    invoke-static {v0}, Lrx/b;->mergeDelayError(Lrx/b;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public static mergeDelayError(Lrx/b;Lrx/b;Lrx/b;Lrx/b;Lrx/b;Lrx/b;Lrx/b;Lrx/b;Lrx/b;)Lrx/b;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/b",
            "<+TT;>;",
            "Lrx/b",
            "<+TT;>;",
            "Lrx/b",
            "<+TT;>;",
            "Lrx/b",
            "<+TT;>;",
            "Lrx/b",
            "<+TT;>;",
            "Lrx/b",
            "<+TT;>;",
            "Lrx/b",
            "<+TT;>;",
            "Lrx/b",
            "<+TT;>;",
            "Lrx/b",
            "<+TT;>;)",
            "Lrx/b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2567
    invoke-static/range {p0 .. p8}, Lrx/b;->just(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lrx/b;

    move-result-object v0

    invoke-static {v0}, Lrx/b;->mergeDelayError(Lrx/b;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public static never()Lrx/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lrx/b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2604
    invoke-static {}, Lrx/b$e;->a()Lrx/b$e;

    move-result-object v0

    return-object v0
.end method

.method public static range(II)Lrx/b;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lrx/b",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2627
    if-gez p1, :cond_0

    .line 2628
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Count can not be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2630
    :cond_0
    if-nez p1, :cond_1

    .line 2631
    invoke-static {}, Lrx/b;->empty()Lrx/b;

    move-result-object v0

    .line 2639
    :goto_0
    return-object v0

    .line 2633
    :cond_1
    const v0, 0x7fffffff

    sub-int/2addr v0, p1

    add-int/lit8 v0, v0, 0x1

    if-le p0, v0, :cond_2

    .line 2634
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "start + count can not exceed Integer.MAX_VALUE"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2636
    :cond_2
    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    .line 2637
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lrx/b;->just(Ljava/lang/Object;)Lrx/b;

    move-result-object v0

    goto :goto_0

    .line 2639
    :cond_3
    new-instance v0, Lrx/internal/operators/OnSubscribeRange;

    add-int/lit8 v1, p1, -0x1

    add-int/2addr v1, p0

    invoke-direct {v0, p0, v1}, Lrx/internal/operators/OnSubscribeRange;-><init>(II)V

    invoke-static {v0}, Lrx/b;->create(Lrx/b$f;)Lrx/b;

    move-result-object v0

    goto :goto_0
.end method

.method public static range(IILrx/e;)Lrx/b;
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lrx/e;",
            ")",
            "Lrx/b",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2662
    invoke-static {p0, p1}, Lrx/b;->range(II)Lrx/b;

    move-result-object v0

    invoke-virtual {v0, p2}, Lrx/b;->subscribeOn(Lrx/e;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public static sequenceEqual(Lrx/b;Lrx/b;)Lrx/b;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/b",
            "<+TT;>;",
            "Lrx/b",
            "<+TT;>;)",
            "Lrx/b",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2685
    new-instance v0, Lrx/b$23;

    invoke-direct {v0}, Lrx/b$23;-><init>()V

    invoke-static {p0, p1, v0}, Lrx/b;->sequenceEqual(Lrx/b;Lrx/b;Lrx/b/g;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public static sequenceEqual(Lrx/b;Lrx/b;Lrx/b/g;)Lrx/b;
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/b",
            "<+TT;>;",
            "Lrx/b",
            "<+TT;>;",
            "Lrx/b/g",
            "<-TT;-TT;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lrx/b",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2720
    invoke-static {p0, p1, p2}, Lrx/internal/operators/ax;->a(Lrx/b;Lrx/b;Lrx/b/g;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method private static subscribe(Lrx/h;Lrx/b;)Lrx/i;
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/h",
            "<-TT;>;",
            "Lrx/b",
            "<TT;>;)",
            "Lrx/i;"
        }
    .end annotation

    .prologue
    .line 8379
    if-nez p0, :cond_0

    .line 8380
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "observer can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8382
    :cond_0
    iget-object v0, p1, Lrx/b;->onSubscribe:Lrx/b$f;

    if-nez v0, :cond_1

    .line 8383
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "onSubscribe function can not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8391
    :cond_1
    invoke-virtual {p0}, Lrx/h;->onStart()V

    .line 8398
    instance-of v0, p0, Lrx/c/b;

    if-nez v0, :cond_2

    .line 8400
    new-instance v0, Lrx/c/b;

    invoke-direct {v0, p0}, Lrx/c/b;-><init>(Lrx/h;)V

    move-object p0, v0

    .line 8407
    :cond_2
    :try_start_0
    sget-object v0, Lrx/b;->hook:Lrx/d/b;

    iget-object v1, p1, Lrx/b;->onSubscribe:Lrx/b$f;

    invoke-virtual {v0, p1, v1}, Lrx/d/b;->a(Lrx/b;Lrx/b$f;)Lrx/b$f;

    move-result-object v0

    invoke-interface {v0, p0}, Lrx/b$f;->call(Ljava/lang/Object;)V

    .line 8408
    sget-object v0, Lrx/b;->hook:Lrx/d/b;

    invoke-virtual {v0, p0}, Lrx/d/b;->a(Lrx/i;)Lrx/i;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 8425
    :goto_0
    return-object v0

    .line 8409
    :catch_0
    move-exception v0

    .line 8411
    invoke-static {v0}, Lrx/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 8414
    :try_start_1
    sget-object v1, Lrx/b;->hook:Lrx/d/b;

    invoke-virtual {v1, v0}, Lrx/d/b;->a(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lrx/h;->onError(Ljava/lang/Throwable;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 8425
    invoke-static {}, Lrx/subscriptions/e;->b()Lrx/i;

    move-result-object v0

    goto :goto_0

    .line 8415
    :catch_1
    move-exception v1

    .line 8416
    invoke-static {v1}, Lrx/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 8419
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error occurred attempting to subscribe ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "] and then again while trying to pass to onError."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 8421
    sget-object v0, Lrx/b;->hook:Lrx/d/b;

    invoke-virtual {v0, v2}, Lrx/d/b;->a(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 8423
    throw v2
.end method

.method public static switchOnNext(Lrx/b;)Lrx/b;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/b",
            "<+",
            "Lrx/b",
            "<+TT;>;>;)",
            "Lrx/b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2746
    invoke-static {}, Lrx/internal/operators/bh;->a()Lrx/internal/operators/bh;

    move-result-object v0

    invoke-virtual {p0, v0}, Lrx/b;->lift(Lrx/b$g;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public static timer(JJLjava/util/concurrent/TimeUnit;)Lrx/b;
    .locals 6
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lrx/b",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2775
    invoke-static {}, Lrx/schedulers/Schedulers;->computation()Lrx/e;

    move-result-object v5

    move-wide v0, p0

    move-wide v2, p2

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lrx/b;->interval(JJLjava/util/concurrent/TimeUnit;Lrx/e;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public static timer(JJLjava/util/concurrent/TimeUnit;Lrx/e;)Lrx/b;
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Lrx/e;",
            ")",
            "Lrx/b",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2806
    invoke-static/range {p0 .. p5}, Lrx/b;->interval(JJLjava/util/concurrent/TimeUnit;Lrx/e;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public static timer(JLjava/util/concurrent/TimeUnit;)Lrx/b;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lrx/b",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2829
    invoke-static {}, Lrx/schedulers/Schedulers;->computation()Lrx/e;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lrx/b;->timer(JLjava/util/concurrent/TimeUnit;Lrx/e;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public static timer(JLjava/util/concurrent/TimeUnit;Lrx/e;)Lrx/b;
    .locals 2
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lrx/e;",
            ")",
            "Lrx/b",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2856
    new-instance v0, Lrx/internal/operators/m;

    invoke-direct {v0, p0, p1, p2, p3}, Lrx/internal/operators/m;-><init>(JLjava/util/concurrent/TimeUnit;Lrx/e;)V

    invoke-static {v0}, Lrx/b;->create(Lrx/b$f;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public static using(Lrx/b/e;Lrx/b/f;Lrx/b/b;)Lrx/b;
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "Resource:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/b/e",
            "<TResource;>;",
            "Lrx/b/f",
            "<-TResource;+",
            "Lrx/b",
            "<+TT;>;>;",
            "Lrx/b/b",
            "<-TResource;>;)",
            "Lrx/b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2881
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lrx/b;->using(Lrx/b/e;Lrx/b/f;Lrx/b/b;Z)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public static using(Lrx/b/e;Lrx/b/f;Lrx/b/b;Z)Lrx/b;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "Resource:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/b/e",
            "<TResource;>;",
            "Lrx/b/f",
            "<-TResource;+",
            "Lrx/b",
            "<+TT;>;>;",
            "Lrx/b/b",
            "<-TResource;>;Z)",
            "Lrx/b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2917
    new-instance v0, Lrx/internal/operators/OnSubscribeUsing;

    invoke-direct {v0, p0, p1, p2, p3}, Lrx/internal/operators/OnSubscribeUsing;-><init>(Lrx/b/e;Lrx/b/f;Lrx/b/b;Z)V

    invoke-static {v0}, Lrx/b;->create(Lrx/b$f;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public static zip(Ljava/lang/Iterable;Lrx/b/o;)Lrx/b;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<+",
            "Lrx/b",
            "<*>;>;",
            "Lrx/b/o",
            "<+TR;>;)",
            "Lrx/b",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 2947
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2948
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/b;

    .line 2949
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2951
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lrx/b;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lrx/b;->just(Ljava/lang/Object;)Lrx/b;

    move-result-object v0

    new-instance v1, Lrx/internal/operators/OperatorZip;

    invoke-direct {v1, p1}, Lrx/internal/operators/OperatorZip;-><init>(Lrx/b/o;)V

    invoke-virtual {v0, v1}, Lrx/b;->lift(Lrx/b$g;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public static zip(Lrx/b;Lrx/b/o;)Lrx/b;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/b",
            "<+",
            "Lrx/b",
            "<*>;>;",
            "Lrx/b/o",
            "<+TR;>;)",
            "Lrx/b",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 2981
    invoke-virtual {p0}, Lrx/b;->toList()Lrx/b;

    move-result-object v0

    new-instance v1, Lrx/b$25;

    invoke-direct {v1}, Lrx/b$25;-><init>()V

    invoke-virtual {v0, v1}, Lrx/b;->map(Lrx/b/f;)Lrx/b;

    move-result-object v0

    new-instance v1, Lrx/internal/operators/OperatorZip;

    invoke-direct {v1, p1}, Lrx/internal/operators/OperatorZip;-><init>(Lrx/b/o;)V

    invoke-virtual {v0, v1}, Lrx/b;->lift(Lrx/b$g;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public static zip(Lrx/b;Lrx/b;Lrx/b/g;)Lrx/b;
    .locals 2
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/b",
            "<+TT1;>;",
            "Lrx/b",
            "<+TT2;>;",
            "Lrx/b/g",
            "<-TT1;-TT2;+TR;>;)",
            "Lrx/b",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 3021
    const/4 v0, 0x2

    new-array v0, v0, [Lrx/b;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-static {v0}, Lrx/b;->just(Ljava/lang/Object;)Lrx/b;

    move-result-object v0

    new-instance v1, Lrx/internal/operators/OperatorZip;

    invoke-direct {v1, p2}, Lrx/internal/operators/OperatorZip;-><init>(Lrx/b/g;)V

    invoke-virtual {v0, v1}, Lrx/b;->lift(Lrx/b$g;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public static zip(Lrx/b;Lrx/b;Lrx/b;Lrx/b/h;)Lrx/b;
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/b",
            "<+TT1;>;",
            "Lrx/b",
            "<+TT2;>;",
            "Lrx/b",
            "<+TT3;>;",
            "Lrx/b/h",
            "<-TT1;-TT2;-TT3;+TR;>;)",
            "Lrx/b",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 3057
    const/4 v0, 0x3

    new-array v0, v0, [Lrx/b;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    invoke-static {v0}, Lrx/b;->just(Ljava/lang/Object;)Lrx/b;

    move-result-object v0

    new-instance v1, Lrx/internal/operators/OperatorZip;

    invoke-direct {v1, p3}, Lrx/internal/operators/OperatorZip;-><init>(Lrx/b/h;)V

    invoke-virtual {v0, v1}, Lrx/b;->lift(Lrx/b$g;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public static zip(Lrx/b;Lrx/b;Lrx/b;Lrx/b;Lrx/b/i;)Lrx/b;
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/b",
            "<+TT1;>;",
            "Lrx/b",
            "<+TT2;>;",
            "Lrx/b",
            "<+TT3;>;",
            "Lrx/b",
            "<+TT4;>;",
            "Lrx/b/i",
            "<-TT1;-TT2;-TT3;-TT4;+TR;>;)",
            "Lrx/b",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 3095
    const/4 v0, 0x4

    new-array v0, v0, [Lrx/b;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    const/4 v1, 0x3

    aput-object p3, v0, v1

    invoke-static {v0}, Lrx/b;->just(Ljava/lang/Object;)Lrx/b;

    move-result-object v0

    new-instance v1, Lrx/internal/operators/OperatorZip;

    invoke-direct {v1, p4}, Lrx/internal/operators/OperatorZip;-><init>(Lrx/b/i;)V

    invoke-virtual {v0, v1}, Lrx/b;->lift(Lrx/b$g;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public static zip(Lrx/b;Lrx/b;Lrx/b;Lrx/b;Lrx/b;Lrx/b/j;)Lrx/b;
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "T5:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/b",
            "<+TT1;>;",
            "Lrx/b",
            "<+TT2;>;",
            "Lrx/b",
            "<+TT3;>;",
            "Lrx/b",
            "<+TT4;>;",
            "Lrx/b",
            "<+TT5;>;",
            "Lrx/b/j",
            "<-TT1;-TT2;-TT3;-TT4;-TT5;+TR;>;)",
            "Lrx/b",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 3135
    const/4 v0, 0x5

    new-array v0, v0, [Lrx/b;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    const/4 v1, 0x3

    aput-object p3, v0, v1

    const/4 v1, 0x4

    aput-object p4, v0, v1

    invoke-static {v0}, Lrx/b;->just(Ljava/lang/Object;)Lrx/b;

    move-result-object v0

    new-instance v1, Lrx/internal/operators/OperatorZip;

    invoke-direct {v1, p5}, Lrx/internal/operators/OperatorZip;-><init>(Lrx/b/j;)V

    invoke-virtual {v0, v1}, Lrx/b;->lift(Lrx/b$g;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public static zip(Lrx/b;Lrx/b;Lrx/b;Lrx/b;Lrx/b;Lrx/b;Lrx/b/k;)Lrx/b;
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "T5:",
            "Ljava/lang/Object;",
            "T6:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/b",
            "<+TT1;>;",
            "Lrx/b",
            "<+TT2;>;",
            "Lrx/b",
            "<+TT3;>;",
            "Lrx/b",
            "<+TT4;>;",
            "Lrx/b",
            "<+TT5;>;",
            "Lrx/b",
            "<+TT6;>;",
            "Lrx/b/k",
            "<-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;+TR;>;)",
            "Lrx/b",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 3177
    const/4 v0, 0x6

    new-array v0, v0, [Lrx/b;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    const/4 v1, 0x3

    aput-object p3, v0, v1

    const/4 v1, 0x4

    aput-object p4, v0, v1

    const/4 v1, 0x5

    aput-object p5, v0, v1

    invoke-static {v0}, Lrx/b;->just(Ljava/lang/Object;)Lrx/b;

    move-result-object v0

    new-instance v1, Lrx/internal/operators/OperatorZip;

    invoke-direct {v1, p6}, Lrx/internal/operators/OperatorZip;-><init>(Lrx/b/k;)V

    invoke-virtual {v0, v1}, Lrx/b;->lift(Lrx/b$g;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public static zip(Lrx/b;Lrx/b;Lrx/b;Lrx/b;Lrx/b;Lrx/b;Lrx/b;Lrx/b/l;)Lrx/b;
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "T5:",
            "Ljava/lang/Object;",
            "T6:",
            "Ljava/lang/Object;",
            "T7:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/b",
            "<+TT1;>;",
            "Lrx/b",
            "<+TT2;>;",
            "Lrx/b",
            "<+TT3;>;",
            "Lrx/b",
            "<+TT4;>;",
            "Lrx/b",
            "<+TT5;>;",
            "Lrx/b",
            "<+TT6;>;",
            "Lrx/b",
            "<+TT7;>;",
            "Lrx/b/l",
            "<-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;-TT7;+TR;>;)",
            "Lrx/b",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 3221
    const/4 v0, 0x7

    new-array v0, v0, [Lrx/b;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    const/4 v1, 0x3

    aput-object p3, v0, v1

    const/4 v1, 0x4

    aput-object p4, v0, v1

    const/4 v1, 0x5

    aput-object p5, v0, v1

    const/4 v1, 0x6

    aput-object p6, v0, v1

    invoke-static {v0}, Lrx/b;->just(Ljava/lang/Object;)Lrx/b;

    move-result-object v0

    new-instance v1, Lrx/internal/operators/OperatorZip;

    invoke-direct {v1, p7}, Lrx/internal/operators/OperatorZip;-><init>(Lrx/b/l;)V

    invoke-virtual {v0, v1}, Lrx/b;->lift(Lrx/b$g;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public static zip(Lrx/b;Lrx/b;Lrx/b;Lrx/b;Lrx/b;Lrx/b;Lrx/b;Lrx/b;Lrx/b/m;)Lrx/b;
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "T5:",
            "Ljava/lang/Object;",
            "T6:",
            "Ljava/lang/Object;",
            "T7:",
            "Ljava/lang/Object;",
            "T8:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/b",
            "<+TT1;>;",
            "Lrx/b",
            "<+TT2;>;",
            "Lrx/b",
            "<+TT3;>;",
            "Lrx/b",
            "<+TT4;>;",
            "Lrx/b",
            "<+TT5;>;",
            "Lrx/b",
            "<+TT6;>;",
            "Lrx/b",
            "<+TT7;>;",
            "Lrx/b",
            "<+TT8;>;",
            "Lrx/b/m",
            "<-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;-TT7;-TT8;+TR;>;)",
            "Lrx/b",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 3267
    const/16 v0, 0x8

    new-array v0, v0, [Lrx/b;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    const/4 v1, 0x3

    aput-object p3, v0, v1

    const/4 v1, 0x4

    aput-object p4, v0, v1

    const/4 v1, 0x5

    aput-object p5, v0, v1

    const/4 v1, 0x6

    aput-object p6, v0, v1

    const/4 v1, 0x7

    aput-object p7, v0, v1

    invoke-static {v0}, Lrx/b;->just(Ljava/lang/Object;)Lrx/b;

    move-result-object v0

    new-instance v1, Lrx/internal/operators/OperatorZip;

    invoke-direct {v1, p8}, Lrx/internal/operators/OperatorZip;-><init>(Lrx/b/m;)V

    invoke-virtual {v0, v1}, Lrx/b;->lift(Lrx/b$g;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public static zip(Lrx/b;Lrx/b;Lrx/b;Lrx/b;Lrx/b;Lrx/b;Lrx/b;Lrx/b;Lrx/b;Lrx/b/n;)Lrx/b;
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "T5:",
            "Ljava/lang/Object;",
            "T6:",
            "Ljava/lang/Object;",
            "T7:",
            "Ljava/lang/Object;",
            "T8:",
            "Ljava/lang/Object;",
            "T9:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/b",
            "<+TT1;>;",
            "Lrx/b",
            "<+TT2;>;",
            "Lrx/b",
            "<+TT3;>;",
            "Lrx/b",
            "<+TT4;>;",
            "Lrx/b",
            "<+TT5;>;",
            "Lrx/b",
            "<+TT6;>;",
            "Lrx/b",
            "<+TT7;>;",
            "Lrx/b",
            "<+TT8;>;",
            "Lrx/b",
            "<+TT9;>;",
            "Lrx/b/n",
            "<-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;-TT7;-TT8;-TT9;+TR;>;)",
            "Lrx/b",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 3315
    const/16 v0, 0x9

    new-array v0, v0, [Lrx/b;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    const/4 v1, 0x3

    aput-object p3, v0, v1

    const/4 v1, 0x4

    aput-object p4, v0, v1

    const/4 v1, 0x5

    aput-object p5, v0, v1

    const/4 v1, 0x6

    aput-object p6, v0, v1

    const/4 v1, 0x7

    aput-object p7, v0, v1

    const/16 v1, 0x8

    aput-object p8, v0, v1

    invoke-static {v0}, Lrx/b;->just(Ljava/lang/Object;)Lrx/b;

    move-result-object v0

    new-instance v1, Lrx/internal/operators/OperatorZip;

    invoke-direct {v1, p9}, Lrx/internal/operators/OperatorZip;-><init>(Lrx/b/n;)V

    invoke-virtual {v0, v1}, Lrx/b;->lift(Lrx/b$g;)Lrx/b;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final all(Lrx/b/f;)Lrx/b;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/b/f",
            "<-TT;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lrx/b",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3335
    new-instance v0, Lrx/internal/operators/p;

    invoke-direct {v0, p1}, Lrx/internal/operators/p;-><init>(Lrx/b/f;)V

    invoke-virtual {p0, v0}, Lrx/b;->lift(Lrx/b$g;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public final ambWith(Lrx/b;)Lrx/b;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/b",
            "<+TT;>;)",
            "Lrx/b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 3355
    invoke-static {p0, p1}, Lrx/b;->amb(Lrx/b;Lrx/b;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public final asObservable()Lrx/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 3370
    invoke-static {}, Lrx/internal/operators/r;->a()Lrx/internal/operators/r;

    move-result-object v0

    invoke-virtual {p0, v0}, Lrx/b;->lift(Lrx/b$g;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public final buffer(I)Lrx/b;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lrx/b",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 3418
    invoke-virtual {p0, p1, p1}, Lrx/b;->buffer(II)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public final buffer(II)Lrx/b;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lrx/b",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 3444
    new-instance v0, Lrx/internal/operators/t;

    invoke-direct {v0, p1, p2}, Lrx/internal/operators/t;-><init>(II)V

    invoke-virtual {p0, v0}, Lrx/b;->lift(Lrx/b$g;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public final buffer(JJLjava/util/concurrent/TimeUnit;)Lrx/b;
    .locals 9
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lrx/b",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 3474
    invoke-static {}, Lrx/schedulers/Schedulers;->computation()Lrx/e;

    move-result-object v7

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    invoke-virtual/range {v1 .. v7}, Lrx/b;->buffer(JJLjava/util/concurrent/TimeUnit;Lrx/e;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public final buffer(JJLjava/util/concurrent/TimeUnit;Lrx/e;)Lrx/b;
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Lrx/e;",
            ")",
            "Lrx/b",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 3506
    new-instance v1, Lrx/internal/operators/v;

    const v7, 0x7fffffff

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    move-object v8, p6

    invoke-direct/range {v1 .. v8}, Lrx/internal/operators/v;-><init>(JJLjava/util/concurrent/TimeUnit;ILrx/e;)V

    invoke-virtual {p0, v1}, Lrx/b;->lift(Lrx/b$g;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public final buffer(JLjava/util/concurrent/TimeUnit;)Lrx/b;
    .locals 7
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lrx/b",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 3534
    const v5, 0x7fffffff

    invoke-static {}, Lrx/schedulers/Schedulers;->computation()Lrx/e;

    move-result-object v6

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    invoke-virtual/range {v1 .. v6}, Lrx/b;->buffer(JLjava/util/concurrent/TimeUnit;ILrx/e;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public final buffer(JLjava/util/concurrent/TimeUnit;I)Lrx/b;
    .locals 9
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "I)",
            "Lrx/b",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 3566
    new-instance v1, Lrx/internal/operators/v;

    invoke-static {}, Lrx/schedulers/Schedulers;->computation()Lrx/e;

    move-result-object v8

    move-wide v2, p1

    move-wide v4, p1

    move-object v6, p3

    move v7, p4

    invoke-direct/range {v1 .. v8}, Lrx/internal/operators/v;-><init>(JJLjava/util/concurrent/TimeUnit;ILrx/e;)V

    invoke-virtual {p0, v1}, Lrx/b;->lift(Lrx/b$g;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public final buffer(JLjava/util/concurrent/TimeUnit;ILrx/e;)Lrx/b;
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "I",
            "Lrx/e;",
            ")",
            "Lrx/b",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 3601
    new-instance v1, Lrx/internal/operators/v;

    move-wide v2, p1

    move-wide v4, p1

    move-object v6, p3

    move v7, p4

    move-object v8, p5

    invoke-direct/range {v1 .. v8}, Lrx/internal/operators/v;-><init>(JJLjava/util/concurrent/TimeUnit;ILrx/e;)V

    invoke-virtual {p0, v1}, Lrx/b;->lift(Lrx/b$g;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public final buffer(JLjava/util/concurrent/TimeUnit;Lrx/e;)Lrx/b;
    .locals 9
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lrx/e;",
            ")",
            "Lrx/b",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 3632
    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p1

    move-object v6, p3

    move-object v7, p4

    invoke-virtual/range {v1 .. v7}, Lrx/b;->buffer(JJLjava/util/concurrent/TimeUnit;Lrx/e;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public final buffer(Lrx/b/e;)Lrx/b;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TClosing:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/b/e",
            "<+",
            "Lrx/b",
            "<+TTClosing;>;>;)",
            "Lrx/b",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 3396
    new-instance v0, Lrx/internal/operators/s;

    const/16 v1, 0x10

    invoke-direct {v0, p1, v1}, Lrx/internal/operators/s;-><init>(Lrx/b/e;I)V

    invoke-virtual {p0, v0}, Lrx/b;->lift(Lrx/b$g;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public final buffer(Lrx/b;)Lrx/b;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/b",
            "<TB;>;)",
            "Lrx/b",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 3689
    const/16 v0, 0x10

    invoke-virtual {p0, p1, v0}, Lrx/b;->buffer(Lrx/b;I)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public final buffer(Lrx/b;I)Lrx/b;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/b",
            "<TB;>;I)",
            "Lrx/b",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 3721
    new-instance v0, Lrx/internal/operators/s;

    invoke-direct {v0, p1, p2}, Lrx/internal/operators/s;-><init>(Lrx/b;I)V

    invoke-virtual {p0, v0}, Lrx/b;->lift(Lrx/b$g;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public final buffer(Lrx/b;Lrx/b/f;)Lrx/b;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TOpening:",
            "Ljava/lang/Object;",
            "TClosing:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/b",
            "<+TTOpening;>;",
            "Lrx/b/f",
            "<-TTOpening;+",
            "Lrx/b",
            "<+TTClosing;>;>;)",
            "Lrx/b",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 3659
    new-instance v0, Lrx/internal/operators/u;

    invoke-direct {v0, p1, p2}, Lrx/internal/operators/u;-><init>(Lrx/b;Lrx/b/f;)V

    invoke-virtual {p0, v0}, Lrx/b;->lift(Lrx/b$g;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public final cache()Lrx/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 3755
    invoke-static {p0}, Lrx/internal/operators/CachedObservable;->a(Lrx/b;)Lrx/internal/operators/CachedObservable;

    move-result-object v0

    return-object v0
.end method

.method public final cache(I)Lrx/b;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lrx/b",
            "<TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3764
    invoke-virtual {p0, p1}, Lrx/b;->cacheWithInitialCapacity(I)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public final cacheWithInitialCapacity(I)Lrx/b;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lrx/b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 3802
    invoke-static {p0, p1}, Lrx/internal/operators/CachedObservable;->a(Lrx/b;I)Lrx/internal/operators/CachedObservable;

    move-result-object v0

    return-object v0
.end method

.method public final cast(Ljava/lang/Class;)Lrx/b;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TR;>;)",
            "Lrx/b",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 3823
    new-instance v0, Lrx/internal/operators/w;

    invoke-direct {v0, p1}, Lrx/internal/operators/w;-><init>(Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lrx/b;->lift(Lrx/b$g;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public final collect(Lrx/b/e;Lrx/b/c;)Lrx/b;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/b/e",
            "<TR;>;",
            "Lrx/b/c",
            "<TR;-TT;>;)",
            "Lrx/b",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 3851
    new-instance v0, Lrx/b$26;

    invoke-direct {v0, p0, p2}, Lrx/b$26;-><init>(Lrx/b;Lrx/b/c;)V

    .line 3867
    new-instance v1, Lrx/internal/operators/aw;

    invoke-direct {v1, p1, v0}, Lrx/internal/operators/aw;-><init>(Lrx/b/e;Lrx/b/g;)V

    invoke-virtual {p0, v1}, Lrx/b;->lift(Lrx/b$g;)Lrx/b;

    move-result-object v0

    invoke-virtual {v0}, Lrx/b;->last()Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public compose(Lrx/b$i;)Lrx/b;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/b$i",
            "<-TT;+TR;>;)",
            "Lrx/b",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 200
    invoke-interface {p1, p0}, Lrx/b$i;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/b;

    return-object v0
.end method

.method public final concatMap(Lrx/b/f;)Lrx/b;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/b/f",
            "<-TT;+",
            "Lrx/b",
            "<+TR;>;>;)",
            "Lrx/b",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 3889
    invoke-virtual {p0, p1}, Lrx/b;->map(Lrx/b/f;)Lrx/b;

    move-result-object v0

    invoke-static {v0}, Lrx/b;->concat(Lrx/b;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public final concatMapEager(Lrx/b/f;)Lrx/b;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/b/f",
            "<-TT;+",
            "Lrx/b",
            "<+TR;>;>;)",
            "Lrx/b",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 5105
    sget v0, Lrx/internal/util/RxRingBuffer;->SIZE:I

    invoke-virtual {p0, p1, v0}, Lrx/b;->concatMapEager(Lrx/b/f;I)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public final concatMapEager(Lrx/b/f;I)Lrx/b;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/b/f",
            "<-TT;+",
            "Lrx/b",
            "<+TR;>;>;I)",
            "Lrx/b",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 5132
    const/4 v0, 0x1

    if-ge p2, v0, :cond_0

    .line 5133
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "capacityHint > 0 required but it was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5135
    :cond_0
    new-instance v0, Lrx/internal/operators/OperatorEagerConcatMap;

    invoke-direct {v0, p1, p2}, Lrx/internal/operators/OperatorEagerConcatMap;-><init>(Lrx/b/f;I)V

    invoke-virtual {p0, v0}, Lrx/b;->lift(Lrx/b$g;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public final concatWith(Lrx/b;)Lrx/b;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/b",
            "<+TT;>;)",
            "Lrx/b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 3909
    invoke-static {p0, p1}, Lrx/b;->concat(Lrx/b;Lrx/b;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public final contains(Ljava/lang/Object;)Lrx/b;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lrx/b",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3929
    new-instance v0, Lrx/b$27;

    invoke-direct {v0, p0, p1}, Lrx/b$27;-><init>(Lrx/b;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lrx/b;->exists(Lrx/b/f;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public final count()Lrx/b;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/b",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3954
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lrx/b$a;->a:Lrx/b/g;

    invoke-virtual {p0, v0, v1}, Lrx/b;->reduce(Ljava/lang/Object;Lrx/b/g;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public final countLong()Lrx/b;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/b",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3985
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sget-object v1, Lrx/b$b;->a:Lrx/b/g;

    invoke-virtual {p0, v0, v1}, Lrx/b;->reduce(Ljava/lang/Object;Lrx/b/g;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public final debounce(JLjava/util/concurrent/TimeUnit;)Lrx/b;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lrx/b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 4059
    invoke-static {}, Lrx/schedulers/Schedulers;->computation()Lrx/e;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lrx/b;->debounce(JLjava/util/concurrent/TimeUnit;Lrx/e;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public final debounce(JLjava/util/concurrent/TimeUnit;Lrx/e;)Lrx/b;
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lrx/e;",
            ")",
            "Lrx/b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 4101
    new-instance v0, Lrx/internal/operators/z;

    invoke-direct {v0, p1, p2, p3, p4}, Lrx/internal/operators/z;-><init>(JLjava/util/concurrent/TimeUnit;Lrx/e;)V

    invoke-virtual {p0, v0}, Lrx/b;->lift(Lrx/b$g;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public final debounce(Lrx/b/f;)Lrx/b;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/b/f",
            "<-TT;+",
            "Lrx/b",
            "<TU;>;>;)",
            "Lrx/b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 4020
    new-instance v0, Lrx/internal/operators/y;

    invoke-direct {v0, p1}, Lrx/internal/operators/y;-><init>(Lrx/b/f;)V

    invoke-virtual {p0, v0}, Lrx/b;->lift(Lrx/b$g;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public final defaultIfEmpty(Ljava/lang/Object;)Lrx/b;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lrx/b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 4122
    new-instance v0, Lrx/b$28;

    invoke-direct {v0, p0, p1}, Lrx/b$28;-><init>(Lrx/b;Ljava/lang/Object;)V

    invoke-static {v0}, Lrx/b;->create(Lrx/b$f;)Lrx/b;

    move-result-object v0

    invoke-virtual {p0, v0}, Lrx/b;->switchIfEmpty(Lrx/b;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public final delay(JLjava/util/concurrent/TimeUnit;)Lrx/b;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lrx/b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 4228
    invoke-static {}, Lrx/schedulers/Schedulers;->computation()Lrx/e;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lrx/b;->delay(JLjava/util/concurrent/TimeUnit;Lrx/e;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public final delay(JLjava/util/concurrent/TimeUnit;Lrx/e;)Lrx/b;
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lrx/e;",
            ")",
            "Lrx/b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 4251
    new-instance v0, Lrx/internal/operators/aa;

    invoke-direct {v0, p1, p2, p3, p4}, Lrx/internal/operators/aa;-><init>(JLjava/util/concurrent/TimeUnit;Lrx/e;)V

    invoke-virtual {p0, v0}, Lrx/b;->lift(Lrx/b$g;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public final delay(Lrx/b/e;Lrx/b/f;)Lrx/b;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/b/e",
            "<+",
            "Lrx/b",
            "<TU;>;>;",
            "Lrx/b/f",
            "<-TT;+",
            "Lrx/b",
            "<TV;>;>;)",
            "Lrx/b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 4180
    invoke-virtual {p0, p1}, Lrx/b;->delaySubscription(Lrx/b/e;)Lrx/b;

    move-result-object v0

    new-instance v1, Lrx/internal/operators/ab;

    invoke-direct {v1, p0, p2}, Lrx/internal/operators/ab;-><init>(Lrx/b;Lrx/b/f;)V

    invoke-virtual {v0, v1}, Lrx/b;->lift(Lrx/b$g;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public final delay(Lrx/b/f;)Lrx/b;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/b/f",
            "<-TT;+",
            "Lrx/b",
            "<TU;>;>;)",
            "Lrx/b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 4207
    new-instance v0, Lrx/internal/operators/ab;

    invoke-direct {v0, p0, p1}, Lrx/internal/operators/ab;-><init>(Lrx/b;Lrx/b/f;)V

    invoke-virtual {p0, v0}, Lrx/b;->lift(Lrx/b$g;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public final delaySubscription(JLjava/util/concurrent/TimeUnit;)Lrx/b;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lrx/b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 4271
    invoke-static {}, Lrx/schedulers/Schedulers;->computation()Lrx/e;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lrx/b;->delaySubscription(JLjava/util/concurrent/TimeUnit;Lrx/e;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public final delaySubscription(JLjava/util/concurrent/TimeUnit;Lrx/e;)Lrx/b;
    .locals 7
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lrx/e;",
            ")",
            "Lrx/b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 4295
    new-instance v0, Lrx/internal/operators/d;

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lrx/internal/operators/d;-><init>(Lrx/b;JLjava/util/concurrent/TimeUnit;Lrx/e;)V

    invoke-static {v0}, Lrx/b;->create(Lrx/b$f;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public final delaySubscription(Lrx/b/e;)Lrx/b;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/b/e",
            "<+",
            "Lrx/b",
            "<TU;>;>;)",
            "Lrx/b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 4316
    new-instance v0, Lrx/internal/operators/f;

    invoke-direct {v0, p0, p1}, Lrx/internal/operators/f;-><init>(Lrx/b;Lrx/b/e;)V

    invoke-static {v0}, Lrx/b;->create(Lrx/b$f;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public final delaySubscription(Lrx/b;)Lrx/b;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/b",
            "<TU;>;)",
            "Lrx/b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 4339
    if-nez p1, :cond_0

    .line 4340
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4342
    :cond_0
    new-instance v0, Lrx/internal/operators/e;

    invoke-direct {v0, p0, p1}, Lrx/internal/operators/e;-><init>(Lrx/b;Lrx/b;)V

    invoke-static {v0}, Lrx/b;->create(Lrx/b$f;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public final dematerialize()Lrx/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T2:",
            "Ljava/lang/Object;",
            ">()",
            "Lrx/b",
            "<TT2;>;"
        }
    .end annotation

    .prologue
    .line 4364
    invoke-static {}, Lrx/internal/operators/ac;->a()Lrx/internal/operators/ac;

    move-result-object v0

    invoke-virtual {p0, v0}, Lrx/b;->lift(Lrx/b$g;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public final distinct()Lrx/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 4381
    invoke-static {}, Lrx/internal/operators/ad;->a()Lrx/internal/operators/ad;

    move-result-object v0

    invoke-virtual {p0, v0}, Lrx/b;->lift(Lrx/b$g;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public final distinct(Lrx/b/f;)Lrx/b;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/b/f",
            "<-TT;+TU;>;)",
            "Lrx/b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 4401
    new-instance v0, Lrx/internal/operators/ad;

    invoke-direct {v0, p1}, Lrx/internal/operators/ad;-><init>(Lrx/b/f;)V

    invoke-virtual {p0, v0}, Lrx/b;->lift(Lrx/b$g;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public final distinctUntilChanged()Lrx/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 4419
    invoke-static {}, Lrx/internal/operators/ae;->a()Lrx/internal/operators/ae;

    move-result-object v0

    invoke-virtual {p0, v0}, Lrx/b;->lift(Lrx/b$g;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public final distinctUntilChanged(Lrx/b/f;)Lrx/b;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/b/f",
            "<-TT;+TU;>;)",
            "Lrx/b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 4440
    new-instance v0, Lrx/internal/operators/ae;

    invoke-direct {v0, p1}, Lrx/internal/operators/ae;-><init>(Lrx/b/f;)V

    invoke-virtual {p0, v0}, Lrx/b;->lift(Lrx/b$g;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public final doAfterTerminate(Lrx/b/a;)Lrx/b;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/b/a;",
            ")",
            "Lrx/b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 5271
    new-instance v0, Lrx/internal/operators/af;

    invoke-direct {v0, p1}, Lrx/internal/operators/af;-><init>(Lrx/b/a;)V

    invoke-virtual {p0, v0}, Lrx/b;->lift(Lrx/b$g;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public final doOnCompleted(Lrx/b/a;)Lrx/b;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/b/a;",
            ")",
            "Lrx/b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 4458
    new-instance v0, Lrx/b$29;

    invoke-direct {v0, p0, p1}, Lrx/b$29;-><init>(Lrx/b;Lrx/b/a;)V

    .line 4474
    new-instance v1, Lrx/internal/operators/ag;

    invoke-direct {v1, v0}, Lrx/internal/operators/ag;-><init>(Lrx/c;)V

    invoke-virtual {p0, v1}, Lrx/b;->lift(Lrx/b$g;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public final doOnEach(Lrx/b/b;)Lrx/b;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/b/b",
            "<",
            "Lrx/Notification",
            "<-TT;>;>;)",
            "Lrx/b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 4492
    new-instance v0, Lrx/b$30;

    invoke-direct {v0, p0, p1}, Lrx/b$30;-><init>(Lrx/b;Lrx/b/b;)V

    .line 4510
    new-instance v1, Lrx/internal/operators/ag;

    invoke-direct {v1, v0}, Lrx/internal/operators/ag;-><init>(Lrx/c;)V

    invoke-virtual {p0, v1}, Lrx/b;->lift(Lrx/b$g;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public final doOnEach(Lrx/c;)Lrx/b;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/c",
            "<-TT;>;)",
            "Lrx/b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 4533
    new-instance v0, Lrx/internal/operators/ag;

    invoke-direct {v0, p1}, Lrx/internal/operators/ag;-><init>(Lrx/c;)V

    invoke-virtual {p0, v0}, Lrx/b;->lift(Lrx/b$g;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public final doOnError(Lrx/b/b;)Lrx/b;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/b/b",
            "<",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lrx/b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 4554
    new-instance v0, Lrx/b$2;

    invoke-direct {v0, p0, p1}, Lrx/b$2;-><init>(Lrx/b;Lrx/b/b;)V

    .line 4570
    new-instance v1, Lrx/internal/operators/ag;

    invoke-direct {v1, v0}, Lrx/internal/operators/ag;-><init>(Lrx/c;)V

    invoke-virtual {p0, v1}, Lrx/b;->lift(Lrx/b$g;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public final doOnNext(Lrx/b/b;)Lrx/b;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/b/b",
            "<-TT;>;)",
            "Lrx/b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 4588
    new-instance v0, Lrx/b$3;

    invoke-direct {v0, p0, p1}, Lrx/b$3;-><init>(Lrx/b;Lrx/b/b;)V

    .line 4604
    new-instance v1, Lrx/internal/operators/ag;

    invoke-direct {v1, v0}, Lrx/internal/operators/ag;-><init>(Lrx/c;)V

    invoke-virtual {p0, v1}, Lrx/b;->lift(Lrx/b$g;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public final doOnRequest(Lrx/b/b;)Lrx/b;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/b/b",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Lrx/b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 4629
    new-instance v0, Lrx/internal/operators/ah;

    invoke-direct {v0, p1}, Lrx/internal/operators/ah;-><init>(Lrx/b/b;)V

    invoke-virtual {p0, v0}, Lrx/b;->lift(Lrx/b$g;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public final doOnSubscribe(Lrx/b/a;)Lrx/b;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/b/a;",
            ")",
            "Lrx/b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 4650
    new-instance v0, Lrx/internal/operators/ai;

    invoke-direct {v0, p1}, Lrx/internal/operators/ai;-><init>(Lrx/b/a;)V

    invoke-virtual {p0, v0}, Lrx/b;->lift(Lrx/b$g;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public final doOnTerminate(Lrx/b/a;)Lrx/b;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/b/a;",
            ")",
            "Lrx/b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 4673
    new-instance v0, Lrx/b$4;

    invoke-direct {v0, p0, p1}, Lrx/b$4;-><init>(Lrx/b;Lrx/b/a;)V

    .line 4690
    new-instance v1, Lrx/internal/operators/ag;

    invoke-direct {v1, v0}, Lrx/internal/operators/ag;-><init>(Lrx/c;)V

    invoke-virtual {p0, v1}, Lrx/b;->lift(Lrx/b$g;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public final doOnUnsubscribe(Lrx/b/a;)Lrx/b;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/b/a;",
            ")",
            "Lrx/b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 4711
    new-instance v0, Lrx/internal/operators/aj;

    invoke-direct {v0, p1}, Lrx/internal/operators/aj;-><init>(Lrx/b/a;)V

    invoke-virtual {p0, v0}, Lrx/b;->lift(Lrx/b$g;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public final elementAt(I)Lrx/b;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lrx/b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 5159
    new-instance v0, Lrx/internal/operators/OperatorElementAt;

    invoke-direct {v0, p1}, Lrx/internal/operators/OperatorElementAt;-><init>(I)V

    invoke-virtual {p0, v0}, Lrx/b;->lift(Lrx/b$g;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public final elementAtOrDefault(ILjava/lang/Object;)Lrx/b;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)",
            "Lrx/b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 5183
    new-instance v0, Lrx/internal/operators/OperatorElementAt;

    invoke-direct {v0, p1, p2}, Lrx/internal/operators/OperatorElementAt;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Lrx/b;->lift(Lrx/b$g;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public final exists(Lrx/b/f;)Lrx/b;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/b/f",
            "<-TT;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lrx/b",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5207
    new-instance v0, Lrx/internal/operators/q;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lrx/internal/operators/q;-><init>(Lrx/b/f;Z)V

    invoke-virtual {p0, v0}, Lrx/b;->lift(Lrx/b$g;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public extend(Lrx/b/f;)Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/b/f",
            "<-",
            "Lrx/b$f",
            "<TT;>;+TR;>;)TR;"
        }
    .end annotation

    .prologue
    .line 123
    new-instance v0, Lrx/b$1;

    invoke-direct {v0, p0}, Lrx/b$1;-><init>(Lrx/b;)V

    invoke-interface {p1, v0}, Lrx/b/f;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final filter(Lrx/b/f;)Lrx/b;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/b/f",
            "<-TT;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lrx/b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 5227
    new-instance v0, Lrx/internal/operators/ak;

    invoke-direct {v0, p1}, Lrx/internal/operators/ak;-><init>(Lrx/b/f;)V

    invoke-virtual {p0, v0}, Lrx/b;->lift(Lrx/b$g;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public final finallyDo(Lrx/b/a;)Lrx/b;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/b/a;",
            ")",
            "Lrx/b",
            "<TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 5250
    new-instance v0, Lrx/internal/operators/af;

    invoke-direct {v0, p1}, Lrx/internal/operators/af;-><init>(Lrx/b/a;)V

    invoke-virtual {p0, v0}, Lrx/b;->lift(Lrx/b$g;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public final first()Lrx/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 5289
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lrx/b;->take(I)Lrx/b;

    move-result-object v0

    invoke-virtual {v0}, Lrx/b;->single()Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public final first(Lrx/b/f;)Lrx/b;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/b/f",
            "<-TT;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lrx/b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 5309
    invoke-virtual {p0, p1}, Lrx/b;->takeFirst(Lrx/b/f;)Lrx/b;

    move-result-object v0

    invoke-virtual {v0}, Lrx/b;->single()Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public final firstOrDefault(Ljava/lang/Object;)Lrx/b;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lrx/b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 5329
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lrx/b;->take(I)Lrx/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lrx/b;->singleOrDefault(Ljava/lang/Object;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public final firstOrDefault(Ljava/lang/Object;Lrx/b/f;)Lrx/b;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lrx/b/f",
            "<-TT;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lrx/b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 5352
    invoke-virtual {p0, p2}, Lrx/b;->takeFirst(Lrx/b/f;)Lrx/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lrx/b;->singleOrDefault(Ljava/lang/Object;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public final flatMap(Lrx/b/f;)Lrx/b;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/b/f",
            "<-TT;+",
            "Lrx/b",
            "<+TR;>;>;)",
            "Lrx/b",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 5375
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lrx/internal/util/ScalarSynchronousObservable;

    if-ne v0, v1, :cond_0

    .line 5376
    check-cast p0, Lrx/internal/util/ScalarSynchronousObservable;

    invoke-virtual {p0, p1}, Lrx/internal/util/ScalarSynchronousObservable;->scalarFlatMap(Lrx/b/f;)Lrx/b;

    move-result-object v0

    .line 5378
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Lrx/b;->map(Lrx/b/f;)Lrx/b;

    move-result-object v0

    invoke-static {v0}, Lrx/b;->merge(Lrx/b;)Lrx/b;

    move-result-object v0

    goto :goto_0
.end method

.method public final flatMap(Lrx/b/f;I)Lrx/b;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/b/f",
            "<-TT;+",
            "Lrx/b",
            "<+TR;>;>;I)",
            "Lrx/b",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 5406
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lrx/internal/util/ScalarSynchronousObservable;

    if-ne v0, v1, :cond_0

    .line 5407
    check-cast p0, Lrx/internal/util/ScalarSynchronousObservable;

    invoke-virtual {p0, p1}, Lrx/internal/util/ScalarSynchronousObservable;->scalarFlatMap(Lrx/b/f;)Lrx/b;

    move-result-object v0

    .line 5409
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Lrx/b;->map(Lrx/b/f;)Lrx/b;

    move-result-object v0

    invoke-static {v0, p2}, Lrx/b;->merge(Lrx/b;I)Lrx/b;

    move-result-object v0

    goto :goto_0
.end method

.method public final flatMap(Lrx/b/f;Lrx/b/f;Lrx/b/e;)Lrx/b;
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/b/f",
            "<-TT;+",
            "Lrx/b",
            "<+TR;>;>;",
            "Lrx/b/f",
            "<-",
            "Ljava/lang/Throwable;",
            "+",
            "Lrx/b",
            "<+TR;>;>;",
            "Lrx/b/e",
            "<+",
            "Lrx/b",
            "<+TR;>;>;)",
            "Lrx/b",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 5440
    invoke-direct {p0, p1, p2, p3}, Lrx/b;->mapNotification(Lrx/b/f;Lrx/b/f;Lrx/b/e;)Lrx/b;

    move-result-object v0

    invoke-static {v0}, Lrx/b;->merge(Lrx/b;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public final flatMap(Lrx/b/f;Lrx/b/f;Lrx/b/e;I)Lrx/b;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/b/f",
            "<-TT;+",
            "Lrx/b",
            "<+TR;>;>;",
            "Lrx/b/f",
            "<-",
            "Ljava/lang/Throwable;",
            "+",
            "Lrx/b",
            "<+TR;>;>;",
            "Lrx/b/e",
            "<+",
            "Lrx/b",
            "<+TR;>;>;I)",
            "Lrx/b",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 5475
    invoke-direct {p0, p1, p2, p3}, Lrx/b;->mapNotification(Lrx/b/f;Lrx/b/f;Lrx/b/e;)Lrx/b;

    move-result-object v0

    invoke-static {v0, p4}, Lrx/b;->merge(Lrx/b;I)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public final flatMap(Lrx/b/f;Lrx/b/g;)Lrx/b;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/b/f",
            "<-TT;+",
            "Lrx/b",
            "<+TU;>;>;",
            "Lrx/b/g",
            "<-TT;-TU;+TR;>;)",
            "Lrx/b",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 5503
    new-instance v0, Lrx/internal/operators/an;

    invoke-direct {v0, p1, p2}, Lrx/internal/operators/an;-><init>(Lrx/b/f;Lrx/b/g;)V

    invoke-virtual {p0, v0}, Lrx/b;->lift(Lrx/b$g;)Lrx/b;

    move-result-object v0

    invoke-static {v0}, Lrx/b;->merge(Lrx/b;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public final flatMap(Lrx/b/f;Lrx/b/g;I)Lrx/b;
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/b/f",
            "<-TT;+",
            "Lrx/b",
            "<+TU;>;>;",
            "Lrx/b/g",
            "<-TT;-TU;+TR;>;I)",
            "Lrx/b",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 5535
    new-instance v0, Lrx/internal/operators/an;

    invoke-direct {v0, p1, p2}, Lrx/internal/operators/an;-><init>(Lrx/b/f;Lrx/b/g;)V

    invoke-virtual {p0, v0}, Lrx/b;->lift(Lrx/b$g;)Lrx/b;

    move-result-object v0

    invoke-static {v0, p3}, Lrx/b;->merge(Lrx/b;I)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public final flatMapIterable(Lrx/b/f;)Lrx/b;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/b/f",
            "<-TT;+",
            "Ljava/lang/Iterable",
            "<+TR;>;>;)",
            "Lrx/b",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 5558
    invoke-static {p1}, Lrx/internal/operators/an;->a(Lrx/b/f;)Lrx/b/f;

    move-result-object v0

    invoke-virtual {p0, v0}, Lrx/b;->map(Lrx/b/f;)Lrx/b;

    move-result-object v0

    invoke-static {v0}, Lrx/b;->merge(Lrx/b;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public final flatMapIterable(Lrx/b/f;Lrx/b/g;)Lrx/b;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/b/f",
            "<-TT;+",
            "Ljava/lang/Iterable",
            "<+TU;>;>;",
            "Lrx/b/g",
            "<-TT;-TU;+TR;>;)",
            "Lrx/b",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 5587
    invoke-static {p1}, Lrx/internal/operators/an;->a(Lrx/b/f;)Lrx/b/f;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lrx/b;->flatMap(Lrx/b/f;Lrx/b/g;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public final forEach(Lrx/b/b;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/b/b",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 5608
    invoke-virtual {p0, p1}, Lrx/b;->subscribe(Lrx/b/b;)Lrx/i;

    .line 5609
    return-void
.end method

.method public final forEach(Lrx/b/b;Lrx/b/b;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/b/b",
            "<-TT;>;",
            "Lrx/b/b",
            "<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 5632
    invoke-virtual {p0, p1, p2}, Lrx/b;->subscribe(Lrx/b/b;Lrx/b/b;)Lrx/i;

    .line 5633
    return-void
.end method

.method public final forEach(Lrx/b/b;Lrx/b/b;Lrx/b/a;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/b/b",
            "<-TT;>;",
            "Lrx/b/b",
            "<",
            "Ljava/lang/Throwable;",
            ">;",
            "Lrx/b/a;",
            ")V"
        }
    .end annotation

    .prologue
    .line 5659
    invoke-virtual {p0, p1, p2, p3}, Lrx/b;->subscribe(Lrx/b/b;Lrx/b/b;Lrx/b/a;)Lrx/i;

    .line 5660
    return-void
.end method

.method public final groupBy(Lrx/b/f;)Lrx/b;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/b/f",
            "<-TT;+TK;>;)",
            "Lrx/b",
            "<",
            "Lrx/observables/c",
            "<TK;TT;>;>;"
        }
    .end annotation

    .prologue
    .line 5725
    new-instance v0, Lrx/internal/operators/OperatorGroupBy;

    invoke-direct {v0, p1}, Lrx/internal/operators/OperatorGroupBy;-><init>(Lrx/b/f;)V

    invoke-virtual {p0, v0}, Lrx/b;->lift(Lrx/b$g;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public final groupBy(Lrx/b/f;Lrx/b/f;)Lrx/b;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/b/f",
            "<-TT;+TK;>;",
            "Lrx/b/f",
            "<-TT;+TR;>;)",
            "Lrx/b",
            "<",
            "Lrx/observables/c",
            "<TK;TR;>;>;"
        }
    .end annotation

    .prologue
    .line 5694
    new-instance v0, Lrx/internal/operators/OperatorGroupBy;

    invoke-direct {v0, p1, p2}, Lrx/internal/operators/OperatorGroupBy;-><init>(Lrx/b/f;Lrx/b/f;)V

    invoke-virtual {p0, v0}, Lrx/b;->lift(Lrx/b$g;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public final groupJoin(Lrx/b;Lrx/b/f;Lrx/b/f;Lrx/b/g;)Lrx/b;
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T2:",
            "Ljava/lang/Object;",
            "D1:",
            "Ljava/lang/Object;",
            "D2:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/b",
            "<TT2;>;",
            "Lrx/b/f",
            "<-TT;+",
            "Lrx/b",
            "<TD1;>;>;",
            "Lrx/b/f",
            "<-TT2;+",
            "Lrx/b",
            "<TD2;>;>;",
            "Lrx/b/g",
            "<-TT;-",
            "Lrx/b",
            "<TT2;>;+TR;>;)",
            "Lrx/b",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 5755
    new-instance v0, Lrx/internal/operators/h;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lrx/internal/operators/h;-><init>(Lrx/b;Lrx/b;Lrx/b/f;Lrx/b/f;Lrx/b/g;)V

    invoke-static {v0}, Lrx/b;->create(Lrx/b$f;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public final ignoreElements()Lrx/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 5772
    invoke-static {}, Lrx/internal/operators/al;->a()Lrx/internal/operators/al;

    move-result-object v0

    invoke-virtual {p0, v0}, Lrx/b;->lift(Lrx/b$g;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public final isEmpty()Lrx/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/b",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5792
    sget-object v0, Lrx/b$d;->a:Lrx/internal/operators/q;

    invoke-virtual {p0, v0}, Lrx/b;->lift(Lrx/b$g;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public final join(Lrx/b;Lrx/b/f;Lrx/b/f;Lrx/b/g;)Lrx/b;
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TRight:",
            "Ljava/lang/Object;",
            "T",
            "LeftDuration:Ljava/lang/Object;",
            "TRightDuration:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/b",
            "<TTRight;>;",
            "Lrx/b/f",
            "<TT;",
            "Lrx/b",
            "<TT",
            "LeftDuration;",
            ">;>;",
            "Lrx/b/f",
            "<TTRight;",
            "Lrx/b",
            "<TTRightDuration;>;>;",
            "Lrx/b/g",
            "<TT;TTRight;TR;>;)",
            "Lrx/b",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 5826
    new-instance v0, Lrx/internal/operators/i;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lrx/internal/operators/i;-><init>(Lrx/b;Lrx/b;Lrx/b/f;Lrx/b/f;Lrx/b/g;)V

    invoke-static {v0}, Lrx/b;->create(Lrx/b$f;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public final last()Lrx/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 5844
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lrx/b;->takeLast(I)Lrx/b;

    move-result-object v0

    invoke-virtual {v0}, Lrx/b;->single()Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public final last(Lrx/b/f;)Lrx/b;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/b/f",
            "<-TT;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lrx/b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 5866
    invoke-virtual {p0, p1}, Lrx/b;->filter(Lrx/b/f;)Lrx/b;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lrx/b;->takeLast(I)Lrx/b;

    move-result-object v0

    invoke-virtual {v0}, Lrx/b;->single()Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public final lastOrDefault(Ljava/lang/Object;)Lrx/b;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lrx/b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 5886
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lrx/b;->takeLast(I)Lrx/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lrx/b;->singleOrDefault(Ljava/lang/Object;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public final lastOrDefault(Ljava/lang/Object;Lrx/b/f;)Lrx/b;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lrx/b/f",
            "<-TT;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lrx/b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 5909
    invoke-virtual {p0, p2}, Lrx/b;->filter(Lrx/b/f;)Lrx/b;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lrx/b;->takeLast(I)Lrx/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lrx/b;->singleOrDefault(Ljava/lang/Object;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public final lift(Lrx/b$g;)Lrx/b;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/b$g",
            "<+TR;-TT;>;)",
            "Lrx/b",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 154
    new-instance v0, Lrx/b;

    new-instance v1, Lrx/b$12;

    invoke-direct {v1, p0, p1}, Lrx/b$12;-><init>(Lrx/b;Lrx/b$g;)V

    invoke-direct {v0, v1}, Lrx/b;-><init>(Lrx/b$f;)V

    return-object v0
.end method

.method public final limit(I)Lrx/b;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lrx/b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 5934
    invoke-virtual {p0, p1}, Lrx/b;->take(I)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public final map(Lrx/b/f;)Lrx/b;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/b/f",
            "<-TT;+TR;>;)",
            "Lrx/b",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 5954
    new-instance v0, Lrx/internal/operators/am;

    invoke-direct {v0, p1}, Lrx/internal/operators/am;-><init>(Lrx/b/f;)V

    invoke-virtual {p0, v0}, Lrx/b;->lift(Lrx/b$g;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public final materialize()Lrx/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/b",
            "<",
            "Lrx/Notification",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 5976
    invoke-static {}, Lrx/internal/operators/ao;->a()Lrx/internal/operators/ao;

    move-result-object v0

    invoke-virtual {p0, v0}, Lrx/b;->lift(Lrx/b$g;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public final mergeWith(Lrx/b;)Lrx/b;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/b",
            "<+TT;>;)",
            "Lrx/b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 5997
    invoke-static {p0, p1}, Lrx/b;->merge(Lrx/b;Lrx/b;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public final nest()Lrx/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/b",
            "<",
            "Lrx/b",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 2584
    invoke-static {p0}, Lrx/b;->just(Ljava/lang/Object;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public final observeOn(Lrx/e;)Lrx/b;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/e;",
            ")",
            "Lrx/b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 6022
    instance-of v0, p0, Lrx/internal/util/ScalarSynchronousObservable;

    if-eqz v0, :cond_0

    .line 6023
    check-cast p0, Lrx/internal/util/ScalarSynchronousObservable;

    invoke-virtual {p0, p1}, Lrx/internal/util/ScalarSynchronousObservable;->scalarScheduleOn(Lrx/e;)Lrx/b;

    move-result-object v0

    .line 6025
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lrx/internal/operators/ap;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lrx/internal/operators/ap;-><init>(Lrx/e;Z)V

    invoke-virtual {p0, v0}, Lrx/b;->lift(Lrx/b$g;)Lrx/b;

    move-result-object v0

    goto :goto_0
.end method

.method public final observeOn(Lrx/e;Z)Lrx/b;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/e;",
            "Z)",
            "Lrx/b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 6052
    instance-of v0, p0, Lrx/internal/util/ScalarSynchronousObservable;

    if-eqz v0, :cond_0

    .line 6053
    check-cast p0, Lrx/internal/util/ScalarSynchronousObservable;

    invoke-virtual {p0, p1}, Lrx/internal/util/ScalarSynchronousObservable;->scalarScheduleOn(Lrx/e;)Lrx/b;

    move-result-object v0

    .line 6055
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lrx/internal/operators/ap;

    invoke-direct {v0, p1, p2}, Lrx/internal/operators/ap;-><init>(Lrx/e;Z)V

    invoke-virtual {p0, v0}, Lrx/b;->lift(Lrx/b$g;)Lrx/b;

    move-result-object v0

    goto :goto_0
.end method

.method public final ofType(Ljava/lang/Class;)Lrx/b;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TR;>;)",
            "Lrx/b",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 6073
    new-instance v0, Lrx/b$5;

    invoke-direct {v0, p0, p1}, Lrx/b$5;-><init>(Lrx/b;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lrx/b;->filter(Lrx/b/f;)Lrx/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lrx/b;->cast(Ljava/lang/Class;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public final onBackpressureBuffer()Lrx/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 6095
    invoke-static {}, Lrx/internal/operators/aq;->a()Lrx/internal/operators/aq;

    move-result-object v0

    invoke-virtual {p0, v0}, Lrx/b;->lift(Lrx/b$g;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public final onBackpressureBuffer(J)Lrx/b;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lrx/b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 6115
    new-instance v0, Lrx/internal/operators/aq;

    invoke-direct {v0, p1, p2}, Lrx/internal/operators/aq;-><init>(J)V

    invoke-virtual {p0, v0}, Lrx/b;->lift(Lrx/b$g;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public final onBackpressureBuffer(JLrx/b/a;)Lrx/b;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lrx/b/a;",
            ")",
            "Lrx/b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 6135
    new-instance v0, Lrx/internal/operators/aq;

    invoke-direct {v0, p1, p2, p3}, Lrx/internal/operators/aq;-><init>(JLrx/b/a;)V

    invoke-virtual {p0, v0}, Lrx/b;->lift(Lrx/b$g;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public final onBackpressureDrop()Lrx/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 6178
    invoke-static {}, Lrx/internal/operators/ar;->a()Lrx/internal/operators/ar;

    move-result-object v0

    invoke-virtual {p0, v0}, Lrx/b;->lift(Lrx/b$g;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public final onBackpressureDrop(Lrx/b/b;)Lrx/b;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/b/b",
            "<-TT;>;)",
            "Lrx/b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 6158
    new-instance v0, Lrx/internal/operators/ar;

    invoke-direct {v0, p1}, Lrx/internal/operators/ar;-><init>(Lrx/b/b;)V

    invoke-virtual {p0, v0}, Lrx/b;->lift(Lrx/b$g;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public final onBackpressureLatest()Lrx/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 6200
    invoke-static {}, Lrx/internal/operators/OperatorOnBackpressureLatest;->a()Lrx/internal/operators/OperatorOnBackpressureLatest;

    move-result-object v0

    invoke-virtual {p0, v0}, Lrx/b;->lift(Lrx/b$g;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public final onErrorResumeNext(Lrx/b/f;)Lrx/b;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/b/f",
            "<",
            "Ljava/lang/Throwable;",
            "+",
            "Lrx/b",
            "<+TT;>;>;)",
            "Lrx/b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 6233
    new-instance v0, Lrx/internal/operators/as;

    invoke-direct {v0, p1}, Lrx/internal/operators/as;-><init>(Lrx/b/f;)V

    invoke-virtual {p0, v0}, Lrx/b;->lift(Lrx/b$g;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public final onErrorResumeNext(Lrx/b;)Lrx/b;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/b",
            "<+TT;>;)",
            "Lrx/b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 6266
    invoke-static {p1}, Lrx/internal/operators/as;->a(Lrx/b;)Lrx/internal/operators/as;

    move-result-object v0

    invoke-virtual {p0, v0}, Lrx/b;->lift(Lrx/b$g;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public final onErrorReturn(Lrx/b/f;)Lrx/b;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/b/f",
            "<",
            "Ljava/lang/Throwable;",
            "+TT;>;)",
            "Lrx/b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 6296
    invoke-static {p1}, Lrx/internal/operators/as;->a(Lrx/b/f;)Lrx/internal/operators/as;

    move-result-object v0

    invoke-virtual {p0, v0}, Lrx/b;->lift(Lrx/b$g;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public final onExceptionResumeNext(Lrx/b;)Lrx/b;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/b",
            "<+TT;>;)",
            "Lrx/b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 6332
    invoke-static {p1}, Lrx/internal/operators/as;->b(Lrx/b;)Lrx/internal/operators/as;

    move-result-object v0

    invoke-virtual {p0, v0}, Lrx/b;->lift(Lrx/b$g;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public final publish(Lrx/b/f;)Lrx/b;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/b/f",
            "<-",
            "Lrx/b",
            "<TT;>;+",
            "Lrx/b",
            "<TR;>;>;)",
            "Lrx/b",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 6374
    invoke-static {p0, p1}, Lrx/internal/operators/OperatorPublish;->a(Lrx/b;Lrx/b/f;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public final publish()Lrx/observables/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/observables/b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 6351
    invoke-static {p0}, Lrx/internal/operators/OperatorPublish;->a(Lrx/b;)Lrx/observables/b;

    move-result-object v0

    return-object v0
.end method

.method public final reduce(Ljava/lang/Object;Lrx/b/g;)Lrx/b;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(TR;",
            "Lrx/b/g",
            "<TR;-TT;TR;>;)",
            "Lrx/b",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 6446
    invoke-virtual {p0, p1, p2}, Lrx/b;->scan(Ljava/lang/Object;Lrx/b/g;)Lrx/b;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lrx/b;->takeLast(I)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public final reduce(Lrx/b/g;)Lrx/b;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/b/g",
            "<TT;TT;TT;>;)",
            "Lrx/b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 6413
    invoke-virtual {p0, p1}, Lrx/b;->scan(Lrx/b/g;)Lrx/b;

    move-result-object v0

    invoke-virtual {v0}, Lrx/b;->last()Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public final repeat()Lrx/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 6462
    invoke-static {p0}, Lrx/internal/operators/j;->b(Lrx/b;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public final repeat(J)Lrx/b;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lrx/b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 6504
    invoke-static {p0, p1, p2}, Lrx/internal/operators/j;->b(Lrx/b;J)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public final repeat(JLrx/e;)Lrx/b;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lrx/e;",
            ")",
            "Lrx/b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 6527
    invoke-static {p0, p1, p2, p3}, Lrx/internal/operators/j;->a(Lrx/b;JLrx/e;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public final repeat(Lrx/e;)Lrx/b;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/e;",
            ")",
            "Lrx/b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 6481
    invoke-static {p0, p1}, Lrx/internal/operators/j;->a(Lrx/b;Lrx/e;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public final repeatWhen(Lrx/b/f;)Lrx/b;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/b/f",
            "<-",
            "Lrx/b",
            "<+",
            "Ljava/lang/Void;",
            ">;+",
            "Lrx/b",
            "<*>;>;)",
            "Lrx/b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 6586
    new-instance v0, Lrx/b$7;

    invoke-direct {v0, p0, p1}, Lrx/b$7;-><init>(Lrx/b;Lrx/b/f;)V

    .line 6597
    invoke-static {p0, v0}, Lrx/internal/operators/j;->b(Lrx/b;Lrx/b/f;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public final repeatWhen(Lrx/b/f;Lrx/e;)Lrx/b;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/b/f",
            "<-",
            "Lrx/b",
            "<+",
            "Ljava/lang/Void;",
            ">;+",
            "Lrx/b",
            "<*>;>;",
            "Lrx/e;",
            ")",
            "Lrx/b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 6552
    new-instance v0, Lrx/b$6;

    invoke-direct {v0, p0, p1}, Lrx/b$6;-><init>(Lrx/b;Lrx/b/f;)V

    .line 6563
    invoke-static {p0, v0, p2}, Lrx/internal/operators/j;->b(Lrx/b;Lrx/b/f;Lrx/e;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public final replay(Lrx/b/f;)Lrx/b;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/b/f",
            "<-",
            "Lrx/b",
            "<TT;>;+",
            "Lrx/b",
            "<TR;>;>;)",
            "Lrx/b",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 6648
    new-instance v0, Lrx/b$8;

    invoke-direct {v0, p0}, Lrx/b$8;-><init>(Lrx/b;)V

    invoke-static {v0, p1}, Lrx/internal/operators/OperatorReplay;->a(Lrx/b/e;Lrx/b/f;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public final replay(Lrx/b/f;I)Lrx/b;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/b/f",
            "<-",
            "Lrx/b",
            "<TT;>;+",
            "Lrx/b",
            "<TR;>;>;I)",
            "Lrx/b",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 6684
    new-instance v0, Lrx/b$9;

    invoke-direct {v0, p0, p2}, Lrx/b$9;-><init>(Lrx/b;I)V

    invoke-static {v0, p1}, Lrx/internal/operators/OperatorReplay;->a(Lrx/b/e;Lrx/b/f;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public final replay(Lrx/b/f;IJLjava/util/concurrent/TimeUnit;)Lrx/b;
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/b/f",
            "<-",
            "Lrx/b",
            "<TT;>;+",
            "Lrx/b",
            "<TR;>;>;IJ",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lrx/b",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 6725
    invoke-static {}, Lrx/schedulers/Schedulers;->computation()Lrx/e;

    move-result-object v7

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    move-object v6, p5

    invoke-virtual/range {v1 .. v7}, Lrx/b;->replay(Lrx/b/f;IJLjava/util/concurrent/TimeUnit;Lrx/e;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public final replay(Lrx/b/f;IJLjava/util/concurrent/TimeUnit;Lrx/e;)Lrx/b;
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/b/f",
            "<-",
            "Lrx/b",
            "<TT;>;+",
            "Lrx/b",
            "<TR;>;>;IJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Lrx/e;",
            ")",
            "Lrx/b",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 6765
    if-gez p2, :cond_0

    .line 6766
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bufferSize < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6768
    :cond_0
    new-instance v1, Lrx/b$10;

    move-object v2, p0

    move v3, p2

    move-wide v4, p3

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Lrx/b$10;-><init>(Lrx/b;IJLjava/util/concurrent/TimeUnit;Lrx/e;)V

    invoke-static {v1, p1}, Lrx/internal/operators/OperatorReplay;->a(Lrx/b/e;Lrx/b/f;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public final replay(Lrx/b/f;ILrx/e;)Lrx/b;
    .locals 2
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/b/f",
            "<-",
            "Lrx/b",
            "<TT;>;+",
            "Lrx/b",
            "<TR;>;>;I",
            "Lrx/e;",
            ")",
            "Lrx/b",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 6806
    new-instance v0, Lrx/b$11;

    invoke-direct {v0, p0, p2}, Lrx/b$11;-><init>(Lrx/b;I)V

    new-instance v1, Lrx/b$13;

    invoke-direct {v1, p0, p1, p3}, Lrx/b$13;-><init>(Lrx/b;Lrx/b/f;Lrx/e;)V

    invoke-static {v0, v1}, Lrx/internal/operators/OperatorReplay;->a(Lrx/b/e;Lrx/b/f;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public final replay(Lrx/b/f;JLjava/util/concurrent/TimeUnit;)Lrx/b;
    .locals 6
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/b/f",
            "<-",
            "Lrx/b",
            "<TT;>;+",
            "Lrx/b",
            "<TR;>;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lrx/b",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 6849
    invoke-static {}, Lrx/schedulers/Schedulers;->computation()Lrx/e;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lrx/b;->replay(Lrx/b/f;JLjava/util/concurrent/TimeUnit;Lrx/e;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public final replay(Lrx/b/f;JLjava/util/concurrent/TimeUnit;Lrx/e;)Lrx/b;
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/b/f",
            "<-",
            "Lrx/b",
            "<TT;>;+",
            "Lrx/b",
            "<TR;>;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lrx/e;",
            ")",
            "Lrx/b",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 6884
    new-instance v0, Lrx/b$14;

    move-object v1, p0

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lrx/b$14;-><init>(Lrx/b;JLjava/util/concurrent/TimeUnit;Lrx/e;)V

    invoke-static {v0, p1}, Lrx/internal/operators/OperatorReplay;->a(Lrx/b/e;Lrx/b/f;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public final replay(Lrx/b/f;Lrx/e;)Lrx/b;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/b/f",
            "<-",
            "Lrx/b",
            "<TT;>;+",
            "Lrx/b",
            "<TR;>;>;",
            "Lrx/e;",
            ")",
            "Lrx/b",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 6919
    new-instance v0, Lrx/b$15;

    invoke-direct {v0, p0}, Lrx/b$15;-><init>(Lrx/b;)V

    new-instance v1, Lrx/b$16;

    invoke-direct {v1, p0, p1, p2}, Lrx/b$16;-><init>(Lrx/b;Lrx/b/f;Lrx/e;)V

    invoke-static {v0, v1}, Lrx/internal/operators/OperatorReplay;->a(Lrx/b/e;Lrx/b/f;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public final replay()Lrx/observables/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/observables/b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 6621
    invoke-static {p0}, Lrx/internal/operators/OperatorReplay;->a(Lrx/b;)Lrx/observables/b;

    move-result-object v0

    return-object v0
.end method

.method public final replay(I)Lrx/observables/b;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lrx/observables/b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 6955
    invoke-static {p0, p1}, Lrx/internal/operators/OperatorReplay;->a(Lrx/b;I)Lrx/observables/b;

    move-result-object v0

    return-object v0
.end method

.method public final replay(IJLjava/util/concurrent/TimeUnit;)Lrx/observables/b;
    .locals 6
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lrx/observables/b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 6986
    invoke-static {}, Lrx/schedulers/Schedulers;->computation()Lrx/e;

    move-result-object v5

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lrx/b;->replay(IJLjava/util/concurrent/TimeUnit;Lrx/e;)Lrx/observables/b;

    move-result-object v0

    return-object v0
.end method

.method public final replay(IJLjava/util/concurrent/TimeUnit;Lrx/e;)Lrx/observables/b;
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Lrx/e;",
            ")",
            "Lrx/observables/b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 7021
    if-gez p1, :cond_0

    .line 7022
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bufferSize < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move-object v1, p0

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    move v6, p1

    .line 7024
    invoke-static/range {v1 .. v6}, Lrx/internal/operators/OperatorReplay;->a(Lrx/b;JLjava/util/concurrent/TimeUnit;Lrx/e;I)Lrx/observables/b;

    move-result-object v0

    return-object v0
.end method

.method public final replay(ILrx/e;)Lrx/observables/b;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lrx/e;",
            ")",
            "Lrx/observables/b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 7052
    invoke-virtual {p0, p1}, Lrx/b;->replay(I)Lrx/observables/b;

    move-result-object v0

    invoke-static {v0, p2}, Lrx/internal/operators/OperatorReplay;->a(Lrx/observables/b;Lrx/e;)Lrx/observables/b;

    move-result-object v0

    return-object v0
.end method

.method public final replay(JLjava/util/concurrent/TimeUnit;)Lrx/observables/b;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lrx/observables/b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 7080
    invoke-static {}, Lrx/schedulers/Schedulers;->computation()Lrx/e;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lrx/b;->replay(JLjava/util/concurrent/TimeUnit;Lrx/e;)Lrx/observables/b;

    move-result-object v0

    return-object v0
.end method

.method public final replay(JLjava/util/concurrent/TimeUnit;Lrx/e;)Lrx/observables/b;
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lrx/e;",
            ")",
            "Lrx/observables/b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 7110
    invoke-static {p0, p1, p2, p3, p4}, Lrx/internal/operators/OperatorReplay;->a(Lrx/b;JLjava/util/concurrent/TimeUnit;Lrx/e;)Lrx/observables/b;

    move-result-object v0

    return-object v0
.end method

.method public final replay(Lrx/e;)Lrx/observables/b;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/e;",
            ")",
            "Lrx/observables/b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 7137
    invoke-virtual {p0}, Lrx/b;->replay()Lrx/observables/b;

    move-result-object v0

    invoke-static {v0, p1}, Lrx/internal/operators/OperatorReplay;->a(Lrx/observables/b;Lrx/e;)Lrx/observables/b;

    move-result-object v0

    return-object v0
.end method

.method public final retry()Lrx/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 7162
    invoke-static {p0}, Lrx/internal/operators/j;->a(Lrx/b;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public final retry(J)Lrx/b;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lrx/b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 7190
    invoke-static {p0, p1, p2}, Lrx/internal/operators/j;->a(Lrx/b;J)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public final retry(Lrx/b/g;)Lrx/b;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/b/g",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lrx/b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 7213
    invoke-virtual {p0}, Lrx/b;->nest()Lrx/b;

    move-result-object v0

    new-instance v1, Lrx/internal/operators/at;

    invoke-direct {v1, p1}, Lrx/internal/operators/at;-><init>(Lrx/b/g;)V

    invoke-virtual {v0, v1}, Lrx/b;->lift(Lrx/b$g;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public final retryWhen(Lrx/b/f;)Lrx/b;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/b/f",
            "<-",
            "Lrx/b",
            "<+",
            "Ljava/lang/Throwable;",
            ">;+",
            "Lrx/b",
            "<*>;>;)",
            "Lrx/b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 7265
    new-instance v0, Lrx/b$17;

    invoke-direct {v0, p0, p1}, Lrx/b$17;-><init>(Lrx/b;Lrx/b/f;)V

    .line 7276
    invoke-static {p0, v0}, Lrx/internal/operators/j;->a(Lrx/b;Lrx/b/f;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public final retryWhen(Lrx/b/f;Lrx/e;)Lrx/b;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/b/f",
            "<-",
            "Lrx/b",
            "<+",
            "Ljava/lang/Throwable;",
            ">;+",
            "Lrx/b",
            "<*>;>;",
            "Lrx/e;",
            ")",
            "Lrx/b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 7303
    new-instance v0, Lrx/b$18;

    invoke-direct {v0, p0, p1}, Lrx/b$18;-><init>(Lrx/b;Lrx/b/f;)V

    .line 7314
    invoke-static {p0, v0, p2}, Lrx/internal/operators/j;->a(Lrx/b;Lrx/b/f;Lrx/e;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public final sample(JLjava/util/concurrent/TimeUnit;)Lrx/b;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lrx/b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 7340
    invoke-static {}, Lrx/schedulers/Schedulers;->computation()Lrx/e;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lrx/b;->sample(JLjava/util/concurrent/TimeUnit;Lrx/e;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public final sample(JLjava/util/concurrent/TimeUnit;Lrx/e;)Lrx/b;
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lrx/e;",
            ")",
            "Lrx/b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 7368
    new-instance v0, Lrx/internal/operators/av;

    invoke-direct {v0, p1, p2, p3, p4}, Lrx/internal/operators/av;-><init>(JLjava/util/concurrent/TimeUnit;Lrx/e;)V

    invoke-virtual {p0, v0}, Lrx/b;->lift(Lrx/b$g;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public final sample(Lrx/b;)Lrx/b;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/b",
            "<TU;>;)",
            "Lrx/b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 7393
    new-instance v0, Lrx/internal/operators/au;

    invoke-direct {v0, p1}, Lrx/internal/operators/au;-><init>(Lrx/b;)V

    invoke-virtual {p0, v0}, Lrx/b;->lift(Lrx/b$g;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public final scan(Ljava/lang/Object;Lrx/b/g;)Lrx/b;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(TR;",
            "Lrx/b/g",
            "<TR;-TT;TR;>;)",
            "Lrx/b",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 7449
    new-instance v0, Lrx/internal/operators/aw;

    invoke-direct {v0, p1, p2}, Lrx/internal/operators/aw;-><init>(Ljava/lang/Object;Lrx/b/g;)V

    invoke-virtual {p0, v0}, Lrx/b;->lift(Lrx/b$g;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public final scan(Lrx/b/g;)Lrx/b;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/b/g",
            "<TT;TT;TT;>;)",
            "Lrx/b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 7418
    new-instance v0, Lrx/internal/operators/aw;

    invoke-direct {v0, p1}, Lrx/internal/operators/aw;-><init>(Lrx/b/g;)V

    invoke-virtual {p0, v0}, Lrx/b;->lift(Lrx/b$g;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public final serialize()Lrx/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 7473
    invoke-static {}, Lrx/internal/operators/ay;->a()Lrx/internal/operators/ay;

    move-result-object v0

    invoke-virtual {p0, v0}, Lrx/b;->lift(Lrx/b$g;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public final share()Lrx/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 7498
    invoke-virtual {p0}, Lrx/b;->publish()Lrx/observables/b;

    move-result-object v0

    invoke-virtual {v0}, Lrx/observables/b;->a()Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public final single()Lrx/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 7520
    invoke-static {}, Lrx/internal/operators/az;->a()Lrx/internal/operators/az;

    move-result-object v0

    invoke-virtual {p0, v0}, Lrx/b;->lift(Lrx/b$g;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public final single(Lrx/b/f;)Lrx/b;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/b/f",
            "<-TT;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lrx/b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 7546
    invoke-virtual {p0, p1}, Lrx/b;->filter(Lrx/b/f;)Lrx/b;

    move-result-object v0

    invoke-virtual {v0}, Lrx/b;->single()Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public final singleOrDefault(Ljava/lang/Object;)Lrx/b;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lrx/b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 7569
    new-instance v0, Lrx/internal/operators/az;

    invoke-direct {v0, p1}, Lrx/internal/operators/az;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lrx/b;->lift(Lrx/b$g;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public final singleOrDefault(Ljava/lang/Object;Lrx/b/f;)Lrx/b;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lrx/b/f",
            "<-TT;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lrx/b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 7595
    invoke-virtual {p0, p2}, Lrx/b;->filter(Lrx/b/f;)Lrx/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lrx/b;->singleOrDefault(Ljava/lang/Object;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public final skip(I)Lrx/b;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lrx/b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 7615
    new-instance v0, Lrx/internal/operators/ba;

    invoke-direct {v0, p1}, Lrx/internal/operators/ba;-><init>(I)V

    invoke-virtual {p0, v0}, Lrx/b;->lift(Lrx/b$g;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public final skip(JLjava/util/concurrent/TimeUnit;)Lrx/b;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lrx/b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 7637
    invoke-static {}, Lrx/schedulers/Schedulers;->computation()Lrx/e;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lrx/b;->skip(JLjava/util/concurrent/TimeUnit;Lrx/e;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public final skip(JLjava/util/concurrent/TimeUnit;Lrx/e;)Lrx/b;
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lrx/e;",
            ")",
            "Lrx/b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 7661
    new-instance v0, Lrx/internal/operators/bd;

    invoke-direct {v0, p1, p2, p3, p4}, Lrx/internal/operators/bd;-><init>(JLjava/util/concurrent/TimeUnit;Lrx/e;)V

    invoke-virtual {p0, v0}, Lrx/b;->lift(Lrx/b$g;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public final skipLast(I)Lrx/b;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lrx/b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 7687
    new-instance v0, Lrx/internal/operators/bb;

    invoke-direct {v0, p1}, Lrx/internal/operators/bb;-><init>(I)V

    invoke-virtual {p0, v0}, Lrx/b;->lift(Lrx/b$g;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public final skipLast(JLjava/util/concurrent/TimeUnit;)Lrx/b;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lrx/b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 7711
    invoke-static {}, Lrx/schedulers/Schedulers;->computation()Lrx/e;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lrx/b;->skipLast(JLjava/util/concurrent/TimeUnit;Lrx/e;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public final skipLast(JLjava/util/concurrent/TimeUnit;Lrx/e;)Lrx/b;
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lrx/e;",
            ")",
            "Lrx/b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 7737
    new-instance v0, Lrx/internal/operators/bc;

    invoke-direct {v0, p1, p2, p3, p4}, Lrx/internal/operators/bc;-><init>(JLjava/util/concurrent/TimeUnit;Lrx/e;)V

    invoke-virtual {p0, v0}, Lrx/b;->lift(Lrx/b$g;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public final skipUntil(Lrx/b;)Lrx/b;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/b",
            "<TU;>;)",
            "Lrx/b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 7758
    new-instance v0, Lrx/internal/operators/be;

    invoke-direct {v0, p1}, Lrx/internal/operators/be;-><init>(Lrx/b;)V

    invoke-virtual {p0, v0}, Lrx/b;->lift(Lrx/b$g;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public final skipWhile(Lrx/b/f;)Lrx/b;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/b/f",
            "<-TT;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lrx/b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 7778
    new-instance v0, Lrx/internal/operators/bf;

    invoke-static {p1}, Lrx/internal/operators/bf;->a(Lrx/b/f;)Lrx/b/g;

    move-result-object v1

    invoke-direct {v0, v1}, Lrx/internal/operators/bf;-><init>(Lrx/b/g;)V

    invoke-virtual {p0, v0}, Lrx/b;->lift(Lrx/b$g;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public final startWith(Ljava/lang/Iterable;)Lrx/b;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<TT;>;)",
            "Lrx/b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 7818
    invoke-static {p1}, Lrx/b;->from(Ljava/lang/Iterable;)Lrx/b;

    move-result-object v0

    invoke-static {v0, p0}, Lrx/b;->concat(Lrx/b;Lrx/b;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public final startWith(Ljava/lang/Object;)Lrx/b;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lrx/b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 7838
    invoke-static {p1}, Lrx/b;->just(Ljava/lang/Object;)Lrx/b;

    move-result-object v0

    invoke-static {v0, p0}, Lrx/b;->concat(Lrx/b;Lrx/b;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public final startWith(Ljava/lang/Object;Ljava/lang/Object;)Lrx/b;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)",
            "Lrx/b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 7860
    invoke-static {p1, p2}, Lrx/b;->just(Ljava/lang/Object;Ljava/lang/Object;)Lrx/b;

    move-result-object v0

    invoke-static {v0, p0}, Lrx/b;->concat(Lrx/b;Lrx/b;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public final startWith(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lrx/b;
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;TT;)",
            "Lrx/b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 7884
    invoke-static {p1, p2, p3}, Lrx/b;->just(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lrx/b;

    move-result-object v0

    invoke-static {v0, p0}, Lrx/b;->concat(Lrx/b;Lrx/b;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public final startWith(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lrx/b;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;TT;TT;)",
            "Lrx/b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 7910
    invoke-static {p1, p2, p3, p4}, Lrx/b;->just(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lrx/b;

    move-result-object v0

    invoke-static {v0, p0}, Lrx/b;->concat(Lrx/b;Lrx/b;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public final startWith(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lrx/b;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;TT;TT;TT;)",
            "Lrx/b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 7938
    invoke-static {p1, p2, p3, p4, p5}, Lrx/b;->just(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lrx/b;

    move-result-object v0

    invoke-static {v0, p0}, Lrx/b;->concat(Lrx/b;Lrx/b;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public final startWith(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lrx/b;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;TT;TT;TT;TT;)",
            "Lrx/b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 7968
    invoke-static/range {p1 .. p6}, Lrx/b;->just(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lrx/b;

    move-result-object v0

    invoke-static {v0, p0}, Lrx/b;->concat(Lrx/b;Lrx/b;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public final startWith(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lrx/b;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;TT;TT;TT;TT;TT;)",
            "Lrx/b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 8000
    invoke-static/range {p1 .. p7}, Lrx/b;->just(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lrx/b;

    move-result-object v0

    invoke-static {v0, p0}, Lrx/b;->concat(Lrx/b;Lrx/b;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public final startWith(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lrx/b;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;TT;TT;TT;TT;TT;TT;)",
            "Lrx/b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 8034
    invoke-static/range {p1 .. p8}, Lrx/b;->just(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lrx/b;

    move-result-object v0

    invoke-static {v0, p0}, Lrx/b;->concat(Lrx/b;Lrx/b;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public final startWith(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lrx/b;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;TT;TT;TT;TT;TT;TT;TT;)",
            "Lrx/b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 8070
    invoke-static/range {p1 .. p9}, Lrx/b;->just(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lrx/b;

    move-result-object v0

    invoke-static {v0, p0}, Lrx/b;->concat(Lrx/b;Lrx/b;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public final startWith(Lrx/b;)Lrx/b;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/b",
            "<TT;>;)",
            "Lrx/b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 7798
    invoke-static {p1, p0}, Lrx/b;->concat(Lrx/b;Lrx/b;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public final subscribe()Lrx/i;
    .locals 1

    .prologue
    .line 8088
    new-instance v0, Lrx/b$19;

    invoke-direct {v0, p0}, Lrx/b$19;-><init>(Lrx/b;)V

    invoke-virtual {p0, v0}, Lrx/b;->subscribe(Lrx/h;)Lrx/i;

    move-result-object v0

    return-object v0
.end method

.method public final subscribe(Lrx/b/b;)Lrx/i;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/b/b",
            "<-TT;>;)",
            "Lrx/i;"
        }
    .end annotation

    .prologue
    .line 8126
    if-nez p1, :cond_0

    .line 8127
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "onNext can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8130
    :cond_0
    new-instance v0, Lrx/b$20;

    invoke-direct {v0, p0, p1}, Lrx/b$20;-><init>(Lrx/b;Lrx/b/b;)V

    invoke-virtual {p0, v0}, Lrx/b;->subscribe(Lrx/h;)Lrx/i;

    move-result-object v0

    return-object v0
.end method

.method public final subscribe(Lrx/b/b;Lrx/b/b;)Lrx/i;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/b/b",
            "<-TT;>;",
            "Lrx/b/b",
            "<",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lrx/i;"
        }
    .end annotation

    .prologue
    .line 8171
    if-nez p1, :cond_0

    .line 8172
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "onNext can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8174
    :cond_0
    if-nez p2, :cond_1

    .line 8175
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "onError can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8178
    :cond_1
    new-instance v0, Lrx/b$21;

    invoke-direct {v0, p0, p2, p1}, Lrx/b$21;-><init>(Lrx/b;Lrx/b/b;Lrx/b/b;)V

    invoke-virtual {p0, v0}, Lrx/b;->subscribe(Lrx/h;)Lrx/i;

    move-result-object v0

    return-object v0
.end method

.method public final subscribe(Lrx/b/b;Lrx/b/b;Lrx/b/a;)Lrx/i;
    .locals 2
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/b/b",
            "<-TT;>;",
            "Lrx/b/b",
            "<",
            "Ljava/lang/Throwable;",
            ">;",
            "Lrx/b/a;",
            ")",
            "Lrx/i;"
        }
    .end annotation

    .prologue
    .line 8223
    if-nez p1, :cond_0

    .line 8224
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "onNext can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8226
    :cond_0
    if-nez p2, :cond_1

    .line 8227
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "onError can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8229
    :cond_1
    if-nez p3, :cond_2

    .line 8230
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "onComplete can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8233
    :cond_2
    new-instance v0, Lrx/b$22;

    invoke-direct {v0, p0, p3, p2, p1}, Lrx/b$22;-><init>(Lrx/b;Lrx/b/a;Lrx/b/b;Lrx/b/b;)V

    invoke-virtual {p0, v0}, Lrx/b;->subscribe(Lrx/h;)Lrx/i;

    move-result-object v0

    return-object v0
.end method

.method public final subscribe(Lrx/c;)Lrx/i;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/c",
            "<-TT;>;)",
            "Lrx/i;"
        }
    .end annotation

    .prologue
    .line 8268
    instance-of v0, p1, Lrx/h;

    if-eqz v0, :cond_0

    .line 8269
    check-cast p1, Lrx/h;

    invoke-virtual {p0, p1}, Lrx/b;->subscribe(Lrx/h;)Lrx/i;

    move-result-object v0

    .line 8271
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lrx/b$24;

    invoke-direct {v0, p0, p1}, Lrx/b$24;-><init>(Lrx/b;Lrx/c;)V

    invoke-virtual {p0, v0}, Lrx/b;->subscribe(Lrx/h;)Lrx/i;

    move-result-object v0

    goto :goto_0
.end method

.method public final subscribe(Lrx/h;)Lrx/i;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/h",
            "<-TT;>;)",
            "Lrx/i;"
        }
    .end annotation

    .prologue
    .line 8374
    invoke-static {p1, p0}, Lrx/b;->subscribe(Lrx/h;Lrx/b;)Lrx/i;

    move-result-object v0

    return-object v0
.end method

.method public final subscribeOn(Lrx/e;)Lrx/b;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/e;",
            ")",
            "Lrx/b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 8447
    instance-of v0, p0, Lrx/internal/util/ScalarSynchronousObservable;

    if-eqz v0, :cond_0

    .line 8448
    check-cast p0, Lrx/internal/util/ScalarSynchronousObservable;

    invoke-virtual {p0, p1}, Lrx/internal/util/ScalarSynchronousObservable;->scalarScheduleOn(Lrx/e;)Lrx/b;

    move-result-object v0

    .line 8450
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lrx/internal/operators/bg;

    invoke-direct {v0, p0, p1}, Lrx/internal/operators/bg;-><init>(Lrx/b;Lrx/e;)V

    invoke-static {v0}, Lrx/b;->create(Lrx/b$f;)Lrx/b;

    move-result-object v0

    goto :goto_0
.end method

.method public final switchIfEmpty(Lrx/b;)Lrx/b;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/b",
            "<+TT;>;)",
            "Lrx/b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 4146
    new-instance v0, Lrx/internal/operators/bi;

    invoke-direct {v0, p1}, Lrx/internal/operators/bi;-><init>(Lrx/b;)V

    invoke-virtual {p0, v0}, Lrx/b;->lift(Lrx/b$g;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public final switchMap(Lrx/b/f;)Lrx/b;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/b/f",
            "<-TT;+",
            "Lrx/b",
            "<+TR;>;>;)",
            "Lrx/b",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 8471
    invoke-virtual {p0, p1}, Lrx/b;->map(Lrx/b/f;)Lrx/b;

    move-result-object v0

    invoke-static {v0}, Lrx/b;->switchOnNext(Lrx/b;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public final take(I)Lrx/b;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lrx/b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 8495
    new-instance v0, Lrx/internal/operators/bj;

    invoke-direct {v0, p1}, Lrx/internal/operators/bj;-><init>(I)V

    invoke-virtual {p0, v0}, Lrx/b;->lift(Lrx/b$g;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public final take(JLjava/util/concurrent/TimeUnit;)Lrx/b;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lrx/b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 8516
    invoke-static {}, Lrx/schedulers/Schedulers;->computation()Lrx/e;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lrx/b;->take(JLjava/util/concurrent/TimeUnit;Lrx/e;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public final take(JLjava/util/concurrent/TimeUnit;Lrx/e;)Lrx/b;
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lrx/e;",
            ")",
            "Lrx/b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 8540
    new-instance v0, Lrx/internal/operators/bn;

    invoke-direct {v0, p1, p2, p3, p4}, Lrx/internal/operators/bn;-><init>(JLjava/util/concurrent/TimeUnit;Lrx/e;)V

    invoke-virtual {p0, v0}, Lrx/b;->lift(Lrx/b$g;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public final takeFirst(Lrx/b/f;)Lrx/b;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/b/f",
            "<-TT;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lrx/b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 8561
    invoke-virtual {p0, p1}, Lrx/b;->filter(Lrx/b/f;)Lrx/b;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lrx/b;->take(I)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public final takeLast(I)Lrx/b;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lrx/b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 8583
    if-nez p1, :cond_0

    .line 8584
    invoke-virtual {p0}, Lrx/b;->ignoreElements()Lrx/b;

    move-result-object v0

    .line 8588
    :goto_0
    return-object v0

    .line 8585
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 8586
    invoke-static {}, Lrx/internal/operators/bl;->a()Lrx/internal/operators/bl;

    move-result-object v0

    invoke-virtual {p0, v0}, Lrx/b;->lift(Lrx/b$g;)Lrx/b;

    move-result-object v0

    goto :goto_0

    .line 8588
    :cond_1
    new-instance v0, Lrx/internal/operators/bk;

    invoke-direct {v0, p1}, Lrx/internal/operators/bk;-><init>(I)V

    invoke-virtual {p0, v0}, Lrx/b;->lift(Lrx/b$g;)Lrx/b;

    move-result-object v0

    goto :goto_0
.end method

.method public final takeLast(IJLjava/util/concurrent/TimeUnit;)Lrx/b;
    .locals 6
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lrx/b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 8612
    invoke-static {}, Lrx/schedulers/Schedulers;->computation()Lrx/e;

    move-result-object v5

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lrx/b;->takeLast(IJLjava/util/concurrent/TimeUnit;Lrx/e;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public final takeLast(IJLjava/util/concurrent/TimeUnit;Lrx/e;)Lrx/b;
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Lrx/e;",
            ")",
            "Lrx/b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 8642
    new-instance v0, Lrx/internal/operators/bm;

    move v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lrx/internal/operators/bm;-><init>(IJLjava/util/concurrent/TimeUnit;Lrx/e;)V

    invoke-virtual {p0, v0}, Lrx/b;->lift(Lrx/b$g;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public final takeLast(JLjava/util/concurrent/TimeUnit;)Lrx/b;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lrx/b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 8664
    invoke-static {}, Lrx/schedulers/Schedulers;->computation()Lrx/e;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lrx/b;->takeLast(JLjava/util/concurrent/TimeUnit;Lrx/e;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public final takeLast(JLjava/util/concurrent/TimeUnit;Lrx/e;)Lrx/b;
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lrx/e;",
            ")",
            "Lrx/b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 8690
    new-instance v0, Lrx/internal/operators/bm;

    invoke-direct {v0, p1, p2, p3, p4}, Lrx/internal/operators/bm;-><init>(JLjava/util/concurrent/TimeUnit;Lrx/e;)V

    invoke-virtual {p0, v0}, Lrx/b;->lift(Lrx/b$g;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public final takeLastBuffer(I)Lrx/b;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lrx/b",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 8710
    invoke-virtual {p0, p1}, Lrx/b;->takeLast(I)Lrx/b;

    move-result-object v0

    invoke-virtual {v0}, Lrx/b;->toList()Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public final takeLastBuffer(IJLjava/util/concurrent/TimeUnit;)Lrx/b;
    .locals 2
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lrx/b",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 8735
    invoke-virtual {p0, p1, p2, p3, p4}, Lrx/b;->takeLast(IJLjava/util/concurrent/TimeUnit;)Lrx/b;

    move-result-object v0

    invoke-virtual {v0}, Lrx/b;->toList()Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public final takeLastBuffer(IJLjava/util/concurrent/TimeUnit;Lrx/e;)Lrx/b;
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Lrx/e;",
            ")",
            "Lrx/b",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 8763
    invoke-virtual/range {p0 .. p5}, Lrx/b;->takeLast(IJLjava/util/concurrent/TimeUnit;Lrx/e;)Lrx/b;

    move-result-object v0

    invoke-virtual {v0}, Lrx/b;->toList()Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public final takeLastBuffer(JLjava/util/concurrent/TimeUnit;)Lrx/b;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lrx/b",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 8785
    invoke-virtual {p0, p1, p2, p3}, Lrx/b;->takeLast(JLjava/util/concurrent/TimeUnit;)Lrx/b;

    move-result-object v0

    invoke-virtual {v0}, Lrx/b;->toList()Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public final takeLastBuffer(JLjava/util/concurrent/TimeUnit;Lrx/e;)Lrx/b;
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lrx/e;",
            ")",
            "Lrx/b",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 8811
    invoke-virtual {p0, p1, p2, p3, p4}, Lrx/b;->takeLast(JLjava/util/concurrent/TimeUnit;Lrx/e;)Lrx/b;

    move-result-object v0

    invoke-virtual {v0}, Lrx/b;->toList()Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public final takeUntil(Lrx/b/f;)Lrx/b;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/b/f",
            "<-TT;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lrx/b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 8876
    new-instance v0, Lrx/internal/operators/bp;

    invoke-direct {v0, p1}, Lrx/internal/operators/bp;-><init>(Lrx/b/f;)V

    invoke-virtual {p0, v0}, Lrx/b;->lift(Lrx/b$g;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public final takeUntil(Lrx/b;)Lrx/b;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/b",
            "<+TE;>;)",
            "Lrx/b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 8833
    new-instance v0, Lrx/internal/operators/bo;

    invoke-direct {v0, p1}, Lrx/internal/operators/bo;-><init>(Lrx/b;)V

    invoke-virtual {p0, v0}, Lrx/b;->lift(Lrx/b$g;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public final takeWhile(Lrx/b/f;)Lrx/b;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/b/f",
            "<-TT;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lrx/b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 8854
    new-instance v0, Lrx/internal/operators/bq;

    invoke-direct {v0, p1}, Lrx/internal/operators/bq;-><init>(Lrx/b/f;)V

    invoke-virtual {p0, v0}, Lrx/b;->lift(Lrx/b$g;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public final throttleFirst(JLjava/util/concurrent/TimeUnit;)Lrx/b;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lrx/b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 8903
    invoke-static {}, Lrx/schedulers/Schedulers;->computation()Lrx/e;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lrx/b;->throttleFirst(JLjava/util/concurrent/TimeUnit;Lrx/e;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public final throttleFirst(JLjava/util/concurrent/TimeUnit;Lrx/e;)Lrx/b;
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lrx/e;",
            ")",
            "Lrx/b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 8933
    new-instance v0, Lrx/internal/operators/br;

    invoke-direct {v0, p1, p2, p3, p4}, Lrx/internal/operators/br;-><init>(JLjava/util/concurrent/TimeUnit;Lrx/e;)V

    invoke-virtual {p0, v0}, Lrx/b;->lift(Lrx/b$g;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public final throttleLast(JLjava/util/concurrent/TimeUnit;)Lrx/b;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lrx/b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 8962
    invoke-virtual {p0, p1, p2, p3}, Lrx/b;->sample(JLjava/util/concurrent/TimeUnit;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public final throttleLast(JLjava/util/concurrent/TimeUnit;Lrx/e;)Lrx/b;
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lrx/e;",
            ")",
            "Lrx/b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 8994
    invoke-virtual {p0, p1, p2, p3, p4}, Lrx/b;->sample(JLjava/util/concurrent/TimeUnit;Lrx/e;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public final throttleWithTimeout(JLjava/util/concurrent/TimeUnit;)Lrx/b;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lrx/b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 9032
    invoke-virtual {p0, p1, p2, p3}, Lrx/b;->debounce(JLjava/util/concurrent/TimeUnit;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public final throttleWithTimeout(JLjava/util/concurrent/TimeUnit;Lrx/e;)Lrx/b;
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lrx/e;",
            ")",
            "Lrx/b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 9074
    invoke-virtual {p0, p1, p2, p3, p4}, Lrx/b;->debounce(JLjava/util/concurrent/TimeUnit;Lrx/e;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public final timeInterval()Lrx/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/b",
            "<",
            "Lrx/schedulers/e",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 9091
    invoke-static {}, Lrx/schedulers/Schedulers;->immediate()Lrx/e;

    move-result-object v0

    invoke-virtual {p0, v0}, Lrx/b;->timeInterval(Lrx/e;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public final timeInterval(Lrx/e;)Lrx/b;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/e;",
            ")",
            "Lrx/b",
            "<",
            "Lrx/schedulers/e",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 9110
    new-instance v0, Lrx/internal/operators/bs;

    invoke-direct {v0, p1}, Lrx/internal/operators/bs;-><init>(Lrx/e;)V

    invoke-virtual {p0, v0}, Lrx/b;->lift(Lrx/b$g;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public final timeout(JLjava/util/concurrent/TimeUnit;)Lrx/b;
    .locals 7
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lrx/b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 9260
    const/4 v5, 0x0

    invoke-static {}, Lrx/schedulers/Schedulers;->computation()Lrx/e;

    move-result-object v6

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    invoke-virtual/range {v1 .. v6}, Lrx/b;->timeout(JLjava/util/concurrent/TimeUnit;Lrx/b;Lrx/e;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public final timeout(JLjava/util/concurrent/TimeUnit;Lrx/b;)Lrx/b;
    .locals 7
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lrx/b",
            "<+TT;>;)",
            "Lrx/b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 9284
    invoke-static {}, Lrx/schedulers/Schedulers;->computation()Lrx/e;

    move-result-object v6

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v1 .. v6}, Lrx/b;->timeout(JLjava/util/concurrent/TimeUnit;Lrx/b;Lrx/e;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public final timeout(JLjava/util/concurrent/TimeUnit;Lrx/b;Lrx/e;)Lrx/b;
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lrx/b",
            "<+TT;>;",
            "Lrx/e;",
            ")",
            "Lrx/b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 9311
    new-instance v1, Lrx/internal/operators/bt;

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lrx/internal/operators/bt;-><init>(JLjava/util/concurrent/TimeUnit;Lrx/b;Lrx/e;)V

    invoke-virtual {p0, v1}, Lrx/b;->lift(Lrx/b$g;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public final timeout(JLjava/util/concurrent/TimeUnit;Lrx/e;)Lrx/b;
    .locals 7
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lrx/e;",
            ")",
            "Lrx/b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 9337
    const/4 v5, 0x0

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, Lrx/b;->timeout(JLjava/util/concurrent/TimeUnit;Lrx/b;Lrx/e;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public final timeout(Lrx/b/e;Lrx/b/f;)Lrx/b;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/b/e",
            "<+",
            "Lrx/b",
            "<TU;>;>;",
            "Lrx/b/f",
            "<-TT;+",
            "Lrx/b",
            "<TV;>;>;)",
            "Lrx/b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 9141
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lrx/b;->timeout(Lrx/b/e;Lrx/b/f;Lrx/b;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public final timeout(Lrx/b/e;Lrx/b/f;Lrx/b;)Lrx/b;
    .locals 2
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/b/e",
            "<+",
            "Lrx/b",
            "<TU;>;>;",
            "Lrx/b/f",
            "<-TT;+",
            "Lrx/b",
            "<TV;>;>;",
            "Lrx/b",
            "<+TT;>;)",
            "Lrx/b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 9176
    if-nez p2, :cond_0

    .line 9177
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "timeoutSelector is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 9179
    :cond_0
    new-instance v0, Lrx/internal/operators/bv;

    invoke-direct {v0, p1, p2, p3}, Lrx/internal/operators/bv;-><init>(Lrx/b/e;Lrx/b/f;Lrx/b;)V

    invoke-virtual {p0, v0}, Lrx/b;->lift(Lrx/b$g;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public final timeout(Lrx/b/f;)Lrx/b;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/b/f",
            "<-TT;+",
            "Lrx/b",
            "<TV;>;>;)",
            "Lrx/b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 9207
    invoke-virtual {p0, v0, p1, v0}, Lrx/b;->timeout(Lrx/b/e;Lrx/b/f;Lrx/b;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public final timeout(Lrx/b/f;Lrx/b;)Lrx/b;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/b/f",
            "<-TT;+",
            "Lrx/b",
            "<TV;>;>;",
            "Lrx/b",
            "<+TT;>;)",
            "Lrx/b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 9237
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Lrx/b;->timeout(Lrx/b/e;Lrx/b/f;Lrx/b;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public final timestamp()Lrx/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/b",
            "<",
            "Lrx/schedulers/f",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 9354
    invoke-static {}, Lrx/schedulers/Schedulers;->immediate()Lrx/e;

    move-result-object v0

    invoke-virtual {p0, v0}, Lrx/b;->timestamp(Lrx/e;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public final timestamp(Lrx/e;)Lrx/b;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/e;",
            ")",
            "Lrx/b",
            "<",
            "Lrx/schedulers/f",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 9374
    new-instance v0, Lrx/internal/operators/bw;

    invoke-direct {v0, p1}, Lrx/internal/operators/bw;-><init>(Lrx/e;)V

    invoke-virtual {p0, v0}, Lrx/b;->lift(Lrx/b$g;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public final toBlocking()Lrx/observables/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/observables/a",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 9388
    invoke-static {p0}, Lrx/observables/a;->a(Lrx/b;)Lrx/observables/a;

    move-result-object v0

    return-object v0
.end method

.method public toCompletable()Lrx/a;
    .locals 1

    .prologue
    .line 257
    invoke-static {p0}, Lrx/a;->a(Lrx/b;)Lrx/a;

    move-result-object v0

    return-object v0
.end method

.method public final toList()Lrx/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/b",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 9417
    invoke-static {}, Lrx/internal/operators/bz;->a()Lrx/internal/operators/bz;

    move-result-object v0

    invoke-virtual {p0, v0}, Lrx/b;->lift(Lrx/b$g;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public final toMap(Lrx/b/f;)Lrx/b;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/b/f",
            "<-TT;+TK;>;)",
            "Lrx/b",
            "<",
            "Ljava/util/Map",
            "<TK;TT;>;>;"
        }
    .end annotation

    .prologue
    .line 9441
    new-instance v0, Lrx/internal/operators/bx;

    invoke-static {}, Lrx/internal/util/UtilityFunctions;->identity()Lrx/b/f;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lrx/internal/operators/bx;-><init>(Lrx/b/f;Lrx/b/f;)V

    invoke-virtual {p0, v0}, Lrx/b;->lift(Lrx/b$g;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public final toMap(Lrx/b/f;Lrx/b/f;)Lrx/b;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/b/f",
            "<-TT;+TK;>;",
            "Lrx/b/f",
            "<-TT;+TV;>;)",
            "Lrx/b",
            "<",
            "Ljava/util/Map",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 9468
    new-instance v0, Lrx/internal/operators/bx;

    invoke-direct {v0, p1, p2}, Lrx/internal/operators/bx;-><init>(Lrx/b/f;Lrx/b/f;)V

    invoke-virtual {p0, v0}, Lrx/b;->lift(Lrx/b$g;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public final toMap(Lrx/b/f;Lrx/b/f;Lrx/b/e;)Lrx/b;
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/b/f",
            "<-TT;+TK;>;",
            "Lrx/b/f",
            "<-TT;+TV;>;",
            "Lrx/b/e",
            "<+",
            "Ljava/util/Map",
            "<TK;TV;>;>;)",
            "Lrx/b",
            "<",
            "Ljava/util/Map",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 9494
    new-instance v0, Lrx/internal/operators/bx;

    invoke-direct {v0, p1, p2, p3}, Lrx/internal/operators/bx;-><init>(Lrx/b/f;Lrx/b/f;Lrx/b/e;)V

    invoke-virtual {p0, v0}, Lrx/b;->lift(Lrx/b$g;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public final toMultimap(Lrx/b/f;)Lrx/b;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/b/f",
            "<-TT;+TK;>;)",
            "Lrx/b",
            "<",
            "Ljava/util/Map",
            "<TK;",
            "Ljava/util/Collection",
            "<TT;>;>;>;"
        }
    .end annotation

    .prologue
    .line 9516
    new-instance v0, Lrx/internal/operators/by;

    invoke-static {}, Lrx/internal/util/UtilityFunctions;->identity()Lrx/b/f;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lrx/internal/operators/by;-><init>(Lrx/b/f;Lrx/b/f;)V

    invoke-virtual {p0, v0}, Lrx/b;->lift(Lrx/b$g;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public final toMultimap(Lrx/b/f;Lrx/b/f;)Lrx/b;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/b/f",
            "<-TT;+TK;>;",
            "Lrx/b/f",
            "<-TT;+TV;>;)",
            "Lrx/b",
            "<",
            "Ljava/util/Map",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;>;"
        }
    .end annotation

    .prologue
    .line 9541
    new-instance v0, Lrx/internal/operators/by;

    invoke-direct {v0, p1, p2}, Lrx/internal/operators/by;-><init>(Lrx/b/f;Lrx/b/f;)V

    invoke-virtual {p0, v0}, Lrx/b;->lift(Lrx/b$g;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public final toMultimap(Lrx/b/f;Lrx/b/f;Lrx/b/e;)Lrx/b;
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/b/f",
            "<-TT;+TK;>;",
            "Lrx/b/f",
            "<-TT;+TV;>;",
            "Lrx/b/e",
            "<+",
            "Ljava/util/Map",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;>;)",
            "Lrx/b",
            "<",
            "Ljava/util/Map",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;>;"
        }
    .end annotation

    .prologue
    .line 9568
    new-instance v0, Lrx/internal/operators/by;

    invoke-direct {v0, p1, p2, p3}, Lrx/internal/operators/by;-><init>(Lrx/b/f;Lrx/b/f;Lrx/b/e;)V

    invoke-virtual {p0, v0}, Lrx/b;->lift(Lrx/b$g;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public final toMultimap(Lrx/b/f;Lrx/b/f;Lrx/b/e;Lrx/b/f;)Lrx/b;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/b/f",
            "<-TT;+TK;>;",
            "Lrx/b/f",
            "<-TT;+TV;>;",
            "Lrx/b/e",
            "<+",
            "Ljava/util/Map",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;>;",
            "Lrx/b/f",
            "<-TK;+",
            "Ljava/util/Collection",
            "<TV;>;>;)",
            "Lrx/b",
            "<",
            "Ljava/util/Map",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;>;"
        }
    .end annotation

    .prologue
    .line 9597
    new-instance v0, Lrx/internal/operators/by;

    invoke-direct {v0, p1, p2, p3, p4}, Lrx/internal/operators/by;-><init>(Lrx/b/f;Lrx/b/f;Lrx/b/e;Lrx/b/f;)V

    invoke-virtual {p0, v0}, Lrx/b;->lift(Lrx/b$g;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public toSingle()Lrx/f;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/f",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 232
    new-instance v0, Lrx/f;

    invoke-static {p0}, Lrx/internal/operators/l;->a(Lrx/b;)Lrx/internal/operators/l;

    move-result-object v1

    invoke-direct {v0, v1}, Lrx/f;-><init>(Lrx/f$a;)V

    return-object v0
.end method

.method public final toSortedList()Lrx/b;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/b",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 9621
    new-instance v0, Lrx/internal/operators/ca;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lrx/internal/operators/ca;-><init>(I)V

    invoke-virtual {p0, v0}, Lrx/b;->lift(Lrx/b$g;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public final toSortedList(I)Lrx/b;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lrx/b",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 9672
    new-instance v0, Lrx/internal/operators/ca;

    invoke-direct {v0, p1}, Lrx/internal/operators/ca;-><init>(I)V

    invoke-virtual {p0, v0}, Lrx/b;->lift(Lrx/b$g;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public final toSortedList(Lrx/b/g;)Lrx/b;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/b/g",
            "<-TT;-TT;",
            "Ljava/lang/Integer;",
            ">;)",
            "Lrx/b",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 9644
    new-instance v0, Lrx/internal/operators/ca;

    const/16 v1, 0xa

    invoke-direct {v0, p1, v1}, Lrx/internal/operators/ca;-><init>(Lrx/b/g;I)V

    invoke-virtual {p0, v0}, Lrx/b;->lift(Lrx/b$g;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public final toSortedList(Lrx/b/g;I)Lrx/b;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/b/g",
            "<-TT;-TT;",
            "Ljava/lang/Integer;",
            ">;I)",
            "Lrx/b",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 9699
    new-instance v0, Lrx/internal/operators/ca;

    invoke-direct {v0, p1, p2}, Lrx/internal/operators/ca;-><init>(Lrx/b/g;I)V

    invoke-virtual {p0, v0}, Lrx/b;->lift(Lrx/b$g;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public final unsafeSubscribe(Lrx/h;)Lrx/i;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/h",
            "<-TT;>;)",
            "Lrx/i;"
        }
    .end annotation

    .prologue
    .line 8312
    :try_start_0
    invoke-virtual {p1}, Lrx/h;->onStart()V

    .line 8314
    sget-object v0, Lrx/b;->hook:Lrx/d/b;

    iget-object v1, p0, Lrx/b;->onSubscribe:Lrx/b$f;

    invoke-virtual {v0, p0, v1}, Lrx/d/b;->a(Lrx/b;Lrx/b$f;)Lrx/b$f;

    move-result-object v0

    invoke-interface {v0, p1}, Lrx/b$f;->call(Ljava/lang/Object;)V

    .line 8315
    sget-object v0, Lrx/b;->hook:Lrx/d/b;

    invoke-virtual {v0, p1}, Lrx/d/b;->a(Lrx/i;)Lrx/i;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 8332
    :goto_0
    return-object v0

    .line 8316
    :catch_0
    move-exception v0

    .line 8318
    invoke-static {v0}, Lrx/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 8321
    :try_start_1
    sget-object v1, Lrx/b;->hook:Lrx/d/b;

    invoke-virtual {v1, v0}, Lrx/d/b;->a(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {p1, v1}, Lrx/h;->onError(Ljava/lang/Throwable;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 8332
    invoke-static {}, Lrx/subscriptions/e;->b()Lrx/i;

    move-result-object v0

    goto :goto_0

    .line 8322
    :catch_1
    move-exception v1

    .line 8323
    invoke-static {v1}, Lrx/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 8326
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error occurred attempting to subscribe ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "] and then again while trying to pass to onError."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 8328
    sget-object v0, Lrx/b;->hook:Lrx/d/b;

    invoke-virtual {v0, v2}, Lrx/d/b;->a(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 8330
    throw v2
.end method

.method public final unsubscribeOn(Lrx/e;)Lrx/b;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/e;",
            ")",
            "Lrx/b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 9717
    new-instance v0, Lrx/internal/operators/cb;

    invoke-direct {v0, p1}, Lrx/internal/operators/cb;-><init>(Lrx/e;)V

    invoke-virtual {p0, v0}, Lrx/b;->lift(Lrx/b$g;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public final window(I)Lrx/b;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lrx/b",
            "<",
            "Lrx/b",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 9793
    invoke-virtual {p0, p1, p1}, Lrx/b;->window(II)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public final window(II)Lrx/b;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lrx/b",
            "<",
            "Lrx/b",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 9821
    new-instance v0, Lrx/internal/operators/ce;

    invoke-direct {v0, p1, p2}, Lrx/internal/operators/ce;-><init>(II)V

    invoke-virtual {p0, v0}, Lrx/b;->lift(Lrx/b$g;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public final window(JJLjava/util/concurrent/TimeUnit;)Lrx/b;
    .locals 9
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lrx/b",
            "<",
            "Lrx/b",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 9849
    const v7, 0x7fffffff

    invoke-static {}, Lrx/schedulers/Schedulers;->computation()Lrx/e;

    move-result-object v8

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    invoke-virtual/range {v1 .. v8}, Lrx/b;->window(JJLjava/util/concurrent/TimeUnit;ILrx/e;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public final window(JJLjava/util/concurrent/TimeUnit;ILrx/e;)Lrx/b;
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/concurrent/TimeUnit;",
            "I",
            "Lrx/e;",
            ")",
            "Lrx/b",
            "<",
            "Lrx/b",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 9912
    new-instance v1, Lrx/internal/operators/cg;

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    move v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v1 .. v8}, Lrx/internal/operators/cg;-><init>(JJLjava/util/concurrent/TimeUnit;ILrx/e;)V

    invoke-virtual {p0, v1}, Lrx/b;->lift(Lrx/b$g;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public final window(JJLjava/util/concurrent/TimeUnit;Lrx/e;)Lrx/b;
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Lrx/e;",
            ")",
            "Lrx/b",
            "<",
            "Lrx/b",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 9879
    const v7, 0x7fffffff

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    move-object v8, p6

    invoke-virtual/range {v1 .. v8}, Lrx/b;->window(JJLjava/util/concurrent/TimeUnit;ILrx/e;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public final window(JLjava/util/concurrent/TimeUnit;)Lrx/b;
    .locals 9
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lrx/b",
            "<",
            "Lrx/b",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 9939
    invoke-static {}, Lrx/schedulers/Schedulers;->computation()Lrx/e;

    move-result-object v7

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p1

    move-object v6, p3

    invoke-virtual/range {v1 .. v7}, Lrx/b;->window(JJLjava/util/concurrent/TimeUnit;Lrx/e;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public final window(JLjava/util/concurrent/TimeUnit;I)Lrx/b;
    .locals 7
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "I)",
            "Lrx/b",
            "<",
            "Lrx/b",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 9970
    invoke-static {}, Lrx/schedulers/Schedulers;->computation()Lrx/e;

    move-result-object v6

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v1 .. v6}, Lrx/b;->window(JLjava/util/concurrent/TimeUnit;ILrx/e;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public final window(JLjava/util/concurrent/TimeUnit;ILrx/e;)Lrx/b;
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "I",
            "Lrx/e;",
            ")",
            "Lrx/b",
            "<",
            "Lrx/b",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 10003
    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p1

    move-object v6, p3

    move v7, p4

    move-object v8, p5

    invoke-virtual/range {v1 .. v8}, Lrx/b;->window(JJLjava/util/concurrent/TimeUnit;ILrx/e;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public final window(JLjava/util/concurrent/TimeUnit;Lrx/e;)Lrx/b;
    .locals 7
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lrx/e;",
            ")",
            "Lrx/b",
            "<",
            "Lrx/b",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 10032
    const v5, 0x7fffffff

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, Lrx/b;->window(JLjava/util/concurrent/TimeUnit;ILrx/e;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public final window(Lrx/b/e;)Lrx/b;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TClosing:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/b/e",
            "<+",
            "Lrx/b",
            "<+TTClosing;>;>;)",
            "Lrx/b",
            "<",
            "Lrx/b",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 9768
    new-instance v0, Lrx/internal/operators/cd;

    invoke-direct {v0, p1}, Lrx/internal/operators/cd;-><init>(Lrx/b/e;)V

    invoke-virtual {p0, v0}, Lrx/b;->lift(Lrx/b$g;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public final window(Lrx/b;)Lrx/b;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/b",
            "<TU;>;)",
            "Lrx/b",
            "<",
            "Lrx/b",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 10086
    new-instance v0, Lrx/internal/operators/cc;

    invoke-direct {v0, p1}, Lrx/internal/operators/cc;-><init>(Lrx/b;)V

    invoke-virtual {p0, v0}, Lrx/b;->lift(Lrx/b$g;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public final window(Lrx/b;Lrx/b/f;)Lrx/b;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TOpening:",
            "Ljava/lang/Object;",
            "TClosing:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/b",
            "<+TTOpening;>;",
            "Lrx/b/f",
            "<-TTOpening;+",
            "Lrx/b",
            "<+TTClosing;>;>;)",
            "Lrx/b",
            "<",
            "Lrx/b",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 10059
    new-instance v0, Lrx/internal/operators/cf;

    invoke-direct {v0, p1, p2}, Lrx/internal/operators/cf;-><init>(Lrx/b;Lrx/b/f;)V

    invoke-virtual {p0, v0}, Lrx/b;->lift(Lrx/b$g;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public final withLatestFrom(Lrx/b;Lrx/b/g;)Lrx/b;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/b",
            "<+TU;>;",
            "Lrx/b/g",
            "<-TT;-TU;+TR;>;)",
            "Lrx/b",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 9742
    new-instance v0, Lrx/internal/operators/ch;

    invoke-direct {v0, p1, p2}, Lrx/internal/operators/ch;-><init>(Lrx/b;Lrx/b/g;)V

    invoke-virtual {p0, v0}, Lrx/b;->lift(Lrx/b$g;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public final zipWith(Ljava/lang/Iterable;Lrx/b/g;)Lrx/b;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T2:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<+TT2;>;",
            "Lrx/b/g",
            "<-TT;-TT2;+TR;>;)",
            "Lrx/b",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 10116
    new-instance v0, Lrx/internal/operators/ci;

    invoke-direct {v0, p1, p2}, Lrx/internal/operators/ci;-><init>(Ljava/lang/Iterable;Lrx/b/g;)V

    invoke-virtual {p0, v0}, Lrx/b;->lift(Lrx/b$g;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public final zipWith(Lrx/b;Lrx/b/g;)Lrx/b;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T2:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/b",
            "<+TT2;>;",
            "Lrx/b/g",
            "<-TT;-TT2;+TR;>;)",
            "Lrx/b",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 10143
    invoke-static {p0, p1, p2}, Lrx/b;->zip(Lrx/b;Lrx/b;Lrx/b/g;)Lrx/b;

    move-result-object v0

    return-object v0
.end method
