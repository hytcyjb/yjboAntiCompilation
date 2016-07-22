.class public final Lcom/didi/frame/protobuffer/ConnMasterKickRsp;
.super Lcom/squareup/wire/Message;
.source "ConnMasterKickRsp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/frame/protobuffer/ConnMasterKickRsp$1;,
        Lcom/didi/frame/protobuffer/ConnMasterKickRsp$Builder;
    }
.end annotation


# static fields
.field public static final DEFAULT_RC:Ljava/lang/Integer;


# instance fields
.field public final rc:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/ConnMasterKickRsp;->DEFAULT_RC:Ljava/lang/Integer;

    return-void
.end method

.method private constructor <init>(Lcom/didi/frame/protobuffer/ConnMasterKickRsp$Builder;)V
    .locals 1
    .parameter "builder"

    .prologue
    .line 26
    iget-object v0, p1, Lcom/didi/frame/protobuffer/ConnMasterKickRsp$Builder;->rc:Ljava/lang/Integer;

    invoke-direct {p0, v0}, Lcom/didi/frame/protobuffer/ConnMasterKickRsp;-><init>(Ljava/lang/Integer;)V

    .line 27
    invoke-virtual {p0, p1}, Lcom/didi/frame/protobuffer/ConnMasterKickRsp;->setBuilder(Lcom/squareup/wire/Message$Builder;)V

    .line 28
    return-void
.end method

.method synthetic constructor <init>(Lcom/didi/frame/protobuffer/ConnMasterKickRsp$Builder;Lcom/didi/frame/protobuffer/ConnMasterKickRsp$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lcom/didi/frame/protobuffer/ConnMasterKickRsp;-><init>(Lcom/didi/frame/protobuffer/ConnMasterKickRsp$Builder;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;)V
    .locals 0
    .parameter "rc"

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/squareup/wire/Message;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/didi/frame/protobuffer/ConnMasterKickRsp;->rc:Ljava/lang/Integer;

    .line 23
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter "other"

    .prologue
    .line 32
    if-ne p1, p0, :cond_0

    const/4 v0, 0x1

    .line 34
    .end local p1
    :goto_0
    return v0

    .line 33
    .restart local p1
    :cond_0
    instance-of v0, p1, Lcom/didi/frame/protobuffer/ConnMasterKickRsp;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    .line 34
    :cond_1
    iget-object v0, p0, Lcom/didi/frame/protobuffer/ConnMasterKickRsp;->rc:Ljava/lang/Integer;

    check-cast p1, Lcom/didi/frame/protobuffer/ConnMasterKickRsp;

    .end local p1
    iget-object v1, p1, Lcom/didi/frame/protobuffer/ConnMasterKickRsp;->rc:Ljava/lang/Integer;

    invoke-virtual {p0, v0, v1}, Lcom/didi/frame/protobuffer/ConnMasterKickRsp;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 39
    iget v0, p0, Lcom/didi/frame/protobuffer/ConnMasterKickRsp;->hashCode:I

    .line 40
    .local v0, result:I
    if-eqz v0, :cond_0

    .end local v0           #result:I
    :goto_0
    return v0

    .restart local v0       #result:I
    :cond_0
    iget-object v1, p0, Lcom/didi/frame/protobuffer/ConnMasterKickRsp;->rc:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/didi/frame/protobuffer/ConnMasterKickRsp;->rc:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    :goto_1
    iput v1, p0, Lcom/didi/frame/protobuffer/ConnMasterKickRsp;->hashCode:I

    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method
