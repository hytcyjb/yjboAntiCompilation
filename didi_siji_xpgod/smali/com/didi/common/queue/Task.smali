.class public Lcom/didi/common/queue/Task;
.super Ljava/lang/Object;
.source "Task.java"


# instance fields
.field private content:Ljava/lang/String;

.field private levle:I

.field private oid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/didi/common/queue/Task;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getLevle()I
    .locals 1

    .prologue
    .line 24
    iget v0, p0, Lcom/didi/common/queue/Task;->levle:I

    return v0
.end method

.method public getOid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/didi/common/queue/Task;->oid:Ljava/lang/String;

    return-object v0
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0
    .parameter "content"

    .prologue
    .line 36
    iput-object p1, p0, Lcom/didi/common/queue/Task;->content:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public setLevle(I)V
    .locals 0
    .parameter "levle"

    .prologue
    .line 28
    iput p1, p0, Lcom/didi/common/queue/Task;->levle:I

    .line 29
    return-void
.end method

.method public setOid(Ljava/lang/String;)V
    .locals 0
    .parameter "oid"

    .prologue
    .line 20
    iput-object p1, p0, Lcom/didi/common/queue/Task;->oid:Ljava/lang/String;

    .line 21
    return-void
.end method
