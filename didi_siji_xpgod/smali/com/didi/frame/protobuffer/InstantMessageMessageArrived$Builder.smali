.class public final Lcom/didi/frame/protobuffer/InstantMessageMessageArrived$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "InstantMessageMessageArrived.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/frame/protobuffer/InstantMessageMessageArrived;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/didi/frame/protobuffer/InstantMessageMessageArrived;",
        ">;"
    }
.end annotation


# instance fields
.field public mid:Ljava/lang/Long;

.field public product:Ljava/lang/Long;

.field public sid:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 66
    return-void
.end method

.method public constructor <init>(Lcom/didi/frame/protobuffer/InstantMessageMessageArrived;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    .line 70
    if-nez p1, :cond_0

    .line 74
    :goto_0
    return-void

    .line 71
    :cond_0
    iget-object v0, p1, Lcom/didi/frame/protobuffer/InstantMessageMessageArrived;->sid:Ljava/lang/Long;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/InstantMessageMessageArrived$Builder;->sid:Ljava/lang/Long;

    .line 72
    iget-object v0, p1, Lcom/didi/frame/protobuffer/InstantMessageMessageArrived;->mid:Ljava/lang/Long;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/InstantMessageMessageArrived$Builder;->mid:Ljava/lang/Long;

    .line 73
    iget-object v0, p1, Lcom/didi/frame/protobuffer/InstantMessageMessageArrived;->product:Ljava/lang/Long;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/InstantMessageMessageArrived$Builder;->product:Ljava/lang/Long;

    goto :goto_0
.end method


# virtual methods
.method public build()Lcom/didi/frame/protobuffer/InstantMessageMessageArrived;
    .locals 2

    .prologue
    .line 93
    invoke-virtual {p0}, Lcom/didi/frame/protobuffer/InstantMessageMessageArrived$Builder;->checkRequiredFields()V

    .line 94
    new-instance v0, Lcom/didi/frame/protobuffer/InstantMessageMessageArrived;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/didi/frame/protobuffer/InstantMessageMessageArrived;-><init>(Lcom/didi/frame/protobuffer/InstantMessageMessageArrived$Builder;Lcom/didi/frame/protobuffer/InstantMessageMessageArrived$1;)V

    return-object v0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/didi/frame/protobuffer/InstantMessageMessageArrived$Builder;->build()Lcom/didi/frame/protobuffer/InstantMessageMessageArrived;

    move-result-object v0

    return-object v0
.end method

.method public mid(Ljava/lang/Long;)Lcom/didi/frame/protobuffer/InstantMessageMessageArrived$Builder;
    .locals 0
    .parameter "mid"

    .prologue
    .line 82
    iput-object p1, p0, Lcom/didi/frame/protobuffer/InstantMessageMessageArrived$Builder;->mid:Ljava/lang/Long;

    .line 83
    return-object p0
.end method

.method public product(Ljava/lang/Long;)Lcom/didi/frame/protobuffer/InstantMessageMessageArrived$Builder;
    .locals 0
    .parameter "product"

    .prologue
    .line 87
    iput-object p1, p0, Lcom/didi/frame/protobuffer/InstantMessageMessageArrived$Builder;->product:Ljava/lang/Long;

    .line 88
    return-object p0
.end method

.method public sid(Ljava/lang/Long;)Lcom/didi/frame/protobuffer/InstantMessageMessageArrived$Builder;
    .locals 0
    .parameter "sid"

    .prologue
    .line 77
    iput-object p1, p0, Lcom/didi/frame/protobuffer/InstantMessageMessageArrived$Builder;->sid:Ljava/lang/Long;

    .line 78
    return-object p0
.end method
