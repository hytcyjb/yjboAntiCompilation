.class final Lcom/didi/common/helper/DriversHelper$3;
.super Lcom/didi/common/net/ResponseListener;
.source "DriversHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/common/helper/DriversHelper;->getHttpSendLocationListner(Z)Lcom/didi/common/net/ResponseListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/didi/common/net/ResponseListener",
        "<",
        "Lcom/didi/common/model/NearDrivers;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$needZoom:Z


# direct methods
.method constructor <init>(Z)V
    .locals 0
    .parameter

    .prologue
    .line 183
    iput-boolean p1, p0, Lcom/didi/common/helper/DriversHelper$3;->val$needZoom:Z

    invoke-direct {p0}, Lcom/didi/common/net/ResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onFinish(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 183
    check-cast p1, Lcom/didi/common/model/NearDrivers;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/common/helper/DriversHelper$3;->onFinish(Lcom/didi/common/model/NearDrivers;)V

    return-void
.end method

.method public onFinish(Lcom/didi/common/model/NearDrivers;)V
    .locals 2
    .parameter "nearDrivers"

    .prologue
    .line 186
    invoke-super {p0, p1}, Lcom/didi/common/net/ResponseListener;->onFinish(Lcom/didi/common/model/BaseObject;)V

    .line 187
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-------------getHttpSendLocationListner----------- "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/didi/common/model/NearDrivers;->drivers:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 188
    iget v0, p1, Lcom/didi/common/model/NearDrivers;->errno:I

    if-nez v0, :cond_0

    .line 189
    new-instance v0, Lcom/didi/common/helper/DriversHelper$3$1;

    invoke-direct {v0, p0, p1}, Lcom/didi/common/helper/DriversHelper$3$1;-><init>(Lcom/didi/common/helper/DriversHelper$3;Lcom/didi/common/model/NearDrivers;)V

    invoke-virtual {v0}, Lcom/didi/common/helper/DriversHelper$3$1;->start()V

    .line 200
    :cond_0
    return-void
.end method
