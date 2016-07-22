.class public abstract Lcom/android/volley/toolbox/k;
.super Lcom/android/volley/Request;
.source "JsonRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/android/volley/Request",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/android/volley/i$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/volley/i$b",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 39
    const-string v0, "application/json; charset=%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "utf-8"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/volley/toolbox/k;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Lcom/android/volley/i$b;Lcom/android/volley/i$a;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/android/volley/i$b",
            "<TT;>;",
            "Lcom/android/volley/i$a;",
            ")V"
        }
    .end annotation

    .prologue
    .line 58
    invoke-direct {p0, p1, p2, p5}, Lcom/android/volley/Request;-><init>(ILjava/lang/String;Lcom/android/volley/i$a;)V

    .line 59
    iput-object p4, p0, Lcom/android/volley/toolbox/k;->b:Lcom/android/volley/i$b;

    .line 60
    iput-object p3, p0, Lcom/android/volley/toolbox/k;->c:Ljava/lang/String;

    .line 61
    return-void
.end method


# virtual methods
.method protected abstract a(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/NetworkResponse;",
            ")",
            "Lcom/android/volley/i",
            "<TT;>;"
        }
    .end annotation
.end method

.method protected a(Ljava/lang/Object;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/volley/toolbox/k;->b:Lcom/android/volley/i$b;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/android/volley/toolbox/k;->b:Lcom/android/volley/i$b;

    invoke-interface {v0, p1}, Lcom/android/volley/i$b;->a(Ljava/lang/Object;)V

    .line 74
    :cond_0
    return-void
.end method

.method protected c()V
    .locals 1

    .prologue
    .line 65
    invoke-super {p0}, Lcom/android/volley/Request;->c()V

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/volley/toolbox/k;->b:Lcom/android/volley/i$b;

    .line 67
    return-void
.end method

.method public m()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    invoke-virtual {p0}, Lcom/android/volley/toolbox/k;->q()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public n()[B
    .locals 1

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/android/volley/toolbox/k;->r()[B

    move-result-object v0

    return-object v0
.end method

.method public q()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    sget-object v0, Lcom/android/volley/toolbox/k;->a:Ljava/lang/String;

    return-object v0
.end method

.method public r()[B
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 103
    :try_start_0
    iget-object v1, p0, Lcom/android/volley/toolbox/k;->c:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 107
    :goto_0
    return-object v0

    .line 103
    :cond_0
    iget-object v1, p0, Lcom/android/volley/toolbox/k;->c:Ljava/lang/String;

    const-string v2, "utf-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 104
    :catch_0
    move-exception v1

    .line 105
    const-string v1, "Unsupported Encoding while trying to get the bytes of %s using %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/volley/toolbox/k;->c:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "utf-8"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/android/volley/l;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
