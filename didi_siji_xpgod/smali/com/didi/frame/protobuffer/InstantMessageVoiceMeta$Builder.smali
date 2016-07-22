.class public final Lcom/didi/frame/protobuffer/InstantMessageVoiceMeta$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "InstantMessageVoiceMeta.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/frame/protobuffer/InstantMessageVoiceMeta;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/didi/frame/protobuffer/InstantMessageVoiceMeta;",
        ">;"
    }
.end annotation


# instance fields
.field public voice_length:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 47
    return-void
.end method

.method public constructor <init>(Lcom/didi/frame/protobuffer/InstantMessageVoiceMeta;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    .line 51
    if-nez p1, :cond_0

    .line 53
    :goto_0
    return-void

    .line 52
    :cond_0
    iget-object v0, p1, Lcom/didi/frame/protobuffer/InstantMessageVoiceMeta;->voice_length:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/InstantMessageVoiceMeta$Builder;->voice_length:Ljava/lang/Integer;

    goto :goto_0
.end method


# virtual methods
.method public build()Lcom/didi/frame/protobuffer/InstantMessageVoiceMeta;
    .locals 2

    .prologue
    .line 65
    new-instance v0, Lcom/didi/frame/protobuffer/InstantMessageVoiceMeta;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/didi/frame/protobuffer/InstantMessageVoiceMeta;-><init>(Lcom/didi/frame/protobuffer/InstantMessageVoiceMeta$Builder;Lcom/didi/frame/protobuffer/InstantMessageVoiceMeta$1;)V

    return-object v0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/didi/frame/protobuffer/InstantMessageVoiceMeta$Builder;->build()Lcom/didi/frame/protobuffer/InstantMessageVoiceMeta;

    move-result-object v0

    return-object v0
.end method

.method public voice_length(Ljava/lang/Integer;)Lcom/didi/frame/protobuffer/InstantMessageVoiceMeta$Builder;
    .locals 0
    .parameter "voice_length"

    .prologue
    .line 59
    iput-object p1, p0, Lcom/didi/frame/protobuffer/InstantMessageVoiceMeta$Builder;->voice_length:Ljava/lang/Integer;

    .line 60
    return-object p0
.end method
