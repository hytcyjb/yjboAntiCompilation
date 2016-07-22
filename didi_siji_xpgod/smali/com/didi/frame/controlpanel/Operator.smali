.class public abstract Lcom/didi/frame/controlpanel/Operator;
.super Ljava/lang/Object;
.source "Operator.java"


# static fields
.field private static operators:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/didi/frame/controlpanel/Operator;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private operationArea:Lcom/didi/frame/controlpanel/OperationArea;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/didi/frame/controlpanel/Operator;->operators:Ljava/util/ArrayList;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    sget-object v0, Lcom/didi/frame/controlpanel/Operator;->operators:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    return-void
.end method

.method public static getOperators()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/didi/frame/controlpanel/Operator;",
            ">;"
        }
    .end annotation

    .prologue
    .line 24
    sget-object v0, Lcom/didi/frame/controlpanel/Operator;->operators:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public abstract getContentPins()[Lcom/didi/frame/controlpanel/pin/PinBaseView;
.end method

.method public getOperationArea()Lcom/didi/frame/controlpanel/OperationArea;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/didi/frame/controlpanel/Operator;->operationArea:Lcom/didi/frame/controlpanel/OperationArea;

    return-object v0
.end method

.method public abstract getTrigger()Lcom/didi/frame/controlpanel/pin/TriggerPinView;
.end method

.method public abstract hideContentPins()V
.end method

.method public abstract layout(ZIIII)V
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 47
    return-void
.end method

.method public setOperationArea(Lcom/didi/frame/controlpanel/OperationArea;)V
    .locals 0
    .parameter "operationArea"

    .prologue
    .line 28
    iput-object p1, p0, Lcom/didi/frame/controlpanel/Operator;->operationArea:Lcom/didi/frame/controlpanel/OperationArea;

    .line 29
    return-void
.end method

.method public abstract showContentPins()V
.end method
