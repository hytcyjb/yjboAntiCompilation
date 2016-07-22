.class public final Lcom/didi/frame/protobuffer/PassengerPayStatusReq$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "PassengerPayStatusReq.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/frame/protobuffer/PassengerPayStatusReq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/didi/frame/protobuffer/PassengerPayStatusReq;",
        ">;"
    }
.end annotation


# instance fields
.field public oid:Ljava/lang/String;

.field public token:Ljava/lang/String;

.field public trade_status:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 79
    return-void
.end method

.method public constructor <init>(Lcom/didi/frame/protobuffer/PassengerPayStatusReq;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    .line 83
    if-nez p1, :cond_0

    .line 87
    :goto_0
    return-void

    .line 84
    :cond_0
    iget-object v0, p1, Lcom/didi/frame/protobuffer/PassengerPayStatusReq;->oid:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/PassengerPayStatusReq$Builder;->oid:Ljava/lang/String;

    .line 85
    iget-object v0, p1, Lcom/didi/frame/protobuffer/PassengerPayStatusReq;->trade_status:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/PassengerPayStatusReq$Builder;->trade_status:Ljava/lang/Integer;

    .line 86
    iget-object v0, p1, Lcom/didi/frame/protobuffer/PassengerPayStatusReq;->token:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/PassengerPayStatusReq$Builder;->token:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public build()Lcom/didi/frame/protobuffer/PassengerPayStatusReq;
    .locals 2

    .prologue
    .line 115
    invoke-virtual {p0}, Lcom/didi/frame/protobuffer/PassengerPayStatusReq$Builder;->checkRequiredFields()V

    .line 116
    new-instance v0, Lcom/didi/frame/protobuffer/PassengerPayStatusReq;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/didi/frame/protobuffer/PassengerPayStatusReq;-><init>(Lcom/didi/frame/protobuffer/PassengerPayStatusReq$Builder;Lcom/didi/frame/protobuffer/PassengerPayStatusReq$1;)V

    return-object v0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/didi/frame/protobuffer/PassengerPayStatusReq$Builder;->build()Lcom/didi/frame/protobuffer/PassengerPayStatusReq;

    move-result-object v0

    return-object v0
.end method

.method public oid(Ljava/lang/String;)Lcom/didi/frame/protobuffer/PassengerPayStatusReq$Builder;
    .locals 0
    .parameter "oid"

    .prologue
    .line 93
    iput-object p1, p0, Lcom/didi/frame/protobuffer/PassengerPayStatusReq$Builder;->oid:Ljava/lang/String;

    .line 94
    return-object p0
.end method

.method public token(Ljava/lang/String;)Lcom/didi/frame/protobuffer/PassengerPayStatusReq$Builder;
    .locals 0
    .parameter "token"

    .prologue
    .line 109
    iput-object p1, p0, Lcom/didi/frame/protobuffer/PassengerPayStatusReq$Builder;->token:Ljava/lang/String;

    .line 110
    return-object p0
.end method

.method public trade_status(Ljava/lang/Integer;)Lcom/didi/frame/protobuffer/PassengerPayStatusReq$Builder;
    .locals 0
    .parameter "trade_status"

    .prologue
    .line 101
    iput-object p1, p0, Lcom/didi/frame/protobuffer/PassengerPayStatusReq$Builder;->trade_status:Ljava/lang/Integer;

    .line 102
    return-object p0
.end method
