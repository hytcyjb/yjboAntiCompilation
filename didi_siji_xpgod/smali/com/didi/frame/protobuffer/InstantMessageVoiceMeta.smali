.class public final Lcom/didi/frame/protobuffer/InstantMessageVoiceMeta;
.super Lcom/squareup/wire/Message;
.source "InstantMessageVoiceMeta.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/frame/protobuffer/InstantMessageVoiceMeta$1;,
        Lcom/didi/frame/protobuffer/InstantMessageVoiceMeta$Builder;
    }
.end annotation


# static fields
.field public static final DEFAULT_VOICE_LENGTH:Ljava/lang/Integer;


# instance fields
.field public final voice_length:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->UINT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/InstantMessageVoiceMeta;->DEFAULT_VOICE_LENGTH:Ljava/lang/Integer;

    return-void
.end method

.method private constructor <init>(Lcom/didi/frame/protobuffer/InstantMessageVoiceMeta$Builder;)V
    .locals 1
    .parameter "builder"

    .prologue
    .line 25
    iget-object v0, p1, Lcom/didi/frame/protobuffer/InstantMessageVoiceMeta$Builder;->voice_length:Ljava/lang/Integer;

    invoke-direct {p0, v0}, Lcom/didi/frame/protobuffer/InstantMessageVoiceMeta;-><init>(Ljava/lang/Integer;)V

    .line 26
    invoke-virtual {p0, p1}, Lcom/didi/frame/protobuffer/InstantMessageVoiceMeta;->setBuilder(Lcom/squareup/wire/Message$Builder;)V

    .line 27
    return-void
.end method

.method synthetic constructor <init>(Lcom/didi/frame/protobuffer/InstantMessageVoiceMeta$Builder;Lcom/didi/frame/protobuffer/InstantMessageVoiceMeta$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 10
    invoke-direct {p0, p1}, Lcom/didi/frame/protobuffer/InstantMessageVoiceMeta;-><init>(Lcom/didi/frame/protobuffer/InstantMessageVoiceMeta$Builder;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;)V
    .locals 0
    .parameter "voice_length"

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/squareup/wire/Message;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/didi/frame/protobuffer/InstantMessageVoiceMeta;->voice_length:Ljava/lang/Integer;

    .line 22
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter "other"

    .prologue
    .line 31
    if-ne p1, p0, :cond_0

    const/4 v0, 0x1

    .line 33
    .end local p1
    :goto_0
    return v0

    .line 32
    .restart local p1
    :cond_0
    instance-of v0, p1, Lcom/didi/frame/protobuffer/InstantMessageVoiceMeta;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    .line 33
    :cond_1
    iget-object v0, p0, Lcom/didi/frame/protobuffer/InstantMessageVoiceMeta;->voice_length:Ljava/lang/Integer;

    check-cast p1, Lcom/didi/frame/protobuffer/InstantMessageVoiceMeta;

    .end local p1
    iget-object v1, p1, Lcom/didi/frame/protobuffer/InstantMessageVoiceMeta;->voice_length:Ljava/lang/Integer;

    invoke-virtual {p0, v0, v1}, Lcom/didi/frame/protobuffer/InstantMessageVoiceMeta;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 38
    iget v0, p0, Lcom/didi/frame/protobuffer/InstantMessageVoiceMeta;->hashCode:I

    .line 39
    .local v0, result:I
    if-eqz v0, :cond_0

    .end local v0           #result:I
    :goto_0
    return v0

    .restart local v0       #result:I
    :cond_0
    iget-object v1, p0, Lcom/didi/frame/protobuffer/InstantMessageVoiceMeta;->voice_length:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/didi/frame/protobuffer/InstantMessageVoiceMeta;->voice_length:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    :goto_1
    iput v1, p0, Lcom/didi/frame/protobuffer/InstantMessageVoiceMeta;->hashCode:I

    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method
