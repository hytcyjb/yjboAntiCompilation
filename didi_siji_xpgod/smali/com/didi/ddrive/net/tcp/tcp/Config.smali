.class public Lcom/didi/ddrive/net/tcp/tcp/Config;
.super Ljava/lang/Object;
.source "Config.java"


# instance fields
.field public ip:Ljava/lang/String;

.field public port:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter "ip"
    .parameter "port"

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/didi/ddrive/net/tcp/tcp/Config;->ip:Ljava/lang/String;

    .line 18
    iput p2, p0, Lcom/didi/ddrive/net/tcp/tcp/Config;->port:I

    .line 19
    return-void
.end method

.method public static getDefault()Lcom/didi/ddrive/net/tcp/tcp/Config;
    .locals 2

    .prologue
    .line 22
    new-instance v0, Lcom/didi/ddrive/net/tcp/tcp/Config;

    invoke-direct {v0}, Lcom/didi/ddrive/net/tcp/tcp/Config;-><init>()V

    .line 23
    .local v0, config:Lcom/didi/ddrive/net/tcp/tcp/Config;
    const-string v1, "127.0.0.1"

    iput-object v1, v0, Lcom/didi/ddrive/net/tcp/tcp/Config;->ip:Ljava/lang/String;

    .line 24
    const/16 v1, 0x50

    iput v1, v0, Lcom/didi/ddrive/net/tcp/tcp/Config;->port:I

    .line 25
    return-object v0
.end method
