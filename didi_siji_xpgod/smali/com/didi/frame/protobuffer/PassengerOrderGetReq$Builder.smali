.class public final Lcom/didi/frame/protobuffer/PassengerOrderGetReq$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "PassengerOrderGetReq.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/frame/protobuffer/PassengerOrderGetReq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/didi/frame/protobuffer/PassengerOrderGetReq;",
        ">;"
    }
.end annotation


# instance fields
.field public coordinate:Lcom/didi/frame/protobuffer/Coordinate;

.field public oid:Ljava/lang/String;

.field public phone:Ljava/lang/String;

.field public status:Ljava/lang/Integer;

.field public token:Ljava/lang/String;

.field public wait:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 93
    return-void
.end method

.method public constructor <init>(Lcom/didi/frame/protobuffer/PassengerOrderGetReq;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    .line 97
    if-nez p1, :cond_0

    .line 104
    :goto_0
    return-void

    .line 98
    :cond_0
    iget-object v0, p1, Lcom/didi/frame/protobuffer/PassengerOrderGetReq;->phone:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/PassengerOrderGetReq$Builder;->phone:Ljava/lang/String;

    .line 99
    iget-object v0, p1, Lcom/didi/frame/protobuffer/PassengerOrderGetReq;->token:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/PassengerOrderGetReq$Builder;->token:Ljava/lang/String;

    .line 100
    iget-object v0, p1, Lcom/didi/frame/protobuffer/PassengerOrderGetReq;->oid:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/PassengerOrderGetReq$Builder;->oid:Ljava/lang/String;

    .line 101
    iget-object v0, p1, Lcom/didi/frame/protobuffer/PassengerOrderGetReq;->status:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/PassengerOrderGetReq$Builder;->status:Ljava/lang/Integer;

    .line 102
    iget-object v0, p1, Lcom/didi/frame/protobuffer/PassengerOrderGetReq;->wait:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/PassengerOrderGetReq$Builder;->wait:Ljava/lang/String;

    .line 103
    iget-object v0, p1, Lcom/didi/frame/protobuffer/PassengerOrderGetReq;->coordinate:Lcom/didi/frame/protobuffer/Coordinate;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/PassengerOrderGetReq$Builder;->coordinate:Lcom/didi/frame/protobuffer/Coordinate;

    goto :goto_0
.end method


# virtual methods
.method public build()Lcom/didi/frame/protobuffer/PassengerOrderGetReq;
    .locals 2

    .prologue
    .line 138
    invoke-virtual {p0}, Lcom/didi/frame/protobuffer/PassengerOrderGetReq$Builder;->checkRequiredFields()V

    .line 139
    new-instance v0, Lcom/didi/frame/protobuffer/PassengerOrderGetReq;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/didi/frame/protobuffer/PassengerOrderGetReq;-><init>(Lcom/didi/frame/protobuffer/PassengerOrderGetReq$Builder;Lcom/didi/frame/protobuffer/PassengerOrderGetReq$1;)V

    return-object v0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/didi/frame/protobuffer/PassengerOrderGetReq$Builder;->build()Lcom/didi/frame/protobuffer/PassengerOrderGetReq;

    move-result-object v0

    return-object v0
.end method

.method public coordinate(Lcom/didi/frame/protobuffer/Coordinate;)Lcom/didi/frame/protobuffer/PassengerOrderGetReq$Builder;
    .locals 0
    .parameter "coordinate"

    .prologue
    .line 132
    iput-object p1, p0, Lcom/didi/frame/protobuffer/PassengerOrderGetReq$Builder;->coordinate:Lcom/didi/frame/protobuffer/Coordinate;

    .line 133
    return-object p0
.end method

.method public oid(Ljava/lang/String;)Lcom/didi/frame/protobuffer/PassengerOrderGetReq$Builder;
    .locals 0
    .parameter "oid"

    .prologue
    .line 117
    iput-object p1, p0, Lcom/didi/frame/protobuffer/PassengerOrderGetReq$Builder;->oid:Ljava/lang/String;

    .line 118
    return-object p0
.end method

.method public phone(Ljava/lang/String;)Lcom/didi/frame/protobuffer/PassengerOrderGetReq$Builder;
    .locals 0
    .parameter "phone"

    .prologue
    .line 107
    iput-object p1, p0, Lcom/didi/frame/protobuffer/PassengerOrderGetReq$Builder;->phone:Ljava/lang/String;

    .line 108
    return-object p0
.end method

.method public status(Ljava/lang/Integer;)Lcom/didi/frame/protobuffer/PassengerOrderGetReq$Builder;
    .locals 0
    .parameter "status"

    .prologue
    .line 122
    iput-object p1, p0, Lcom/didi/frame/protobuffer/PassengerOrderGetReq$Builder;->status:Ljava/lang/Integer;

    .line 123
    return-object p0
.end method

.method public token(Ljava/lang/String;)Lcom/didi/frame/protobuffer/PassengerOrderGetReq$Builder;
    .locals 0
    .parameter "token"

    .prologue
    .line 112
    iput-object p1, p0, Lcom/didi/frame/protobuffer/PassengerOrderGetReq$Builder;->token:Ljava/lang/String;

    .line 113
    return-object p0
.end method

.method public wait(Ljava/lang/String;)Lcom/didi/frame/protobuffer/PassengerOrderGetReq$Builder;
    .locals 0
    .parameter "wait"

    .prologue
    .line 127
    iput-object p1, p0, Lcom/didi/frame/protobuffer/PassengerOrderGetReq$Builder;->wait:Ljava/lang/String;

    .line 128
    return-object p0
.end method
