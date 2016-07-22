.class public final Lcom/didi/frame/protobuffer/ConnSvrConnectChallenge;
.super Lcom/squareup/wire/Message;
.source "ConnSvrConnectChallenge.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/frame/protobuffer/ConnSvrConnectChallenge$1;,
        Lcom/didi/frame/protobuffer/ConnSvrConnectChallenge$Builder;
    }
.end annotation


# static fields
.field public static final DEFAULT_RANDOM_MSG:Lokio/ByteString;


# instance fields
.field public final random_msg:Lokio/ByteString;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->BYTES:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    sput-object v0, Lcom/didi/frame/protobuffer/ConnSvrConnectChallenge;->DEFAULT_RANDOM_MSG:Lokio/ByteString;

    return-void
.end method

.method private constructor <init>(Lcom/didi/frame/protobuffer/ConnSvrConnectChallenge$Builder;)V
    .locals 1
    .parameter "builder"

    .prologue
    .line 30
    iget-object v0, p1, Lcom/didi/frame/protobuffer/ConnSvrConnectChallenge$Builder;->random_msg:Lokio/ByteString;

    invoke-direct {p0, v0}, Lcom/didi/frame/protobuffer/ConnSvrConnectChallenge;-><init>(Lokio/ByteString;)V

    .line 31
    invoke-virtual {p0, p1}, Lcom/didi/frame/protobuffer/ConnSvrConnectChallenge;->setBuilder(Lcom/squareup/wire/Message$Builder;)V

    .line 32
    return-void
.end method

.method synthetic constructor <init>(Lcom/didi/frame/protobuffer/ConnSvrConnectChallenge$Builder;Lcom/didi/frame/protobuffer/ConnSvrConnectChallenge$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/didi/frame/protobuffer/ConnSvrConnectChallenge;-><init>(Lcom/didi/frame/protobuffer/ConnSvrConnectChallenge$Builder;)V

    return-void
.end method

.method public constructor <init>(Lokio/ByteString;)V
    .locals 0
    .parameter "random_msg"

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/squareup/wire/Message;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/didi/frame/protobuffer/ConnSvrConnectChallenge;->random_msg:Lokio/ByteString;

    .line 27
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter "other"

    .prologue
    .line 36
    if-ne p1, p0, :cond_0

    const/4 v0, 0x1

    .line 38
    .end local p1
    :goto_0
    return v0

    .line 37
    .restart local p1
    :cond_0
    instance-of v0, p1, Lcom/didi/frame/protobuffer/ConnSvrConnectChallenge;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    .line 38
    :cond_1
    iget-object v0, p0, Lcom/didi/frame/protobuffer/ConnSvrConnectChallenge;->random_msg:Lokio/ByteString;

    check-cast p1, Lcom/didi/frame/protobuffer/ConnSvrConnectChallenge;

    .end local p1
    iget-object v1, p1, Lcom/didi/frame/protobuffer/ConnSvrConnectChallenge;->random_msg:Lokio/ByteString;

    invoke-virtual {p0, v0, v1}, Lcom/didi/frame/protobuffer/ConnSvrConnectChallenge;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 43
    iget v0, p0, Lcom/didi/frame/protobuffer/ConnSvrConnectChallenge;->hashCode:I

    .line 44
    .local v0, result:I
    if-eqz v0, :cond_0

    .end local v0           #result:I
    :goto_0
    return v0

    .restart local v0       #result:I
    :cond_0
    iget-object v1, p0, Lcom/didi/frame/protobuffer/ConnSvrConnectChallenge;->random_msg:Lokio/ByteString;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/didi/frame/protobuffer/ConnSvrConnectChallenge;->random_msg:Lokio/ByteString;

    invoke-virtual {v1}, Lokio/ByteString;->hashCode()I

    move-result v1

    :goto_1
    iput v1, p0, Lcom/didi/frame/protobuffer/ConnSvrConnectChallenge;->hashCode:I

    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method
