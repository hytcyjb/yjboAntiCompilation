.class public final Lcom/tencent/tencentmap/mapsdk/maps/a/gz;
.super Ljava/lang/Object;
.source "Observable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/tencentmap/mapsdk/maps/a/gz$a;
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
.field private static final b:Lcom/tencent/tencentmap/mapsdk/maps/a/hn;

.field private static final c:Lcom/tencent/tencentmap/mapsdk/maps/a/gz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tencent/tencentmap/mapsdk/maps/a/gz",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final a:Lcom/tencent/tencentmap/mapsdk/maps/a/gz$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tencent/tencentmap/mapsdk/maps/a/gz$a",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    invoke-static {}, Lcom/tencent/tencentmap/mapsdk/maps/a/hp;->a()Lcom/tencent/tencentmap/mapsdk/maps/a/hp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/hp;->c()Lcom/tencent/tencentmap/mapsdk/maps/a/hn;

    move-result-object v0

    sput-object v0, Lcom/tencent/tencentmap/mapsdk/maps/a/gz;->b:Lcom/tencent/tencentmap/mapsdk/maps/a/hn;

    .line 1033
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/gz$1;

    invoke-direct {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/gz$1;-><init>()V

    invoke-static {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/gz;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/gz$a;)Lcom/tencent/tencentmap/mapsdk/maps/a/gz;

    move-result-object v0

    sput-object v0, Lcom/tencent/tencentmap/mapsdk/maps/a/gz;->c:Lcom/tencent/tencentmap/mapsdk/maps/a/gz;

    return-void
.end method

.method private constructor <init>(Lcom/tencent/tencentmap/mapsdk/maps/a/gz$a;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/tencentmap/mapsdk/maps/a/gz$a",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 59
    .local p0, this:Lcom/tencent/tencentmap/mapsdk/maps/a/gz;,"Lcom/tencent/tencentmap/mapsdk/maps/a/gz<TT;>;"
    .local p1, f:Lcom/tencent/tencentmap/mapsdk/maps/a/gz$a;,"Lcom/tencent/tencentmap/mapsdk/maps/a/gz$a<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gz;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/gz$a;

    .line 61
    return-void
.end method

.method public static final a()Lcom/tencent/tencentmap/mapsdk/maps/a/gz;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/tencent/tencentmap/mapsdk/maps/a/gz",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1058
    sget-object v0, Lcom/tencent/tencentmap/mapsdk/maps/a/gz;->c:Lcom/tencent/tencentmap/mapsdk/maps/a/gz;

    return-object v0
.end method

.method public static final a(Lcom/tencent/tencentmap/mapsdk/maps/a/gz$a;)Lcom/tencent/tencentmap/mapsdk/maps/a/gz;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/tencent/tencentmap/mapsdk/maps/a/gz$a",
            "<TT;>;)",
            "Lcom/tencent/tencentmap/mapsdk/maps/a/gz",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 95
    .local p0, f:Lcom/tencent/tencentmap/mapsdk/maps/a/gz$a;,"Lcom/tencent/tencentmap/mapsdk/maps/a/gz$a<TT;>;"
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/gz;

    sget-object v1, Lcom/tencent/tencentmap/mapsdk/maps/a/gz;->b:Lcom/tencent/tencentmap/mapsdk/maps/a/hn;

    invoke-static {p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/hn;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/gz$a;)Lcom/tencent/tencentmap/mapsdk/maps/a/gz$a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/gz;-><init>(Lcom/tencent/tencentmap/mapsdk/maps/a/gz$a;)V

    return-object v0
.end method

.method private a(Lcom/tencent/tencentmap/mapsdk/maps/a/hc;)Lcom/tencent/tencentmap/mapsdk/maps/a/hd;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/tencentmap/mapsdk/maps/a/hc",
            "<-TT;>;)",
            "Lcom/tencent/tencentmap/mapsdk/maps/a/hd;"
        }
    .end annotation

    .prologue
    .line 7558
    .local p0, this:Lcom/tencent/tencentmap/mapsdk/maps/a/gz;,"Lcom/tencent/tencentmap/mapsdk/maps/a/gz<TT;>;"
    .local p1, subscriber:Lcom/tencent/tencentmap/mapsdk/maps/a/hc;,"Lcom/tencent/tencentmap/mapsdk/maps/a/hc<-TT;>;"
    if-nez p1, :cond_0

    .line 7559
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "observer can not be null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 7561
    :cond_0
    iget-object v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gz;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/gz$a;

    if-nez v4, :cond_1

    .line 7562
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "onSubscribe function can not be null."

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 7570
    :cond_1
    instance-of v4, p1, Lcom/tencent/tencentmap/mapsdk/maps/a/hl;

    if-nez v4, :cond_2

    .line 7579
    new-instance v3, Lcom/tencent/tencentmap/mapsdk/maps/a/hl;

    invoke-direct {v3, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/hl;-><init>(Lcom/tencent/tencentmap/mapsdk/maps/a/hc;)V

    .end local p1           #subscriber:Lcom/tencent/tencentmap/mapsdk/maps/a/hc;,"Lcom/tencent/tencentmap/mapsdk/maps/a/hc<-TT;>;"
    .local v3, subscriber:Lcom/tencent/tencentmap/mapsdk/maps/a/hc;,"Lcom/tencent/tencentmap/mapsdk/maps/a/hc<-TT;>;"
    move-object p1, v3

    .line 7585
    .end local v3           #subscriber:Lcom/tencent/tencentmap/mapsdk/maps/a/hc;,"Lcom/tencent/tencentmap/mapsdk/maps/a/hc<-TT;>;"
    .restart local p1       #subscriber:Lcom/tencent/tencentmap/mapsdk/maps/a/hc;,"Lcom/tencent/tencentmap/mapsdk/maps/a/hc<-TT;>;"
    :cond_2
    :try_start_0
    sget-object v4, Lcom/tencent/tencentmap/mapsdk/maps/a/gz;->b:Lcom/tencent/tencentmap/mapsdk/maps/a/hn;

    iget-object v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gz;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/gz$a;

    invoke-static {v4}, Lcom/tencent/tencentmap/mapsdk/maps/a/hn;->b(Lcom/tencent/tencentmap/mapsdk/maps/a/gz$a;)Lcom/tencent/tencentmap/mapsdk/maps/a/gz$a;

    move-result-object v4

    invoke-interface {v4, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/gz$a;->a(Ljava/lang/Object;)V

    .line 7586
    sget-object v4, Lcom/tencent/tencentmap/mapsdk/maps/a/gz;->b:Lcom/tencent/tencentmap/mapsdk/maps/a/hn;

    invoke-static {p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/hn;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/hd;)Lcom/tencent/tencentmap/mapsdk/maps/a/hd;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 7605
    :goto_0
    return-object v4

    .line 7587
    :catch_0
    move-exception v0

    .line 7589
    .local v0, e:Ljava/lang/Throwable;
    invoke-static {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/hf;->a(Ljava/lang/Throwable;)V

    .line 7592
    :try_start_1
    sget-object v4, Lcom/tencent/tencentmap/mapsdk/maps/a/gz;->b:Lcom/tencent/tencentmap/mapsdk/maps/a/hn;

    invoke-static {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/hn;->a(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/tencent/tencentmap/mapsdk/maps/a/hc;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catch Lcom/tencent/tencentmap/mapsdk/maps/a/hh; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    .line 7605
    invoke-static {}, Lcom/tencent/tencentmap/mapsdk/maps/a/hq;->a()Lcom/tencent/tencentmap/mapsdk/maps/a/hd;

    move-result-object v4

    goto :goto_0

    .line 7593
    :catch_1
    move-exception v4

    throw v4

    .line 7596
    :catch_2
    move-exception v1

    .line 7599
    .local v1, e2:Ljava/lang/Throwable;
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Error occurred attempting to subscribe ["

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] and then again while trying to pass to onError."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 7601
    .local v2, r:Ljava/lang/RuntimeException;
    sget-object v4, Lcom/tencent/tencentmap/mapsdk/maps/a/gz;->b:Lcom/tencent/tencentmap/mapsdk/maps/a/hn;

    invoke-static {v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/hn;->a(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 7603
    throw v2
.end method


# virtual methods
.method public final a(Lcom/tencent/tencentmap/mapsdk/maps/a/hi;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/tencentmap/mapsdk/maps/a/hi",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 4781
    .local p0, this:Lcom/tencent/tencentmap/mapsdk/maps/a/gz;,"Lcom/tencent/tencentmap/mapsdk/maps/a/gz<TT;>;"
    .local p1, onNext:Lcom/tencent/tencentmap/mapsdk/maps/a/hi;,"Lcom/tencent/tencentmap/mapsdk/maps/a/hi<-TT;>;"
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "onNext can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/gz$2;

    invoke-direct {v0, p0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/gz$2;-><init>(Lcom/tencent/tencentmap/mapsdk/maps/a/gz;Lcom/tencent/tencentmap/mapsdk/maps/a/hi;)V

    invoke-direct {p0, v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/gz;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/hc;)Lcom/tencent/tencentmap/mapsdk/maps/a/hd;

    .line 4782
    return-void
.end method
