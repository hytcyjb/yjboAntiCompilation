.class public Lcom/didi/common/ui/component/scroll/Step;
.super Ljava/lang/Object;
.source "Step.java"


# static fields
.field public static final DEFAULT_DURATION:I = 0xfa


# instance fields
.field private distanceX:I

.field private distanceY:I

.field private duration:I

.field private finalX:I

.field private finalY:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const v0, 0x7fffffff

    iput v0, p0, Lcom/didi/common/ui/component/scroll/Step;->finalX:I

    .line 22
    const/16 v0, 0xfa

    iput v0, p0, Lcom/didi/common/ui/component/scroll/Step;->duration:I

    return-void
.end method

.method public static createDistanceStep(II)Lcom/didi/common/ui/component/scroll/Step;
    .locals 1
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    .line 25
    new-instance v0, Lcom/didi/common/ui/component/scroll/Step;

    invoke-direct {v0}, Lcom/didi/common/ui/component/scroll/Step;-><init>()V

    .line 26
    .local v0, step:Lcom/didi/common/ui/component/scroll/Step;
    invoke-virtual {v0, p0}, Lcom/didi/common/ui/component/scroll/Step;->setDistanceX(I)V

    .line 27
    invoke-virtual {v0, p1}, Lcom/didi/common/ui/component/scroll/Step;->setDistanceY(I)V

    .line 28
    return-object v0
.end method

.method public static createDistanceStep(III)Lcom/didi/common/ui/component/scroll/Step;
    .locals 1
    .parameter "distanceX"
    .parameter "distanceY"
    .parameter "duration"

    .prologue
    .line 32
    new-instance v0, Lcom/didi/common/ui/component/scroll/Step;

    invoke-direct {v0}, Lcom/didi/common/ui/component/scroll/Step;-><init>()V

    .line 33
    .local v0, step:Lcom/didi/common/ui/component/scroll/Step;
    invoke-virtual {v0, p0}, Lcom/didi/common/ui/component/scroll/Step;->setDistanceX(I)V

    .line 34
    invoke-virtual {v0, p1}, Lcom/didi/common/ui/component/scroll/Step;->setDistanceY(I)V

    .line 35
    return-object v0
.end method

.method public static createFinalStep(II)Lcom/didi/common/ui/component/scroll/Step;
    .locals 1
    .parameter "finalX"
    .parameter "finalY"

    .prologue
    .line 39
    new-instance v0, Lcom/didi/common/ui/component/scroll/Step;

    invoke-direct {v0}, Lcom/didi/common/ui/component/scroll/Step;-><init>()V

    .line 40
    .local v0, step:Lcom/didi/common/ui/component/scroll/Step;
    invoke-virtual {v0, p0}, Lcom/didi/common/ui/component/scroll/Step;->setFinalX(I)V

    .line 41
    invoke-virtual {v0, p1}, Lcom/didi/common/ui/component/scroll/Step;->setFinalY(I)V

    .line 42
    return-object v0
.end method

.method public static createFinalStep(III)Lcom/didi/common/ui/component/scroll/Step;
    .locals 1
    .parameter "finalX"
    .parameter "finalY"
    .parameter "duration"

    .prologue
    .line 46
    new-instance v0, Lcom/didi/common/ui/component/scroll/Step;

    invoke-direct {v0}, Lcom/didi/common/ui/component/scroll/Step;-><init>()V

    .line 47
    .local v0, step:Lcom/didi/common/ui/component/scroll/Step;
    invoke-virtual {v0, p0}, Lcom/didi/common/ui/component/scroll/Step;->setFinalX(I)V

    .line 48
    invoke-virtual {v0, p1}, Lcom/didi/common/ui/component/scroll/Step;->setFinalY(I)V

    .line 49
    invoke-virtual {v0, p2}, Lcom/didi/common/ui/component/scroll/Step;->setDuration(I)V

    .line 50
    return-object v0
.end method


# virtual methods
.method public getDistanceX()I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/didi/common/ui/component/scroll/Step;->distanceX:I

    return v0
.end method

.method public getDistanceY()I
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lcom/didi/common/ui/component/scroll/Step;->distanceY:I

    return v0
.end method

.method public getDuration()I
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Lcom/didi/common/ui/component/scroll/Step;->duration:I

    return v0
.end method

.method public getFinalX()I
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lcom/didi/common/ui/component/scroll/Step;->finalX:I

    return v0
.end method

.method public getFinalY()I
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Lcom/didi/common/ui/component/scroll/Step;->finalY:I

    return v0
.end method

.method public isFinal()Z
    .locals 2

    .prologue
    .line 94
    iget v0, p0, Lcom/didi/common/ui/component/scroll/Step;->finalX:I

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDistanceX(I)V
    .locals 0
    .parameter "distanceX"

    .prologue
    .line 58
    iput p1, p0, Lcom/didi/common/ui/component/scroll/Step;->distanceX:I

    .line 59
    return-void
.end method

.method public setDistanceY(I)V
    .locals 0
    .parameter "distanceY"

    .prologue
    .line 66
    iput p1, p0, Lcom/didi/common/ui/component/scroll/Step;->distanceY:I

    .line 67
    return-void
.end method

.method public setDuration(I)V
    .locals 0
    .parameter "duration"

    .prologue
    .line 90
    iput p1, p0, Lcom/didi/common/ui/component/scroll/Step;->duration:I

    .line 91
    return-void
.end method

.method public setFinalX(I)V
    .locals 0
    .parameter "finalX"

    .prologue
    .line 74
    iput p1, p0, Lcom/didi/common/ui/component/scroll/Step;->finalX:I

    .line 75
    return-void
.end method

.method public setFinalY(I)V
    .locals 0
    .parameter "finalY"

    .prologue
    .line 82
    iput p1, p0, Lcom/didi/common/ui/component/scroll/Step;->finalY:I

    .line 83
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Step [distanceX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/didi/common/ui/component/scroll/Step;->distanceX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", distanceY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/didi/common/ui/component/scroll/Step;->distanceY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", finalX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/didi/common/ui/component/scroll/Step;->finalX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", finalY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/didi/common/ui/component/scroll/Step;->finalY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", duration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/didi/common/ui/component/scroll/Step;->duration:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
