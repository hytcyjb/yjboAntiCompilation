.class Lcom/didi/frame/MapFragment$2;
.super Lcom/didi/common/net/ResponseListener;
.source "MapFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/frame/MapFragment;->initDnsHosts()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/didi/common/net/ResponseListener",
        "<",
        "Lcom/didi/common/model/DnsConfig;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/frame/MapFragment;


# direct methods
.method constructor <init>(Lcom/didi/frame/MapFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 293
    iput-object p1, p0, Lcom/didi/frame/MapFragment$2;->this$0:Lcom/didi/frame/MapFragment;

    invoke-direct {p0}, Lcom/didi/common/net/ResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onFinish(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 293
    check-cast p1, Lcom/didi/common/model/DnsConfig;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/frame/MapFragment$2;->onFinish(Lcom/didi/common/model/DnsConfig;)V

    return-void
.end method

.method public onFinish(Lcom/didi/common/model/DnsConfig;)V
    .locals 6
    .parameter "dnsConfig"

    .prologue
    .line 297
    invoke-super {p0, p1}, Lcom/didi/common/net/ResponseListener;->onFinish(Lcom/didi/common/model/BaseObject;)V

    .line 298
    iget-object v4, p1, Lcom/didi/common/model/DnsConfig;->hosts:Ljava/util/List;

    invoke-static {v4}, Lcom/didi/common/util/CollectionUtil;->isEmpty(Ljava/util/Collection;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p1, Lcom/didi/common/model/DnsConfig;->domainsMd5:Ljava/lang/String;

    invoke-static {v4}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p1, Lcom/didi/common/model/DnsConfig;->sig:Ljava/lang/String;

    invoke-static {v4}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 300
    iget-object v4, p1, Lcom/didi/common/model/DnsConfig;->sig:Ljava/lang/String;

    invoke-static {v4}, Lcom/didi/car/helper/Rsa;->decryptByPublic(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 301
    .local v1, decryptResult:Ljava/lang/String;
    iget-object v4, p1, Lcom/didi/common/model/DnsConfig;->domainsMd5:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 302
    const-string v0, ""

    .line 303
    .local v0, carHost:Ljava/lang/String;
    iget-object v4, p1, Lcom/didi/common/model/DnsConfig;->hosts:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/didi/common/model/DnsDomain;

    .line 304
    .local v2, dnsDomain:Lcom/didi/common/model/DnsDomain;
    sget-object v4, Lcom/didi/car/net/CarRequest;->BASE_HOST:Ljava/lang/String;

    iget-object v5, v2, Lcom/didi/common/model/DnsDomain;->domain:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 305
    iget-object v0, v2, Lcom/didi/common/model/DnsDomain;->host:Ljava/lang/String;

    goto :goto_0

    .line 308
    .end local v2           #dnsDomain:Lcom/didi/common/model/DnsDomain;
    :cond_1
    invoke-static {v0}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 309
    sget-object v4, Lcom/didi/car/net/CarRequest;->BASE_URL:Ljava/lang/String;

    sget-object v5, Lcom/didi/car/net/CarRequest;->BASE_HOST:Ljava/lang/String;

    invoke-virtual {v4, v5, v0}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/didi/car/net/CarRequest;->BASE_URL:Ljava/lang/String;

    .line 310
    sget-object v4, Lcom/didi/car/net/CarRequest;->BASE_PAY_URL:Ljava/lang/String;

    sget-object v5, Lcom/didi/car/net/CarRequest;->BASE_HOST:Ljava/lang/String;

    invoke-virtual {v4, v5, v0}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/didi/car/net/CarRequest;->BASE_PAY_URL:Ljava/lang/String;

    .line 315
    .end local v0           #carHost:Ljava/lang/String;
    .end local v1           #decryptResult:Ljava/lang/String;
    .end local v3           #i$:Ljava/util/Iterator;
    :cond_2
    iget-object v4, p0, Lcom/didi/frame/MapFragment$2;->this$0:Lcom/didi/frame/MapFragment;

    #calls: Lcom/didi/frame/MapFragment;->getGuideFlag()V
    invoke-static {v4}, Lcom/didi/frame/MapFragment;->access$000(Lcom/didi/frame/MapFragment;)V

    .line 317
    return-void
.end method
