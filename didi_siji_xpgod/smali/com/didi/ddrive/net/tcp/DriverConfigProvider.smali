.class public Lcom/didi/ddrive/net/tcp/DriverConfigProvider;
.super Ljava/lang/Object;
.source "DriverConfigProvider.java"

# interfaces
.implements Lcom/didi/ddrive/net/tcp/tcp/ConfigProvider;


# instance fields
.field private mTag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "tag"

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/didi/ddrive/net/tcp/DriverConfigProvider;->mTag:Ljava/lang/String;

    .line 17
    return-void
.end method


# virtual methods
.method public getConfig()Lcom/didi/ddrive/net/tcp/tcp/Config;
    .locals 3

    .prologue
    .line 26
    new-instance v0, Lcom/didi/ddrive/net/tcp/tcp/Config;

    invoke-static {}, Lcom/didi/ddrive/net/http/config/KDHttpGlobalConfig;->getDriveTcpHost()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/didi/ddrive/net/http/config/KDHttpGlobalConfig;->getDriveTcpPort()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/didi/ddrive/net/tcp/tcp/Config;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/didi/ddrive/net/tcp/DriverConfigProvider;->mTag:Ljava/lang/String;

    return-object v0
.end method
