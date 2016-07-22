.class public Lcom/didi/game/model/DiDiResult;
.super Lcom/didi/common/model/BaseObject;
.source "DiDiResult.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/didi/common/model/BaseObject;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private data:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private requestFlag:I

.field private responseFlag:I

.field private result:Ljava/lang/String;

.field private resultCode:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    .local p0, this:Lcom/didi/game/model/DiDiResult;,"Lcom/didi/game/model/DiDiResult<TT;>;"
    invoke-direct {p0}, Lcom/didi/common/model/BaseObject;-><init>()V

    .line 48
    return-void
.end method

.method public constructor <init>(II)V
    .locals 0
    .parameter "requestFlag"
    .parameter "responseFlag"

    .prologue
    .line 55
    .local p0, this:Lcom/didi/game/model/DiDiResult;,"Lcom/didi/game/model/DiDiResult<TT;>;"
    invoke-direct {p0}, Lcom/didi/common/model/BaseObject;-><init>()V

    .line 56
    iput p1, p0, Lcom/didi/game/model/DiDiResult;->requestFlag:I

    .line 57
    iput p2, p0, Lcom/didi/game/model/DiDiResult;->responseFlag:I

    .line 58
    return-void
.end method

.method public constructor <init>(IIILjava/lang/String;)V
    .locals 0
    .parameter "requestFlag"
    .parameter "responseFlag"
    .parameter "resultCode"
    .parameter "result"

    .prologue
    .line 67
    .local p0, this:Lcom/didi/game/model/DiDiResult;,"Lcom/didi/game/model/DiDiResult<TT;>;"
    invoke-direct {p0}, Lcom/didi/common/model/BaseObject;-><init>()V

    .line 68
    iput p1, p0, Lcom/didi/game/model/DiDiResult;->requestFlag:I

    .line 69
    iput p2, p0, Lcom/didi/game/model/DiDiResult;->responseFlag:I

    .line 70
    iput p3, p0, Lcom/didi/game/model/DiDiResult;->resultCode:I

    .line 71
    iput-object p4, p0, Lcom/didi/game/model/DiDiResult;->result:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .parameter "resultCode"
    .parameter "result"

    .prologue
    .line 79
    .local p0, this:Lcom/didi/game/model/DiDiResult;,"Lcom/didi/game/model/DiDiResult<TT;>;"
    invoke-direct {p0}, Lcom/didi/common/model/BaseObject;-><init>()V

    .line 80
    iput p1, p0, Lcom/didi/game/model/DiDiResult;->resultCode:I

    .line 81
    iput-object p2, p0, Lcom/didi/game/model/DiDiResult;->result:Ljava/lang/String;

    .line 82
    return-void
.end method


# virtual methods
.method public getData()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 117
    .local p0, this:Lcom/didi/game/model/DiDiResult;,"Lcom/didi/game/model/DiDiResult<TT;>;"
    iget-object v0, p0, Lcom/didi/game/model/DiDiResult;->data:Ljava/lang/Object;

    return-object v0
.end method

.method public getRequestFlag()I
    .locals 1

    .prologue
    .line 85
    .local p0, this:Lcom/didi/game/model/DiDiResult;,"Lcom/didi/game/model/DiDiResult<TT;>;"
    iget v0, p0, Lcom/didi/game/model/DiDiResult;->requestFlag:I

    return v0
.end method

.method public getResponseFlag()I
    .locals 1

    .prologue
    .line 93
    .local p0, this:Lcom/didi/game/model/DiDiResult;,"Lcom/didi/game/model/DiDiResult<TT;>;"
    iget v0, p0, Lcom/didi/game/model/DiDiResult;->responseFlag:I

    return v0
.end method

.method public getResult()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    .local p0, this:Lcom/didi/game/model/DiDiResult;,"Lcom/didi/game/model/DiDiResult<TT;>;"
    iget-object v0, p0, Lcom/didi/game/model/DiDiResult;->result:Ljava/lang/String;

    return-object v0
.end method

.method public getResultCode()I
    .locals 1

    .prologue
    .line 101
    .local p0, this:Lcom/didi/game/model/DiDiResult;,"Lcom/didi/game/model/DiDiResult<TT;>;"
    iget v0, p0, Lcom/didi/game/model/DiDiResult;->resultCode:I

    return v0
.end method

.method public setData(Ljava/lang/Object;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 121
    .local p0, this:Lcom/didi/game/model/DiDiResult;,"Lcom/didi/game/model/DiDiResult<TT;>;"
    .local p1, data:Ljava/lang/Object;,"TT;"
    iput-object p1, p0, Lcom/didi/game/model/DiDiResult;->data:Ljava/lang/Object;

    .line 122
    return-void
.end method

.method public setRequestFlag(I)V
    .locals 0
    .parameter "requestFlag"

    .prologue
    .line 89
    .local p0, this:Lcom/didi/game/model/DiDiResult;,"Lcom/didi/game/model/DiDiResult<TT;>;"
    iput p1, p0, Lcom/didi/game/model/DiDiResult;->requestFlag:I

    .line 90
    return-void
.end method

.method public setResponseFlag(I)V
    .locals 0
    .parameter "responseFlag"

    .prologue
    .line 97
    .local p0, this:Lcom/didi/game/model/DiDiResult;,"Lcom/didi/game/model/DiDiResult<TT;>;"
    iput p1, p0, Lcom/didi/game/model/DiDiResult;->responseFlag:I

    .line 98
    return-void
.end method

.method public setResult(Ljava/lang/String;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 113
    .local p0, this:Lcom/didi/game/model/DiDiResult;,"Lcom/didi/game/model/DiDiResult<TT;>;"
    iput-object p1, p0, Lcom/didi/game/model/DiDiResult;->result:Ljava/lang/String;

    .line 114
    return-void
.end method

.method public setResultCode(I)V
    .locals 0
    .parameter "resultCode"

    .prologue
    .line 105
    .local p0, this:Lcom/didi/game/model/DiDiResult;,"Lcom/didi/game/model/DiDiResult<TT;>;"
    iput p1, p0, Lcom/didi/game/model/DiDiResult;->resultCode:I

    .line 106
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 126
    .local p0, this:Lcom/didi/game/model/DiDiResult;,"Lcom/didi/game/model/DiDiResult<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DiDiResult [requestFlag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/didi/game/model/DiDiResult;->requestFlag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", responseFlag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/didi/game/model/DiDiResult;->responseFlag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", resultCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/didi/game/model/DiDiResult;->resultCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", result="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/game/model/DiDiResult;->result:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/game/model/DiDiResult;->data:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
