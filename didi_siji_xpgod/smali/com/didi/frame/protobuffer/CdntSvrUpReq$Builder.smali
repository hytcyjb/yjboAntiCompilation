.class public final Lcom/didi/frame/protobuffer/CdntSvrUpReq$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "CdntSvrUpReq.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/frame/protobuffer/CdntSvrUpReq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/didi/frame/protobuffer/CdntSvrUpReq;",
        ">;"
    }
.end annotation


# instance fields
.field public dx:Ljava/lang/Double;

.field public dy:Ljava/lang/Double;

.field public pull_peer:Ljava/lang/Boolean;

.field public timestamp:Ljava/lang/Integer;

.field public type:Lcom/didi/frame/protobuffer/CoordinateType;

.field public x:Ljava/lang/Double;

.field public y:Ljava/lang/Double;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 115
    return-void
.end method

.method public constructor <init>(Lcom/didi/frame/protobuffer/CdntSvrUpReq;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 118
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    .line 119
    if-nez p1, :cond_0

    .line 127
    :goto_0
    return-void

    .line 120
    :cond_0
    iget-object v0, p1, Lcom/didi/frame/protobuffer/CdntSvrUpReq;->x:Ljava/lang/Double;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/CdntSvrUpReq$Builder;->x:Ljava/lang/Double;

    .line 121
    iget-object v0, p1, Lcom/didi/frame/protobuffer/CdntSvrUpReq;->y:Ljava/lang/Double;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/CdntSvrUpReq$Builder;->y:Ljava/lang/Double;

    .line 122
    iget-object v0, p1, Lcom/didi/frame/protobuffer/CdntSvrUpReq;->type:Lcom/didi/frame/protobuffer/CoordinateType;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/CdntSvrUpReq$Builder;->type:Lcom/didi/frame/protobuffer/CoordinateType;

    .line 123
    iget-object v0, p1, Lcom/didi/frame/protobuffer/CdntSvrUpReq;->timestamp:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/CdntSvrUpReq$Builder;->timestamp:Ljava/lang/Integer;

    .line 124
    iget-object v0, p1, Lcom/didi/frame/protobuffer/CdntSvrUpReq;->pull_peer:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/CdntSvrUpReq$Builder;->pull_peer:Ljava/lang/Boolean;

    .line 125
    iget-object v0, p1, Lcom/didi/frame/protobuffer/CdntSvrUpReq;->dx:Ljava/lang/Double;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/CdntSvrUpReq$Builder;->dx:Ljava/lang/Double;

    .line 126
    iget-object v0, p1, Lcom/didi/frame/protobuffer/CdntSvrUpReq;->dy:Ljava/lang/Double;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/CdntSvrUpReq$Builder;->dy:Ljava/lang/Double;

    goto :goto_0
.end method


# virtual methods
.method public build()Lcom/didi/frame/protobuffer/CdntSvrUpReq;
    .locals 2

    .prologue
    .line 180
    invoke-virtual {p0}, Lcom/didi/frame/protobuffer/CdntSvrUpReq$Builder;->checkRequiredFields()V

    .line 181
    new-instance v0, Lcom/didi/frame/protobuffer/CdntSvrUpReq;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/didi/frame/protobuffer/CdntSvrUpReq;-><init>(Lcom/didi/frame/protobuffer/CdntSvrUpReq$Builder;Lcom/didi/frame/protobuffer/CdntSvrUpReq$1;)V

    return-object v0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 104
    invoke-virtual {p0}, Lcom/didi/frame/protobuffer/CdntSvrUpReq$Builder;->build()Lcom/didi/frame/protobuffer/CdntSvrUpReq;

    move-result-object v0

    return-object v0
.end method

.method public dx(Ljava/lang/Double;)Lcom/didi/frame/protobuffer/CdntSvrUpReq$Builder;
    .locals 0
    .parameter "dx"

    .prologue
    .line 169
    iput-object p1, p0, Lcom/didi/frame/protobuffer/CdntSvrUpReq$Builder;->dx:Ljava/lang/Double;

    .line 170
    return-object p0
.end method

.method public dy(Ljava/lang/Double;)Lcom/didi/frame/protobuffer/CdntSvrUpReq$Builder;
    .locals 0
    .parameter "dy"

    .prologue
    .line 174
    iput-object p1, p0, Lcom/didi/frame/protobuffer/CdntSvrUpReq$Builder;->dy:Ljava/lang/Double;

    .line 175
    return-object p0
.end method

.method public pull_peer(Ljava/lang/Boolean;)Lcom/didi/frame/protobuffer/CdntSvrUpReq$Builder;
    .locals 0
    .parameter "pull_peer"

    .prologue
    .line 161
    iput-object p1, p0, Lcom/didi/frame/protobuffer/CdntSvrUpReq$Builder;->pull_peer:Ljava/lang/Boolean;

    .line 162
    return-object p0
.end method

.method public timestamp(Ljava/lang/Integer;)Lcom/didi/frame/protobuffer/CdntSvrUpReq$Builder;
    .locals 0
    .parameter "timestamp"

    .prologue
    .line 151
    iput-object p1, p0, Lcom/didi/frame/protobuffer/CdntSvrUpReq$Builder;->timestamp:Ljava/lang/Integer;

    .line 152
    return-object p0
.end method

.method public type(Lcom/didi/frame/protobuffer/CoordinateType;)Lcom/didi/frame/protobuffer/CdntSvrUpReq$Builder;
    .locals 0
    .parameter "type"

    .prologue
    .line 143
    iput-object p1, p0, Lcom/didi/frame/protobuffer/CdntSvrUpReq$Builder;->type:Lcom/didi/frame/protobuffer/CoordinateType;

    .line 144
    return-object p0
.end method

.method public x(Ljava/lang/Double;)Lcom/didi/frame/protobuffer/CdntSvrUpReq$Builder;
    .locals 0
    .parameter "x"

    .prologue
    .line 130
    iput-object p1, p0, Lcom/didi/frame/protobuffer/CdntSvrUpReq$Builder;->x:Ljava/lang/Double;

    .line 131
    return-object p0
.end method

.method public y(Ljava/lang/Double;)Lcom/didi/frame/protobuffer/CdntSvrUpReq$Builder;
    .locals 0
    .parameter "y"

    .prologue
    .line 135
    iput-object p1, p0, Lcom/didi/frame/protobuffer/CdntSvrUpReq$Builder;->y:Ljava/lang/Double;

    .line 136
    return-object p0
.end method
