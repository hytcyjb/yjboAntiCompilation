.class public Lcom/android/volley/toolbox/n;
.super Lcom/android/volley/Request;
.source "StringRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/volley/Request",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/android/volley/i$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/volley/i$b",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/lang/String;Lcom/android/volley/i$b;Lcom/android/volley/i$a;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lcom/android/volley/i$b",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/volley/i$a;",
            ")V"
        }
    .end annotation

    .prologue
    .line 43
    invoke-direct {p0, p1, p2, p4}, Lcom/android/volley/Request;-><init>(ILjava/lang/String;Lcom/android/volley/i$a;)V

    .line 44
    iput-object p3, p0, Lcom/android/volley/toolbox/n;->a:Lcom/android/volley/i$b;

    .line 45
    return-void
.end method


# virtual methods
.method protected a(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/i;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/NetworkResponse;",
            ")",
            "Lcom/android/volley/i",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 75
    :try_start_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p1, Lcom/android/volley/NetworkResponse;->data:[B

    iget-object v2, p1, Lcom/android/volley/NetworkResponse;->headers:Ljava/util/Map;

    invoke-static {v2}, Lcom/android/volley/toolbox/e;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    :goto_0
    invoke-static {p1}, Lcom/android/volley/toolbox/e;->a(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/a$a;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/volley/i;->a(Ljava/lang/Object;Lcom/android/volley/a$a;)Lcom/android/volley/i;

    move-result-object v0

    return-object v0

    .line 76
    :catch_0
    move-exception v0

    .line 77
    new-instance v0, Ljava/lang/String;

    iget-object v1, p1, Lcom/android/volley/NetworkResponse;->data:[B

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    goto :goto_0
.end method

.method protected synthetic a(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 30
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/volley/toolbox/n;->d(Ljava/lang/String;)V

    return-void
.end method

.method protected c()V
    .locals 1

    .prologue
    .line 60
    invoke-super {p0}, Lcom/android/volley/Request;->c()V

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/volley/toolbox/n;->a:Lcom/android/volley/i$b;

    .line 62
    return-void
.end method

.method protected d(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/volley/toolbox/n;->a:Lcom/android/volley/i$b;

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/android/volley/toolbox/n;->a:Lcom/android/volley/i$b;

    invoke-interface {v0, p1}, Lcom/android/volley/i$b;->a(Ljava/lang/Object;)V

    .line 69
    :cond_0
    return-void
.end method
