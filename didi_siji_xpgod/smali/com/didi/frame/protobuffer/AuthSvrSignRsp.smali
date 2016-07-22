.class public final Lcom/didi/frame/protobuffer/AuthSvrSignRsp;
.super Lcom/squareup/wire/Message;
.source "AuthSvrSignRsp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/frame/protobuffer/AuthSvrSignRsp$1;,
        Lcom/didi/frame/protobuffer/AuthSvrSignRsp$Builder;
    }
.end annotation


# static fields
.field public static final DEFAULT_HMAC:Ljava/lang/String; = ""


# instance fields
.field public final hmac:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x2
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final rsp_msg:Lcom/didi/frame/protobuffer/RspMsg;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x1
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/didi/frame/protobuffer/AuthSvrSignRsp$Builder;)V
    .locals 2
    .parameter "builder"

    .prologue
    .line 30
    iget-object v0, p1, Lcom/didi/frame/protobuffer/AuthSvrSignRsp$Builder;->rsp_msg:Lcom/didi/frame/protobuffer/RspMsg;

    iget-object v1, p1, Lcom/didi/frame/protobuffer/AuthSvrSignRsp$Builder;->hmac:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/didi/frame/protobuffer/AuthSvrSignRsp;-><init>(Lcom/didi/frame/protobuffer/RspMsg;Ljava/lang/String;)V

    .line 31
    invoke-virtual {p0, p1}, Lcom/didi/frame/protobuffer/AuthSvrSignRsp;->setBuilder(Lcom/squareup/wire/Message$Builder;)V

    .line 32
    return-void
.end method

.method synthetic constructor <init>(Lcom/didi/frame/protobuffer/AuthSvrSignRsp$Builder;Lcom/didi/frame/protobuffer/AuthSvrSignRsp$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lcom/didi/frame/protobuffer/AuthSvrSignRsp;-><init>(Lcom/didi/frame/protobuffer/AuthSvrSignRsp$Builder;)V

    return-void
.end method

.method public constructor <init>(Lcom/didi/frame/protobuffer/RspMsg;Ljava/lang/String;)V
    .locals 0
    .parameter "rsp_msg"
    .parameter "hmac"

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/squareup/wire/Message;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/didi/frame/protobuffer/AuthSvrSignRsp;->rsp_msg:Lcom/didi/frame/protobuffer/RspMsg;

    .line 26
    iput-object p2, p0, Lcom/didi/frame/protobuffer/AuthSvrSignRsp;->hmac:Ljava/lang/String;

    .line 27
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "other"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 36
    if-ne p1, p0, :cond_1

    .line 39
    :cond_0
    :goto_0
    return v1

    .line 37
    :cond_1
    instance-of v3, p1, Lcom/didi/frame/protobuffer/AuthSvrSignRsp;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 38
    check-cast v0, Lcom/didi/frame/protobuffer/AuthSvrSignRsp;

    .line 39
    .local v0, o:Lcom/didi/frame/protobuffer/AuthSvrSignRsp;
    iget-object v3, p0, Lcom/didi/frame/protobuffer/AuthSvrSignRsp;->rsp_msg:Lcom/didi/frame/protobuffer/RspMsg;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/AuthSvrSignRsp;->rsp_msg:Lcom/didi/frame/protobuffer/RspMsg;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/AuthSvrSignRsp;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/AuthSvrSignRsp;->hmac:Ljava/lang/String;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/AuthSvrSignRsp;->hmac:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/AuthSvrSignRsp;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 45
    iget v0, p0, Lcom/didi/frame/protobuffer/AuthSvrSignRsp;->hashCode:I

    .line 46
    .local v0, result:I
    if-nez v0, :cond_1

    .line 47
    iget-object v2, p0, Lcom/didi/frame/protobuffer/AuthSvrSignRsp;->rsp_msg:Lcom/didi/frame/protobuffer/RspMsg;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/didi/frame/protobuffer/AuthSvrSignRsp;->rsp_msg:Lcom/didi/frame/protobuffer/RspMsg;

    invoke-virtual {v2}, Lcom/didi/frame/protobuffer/RspMsg;->hashCode()I

    move-result v0

    .line 48
    :goto_0
    mul-int/lit8 v2, v0, 0x25

    iget-object v3, p0, Lcom/didi/frame/protobuffer/AuthSvrSignRsp;->hmac:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v1, p0, Lcom/didi/frame/protobuffer/AuthSvrSignRsp;->hmac:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_0
    add-int v0, v2, v1

    .line 49
    iput v0, p0, Lcom/didi/frame/protobuffer/AuthSvrSignRsp;->hashCode:I

    .line 51
    :cond_1
    return v0

    :cond_2
    move v0, v1

    .line 47
    goto :goto_0
.end method
