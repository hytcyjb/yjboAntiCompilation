.class public Lcom/didi/ddrive/eventbus/event/DrivepopHeaderEvent;
.super Ljava/lang/Object;
.source "DrivepopHeaderEvent.java"


# instance fields
.field private imgPathName:Ljava/lang/String;

.field private isSuccess:Z

.field private position:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getImgPathName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/didi/ddrive/eventbus/event/DrivepopHeaderEvent;->imgPathName:Ljava/lang/String;

    return-object v0
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 16
    iget v0, p0, Lcom/didi/ddrive/eventbus/event/DrivepopHeaderEvent;->position:I

    return v0
.end method

.method public isSuccess()Z
    .locals 1

    .prologue
    .line 10
    iget-boolean v0, p0, Lcom/didi/ddrive/eventbus/event/DrivepopHeaderEvent;->isSuccess:Z

    return v0
.end method

.method public setImgPathName(Ljava/lang/String;)V
    .locals 0
    .parameter "imgPathName"

    .prologue
    .line 25
    iput-object p1, p0, Lcom/didi/ddrive/eventbus/event/DrivepopHeaderEvent;->imgPathName:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public setPosition(I)V
    .locals 0
    .parameter "position"

    .prologue
    .line 19
    iput p1, p0, Lcom/didi/ddrive/eventbus/event/DrivepopHeaderEvent;->position:I

    .line 20
    return-void
.end method

.method public setSuccess(Z)V
    .locals 0
    .parameter "isSuccess"

    .prologue
    .line 13
    iput-boolean p1, p0, Lcom/didi/ddrive/eventbus/event/DrivepopHeaderEvent;->isSuccess:Z

    .line 14
    return-void
.end method
