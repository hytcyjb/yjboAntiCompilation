.class public Lcom/didi/game/model/DiDiParam;
.super Ljava/lang/Object;
.source "DiDiParam.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final DEFAULT_CODE:I = -0x64


# instance fields
.field private objMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "TT;>;"
        }
    .end annotation
.end field

.field private requestFlag:I

.field private responseFlag:I

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    .local p0, this:Lcom/didi/game/model/DiDiParam;,"Lcom/didi/game/model/DiDiParam<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method


# virtual methods
.method public addT(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .parameter "key"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 38
    .local p0, this:Lcom/didi/game/model/DiDiParam;,"Lcom/didi/game/model/DiDiParam<TT;>;"
    .local p2, t:Ljava/lang/Object;,"TT;"
    iget-object v0, p0, Lcom/didi/game/model/DiDiParam;->objMap:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/didi/game/model/DiDiParam;->objMap:Ljava/util/HashMap;

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/didi/game/model/DiDiParam;->objMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    return-void
.end method

.method public clearAll()V
    .locals 2

    .prologue
    .local p0, this:Lcom/didi/game/model/DiDiParam;,"Lcom/didi/game/model/DiDiParam<TT;>;"
    const/16 v1, -0x64

    .line 54
    iget-object v0, p0, Lcom/didi/game/model/DiDiParam;->objMap:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/didi/game/model/DiDiParam;->objMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 57
    :cond_0
    iput v1, p0, Lcom/didi/game/model/DiDiParam;->requestFlag:I

    .line 58
    iput v1, p0, Lcom/didi/game/model/DiDiParam;->responseFlag:I

    .line 59
    return-void
.end method

.method public clearT()V
    .locals 1

    .prologue
    .line 45
    .local p0, this:Lcom/didi/game/model/DiDiParam;,"Lcom/didi/game/model/DiDiParam<TT;>;"
    iget-object v0, p0, Lcom/didi/game/model/DiDiParam;->objMap:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/didi/game/model/DiDiParam;->objMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 48
    :cond_0
    return-void
.end method

.method public getObjMap()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "TT;>;"
        }
    .end annotation

    .prologue
    .line 86
    .local p0, this:Lcom/didi/game/model/DiDiParam;,"Lcom/didi/game/model/DiDiParam<TT;>;"
    iget-object v0, p0, Lcom/didi/game/model/DiDiParam;->objMap:Ljava/util/HashMap;

    return-object v0
.end method

.method public getRequestFlag()I
    .locals 1

    .prologue
    .line 62
    .local p0, this:Lcom/didi/game/model/DiDiParam;,"Lcom/didi/game/model/DiDiParam<TT;>;"
    iget v0, p0, Lcom/didi/game/model/DiDiParam;->requestFlag:I

    return v0
.end method

.method public getResponseFlag()I
    .locals 1

    .prologue
    .line 70
    .local p0, this:Lcom/didi/game/model/DiDiParam;,"Lcom/didi/game/model/DiDiParam<TT;>;"
    iget v0, p0, Lcom/didi/game/model/DiDiParam;->responseFlag:I

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    .local p0, this:Lcom/didi/game/model/DiDiParam;,"Lcom/didi/game/model/DiDiParam<TT;>;"
    iget-object v0, p0, Lcom/didi/game/model/DiDiParam;->url:Ljava/lang/String;

    return-object v0
.end method

.method public setObjMap(Ljava/util/HashMap;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "TT;>;)V"
        }
    .end annotation

    .prologue
    .line 90
    .local p0, this:Lcom/didi/game/model/DiDiParam;,"Lcom/didi/game/model/DiDiParam<TT;>;"
    .local p1, objMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;TT;>;"
    iput-object p1, p0, Lcom/didi/game/model/DiDiParam;->objMap:Ljava/util/HashMap;

    .line 91
    return-void
.end method

.method public setRequestFlag(I)V
    .locals 0
    .parameter "requestFlag"

    .prologue
    .line 66
    .local p0, this:Lcom/didi/game/model/DiDiParam;,"Lcom/didi/game/model/DiDiParam<TT;>;"
    iput p1, p0, Lcom/didi/game/model/DiDiParam;->requestFlag:I

    .line 67
    return-void
.end method

.method public setResponseFlag(I)V
    .locals 0
    .parameter "responseFlag"

    .prologue
    .line 74
    .local p0, this:Lcom/didi/game/model/DiDiParam;,"Lcom/didi/game/model/DiDiParam<TT;>;"
    iput p1, p0, Lcom/didi/game/model/DiDiParam;->responseFlag:I

    .line 75
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "url"

    .prologue
    .line 82
    .local p0, this:Lcom/didi/game/model/DiDiParam;,"Lcom/didi/game/model/DiDiParam<TT;>;"
    iput-object p1, p0, Lcom/didi/game/model/DiDiParam;->url:Ljava/lang/String;

    .line 83
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 95
    .local p0, this:Lcom/didi/game/model/DiDiParam;,"Lcom/didi/game/model/DiDiParam<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DiDiParam [requestFlag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/didi/game/model/DiDiParam;->requestFlag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", responseFlag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/didi/game/model/DiDiParam;->responseFlag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", objMap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/game/model/DiDiParam;->objMap:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
