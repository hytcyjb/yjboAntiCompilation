.class public final Lcom/didi/frame/protobuffer/InstantMessageMessage$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "InstantMessageMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/frame/protobuffer/InstantMessageMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/didi/frame/protobuffer/InstantMessageMessage;",
        ">;"
    }
.end annotation


# instance fields
.field public fid:Ljava/lang/String;

.field public meta:Lokio/ByteString;

.field public mid:Ljava/lang/Long;

.field public request_id:Ljava/lang/Long;

.field public text:Ljava/lang/String;

.field public time:Ljava/lang/Long;

.field public type:Ljava/lang/Integer;

.field public uid:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 121
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 122
    return-void
.end method

.method public constructor <init>(Lcom/didi/frame/protobuffer/InstantMessageMessage;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 125
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    .line 126
    if-nez p1, :cond_0

    .line 135
    :goto_0
    return-void

    .line 127
    :cond_0
    iget-object v0, p1, Lcom/didi/frame/protobuffer/InstantMessageMessage;->mid:Ljava/lang/Long;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/InstantMessageMessage$Builder;->mid:Ljava/lang/Long;

    .line 128
    iget-object v0, p1, Lcom/didi/frame/protobuffer/InstantMessageMessage;->type:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/InstantMessageMessage$Builder;->type:Ljava/lang/Integer;

    .line 129
    iget-object v0, p1, Lcom/didi/frame/protobuffer/InstantMessageMessage;->time:Ljava/lang/Long;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/InstantMessageMessage$Builder;->time:Ljava/lang/Long;

    .line 130
    iget-object v0, p1, Lcom/didi/frame/protobuffer/InstantMessageMessage;->uid:Ljava/lang/Long;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/InstantMessageMessage$Builder;->uid:Ljava/lang/Long;

    .line 131
    iget-object v0, p1, Lcom/didi/frame/protobuffer/InstantMessageMessage;->text:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/InstantMessageMessage$Builder;->text:Ljava/lang/String;

    .line 132
    iget-object v0, p1, Lcom/didi/frame/protobuffer/InstantMessageMessage;->fid:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/InstantMessageMessage$Builder;->fid:Ljava/lang/String;

    .line 133
    iget-object v0, p1, Lcom/didi/frame/protobuffer/InstantMessageMessage;->request_id:Ljava/lang/Long;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/InstantMessageMessage$Builder;->request_id:Ljava/lang/Long;

    .line 134
    iget-object v0, p1, Lcom/didi/frame/protobuffer/InstantMessageMessage;->meta:Lokio/ByteString;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/InstantMessageMessage$Builder;->meta:Lokio/ByteString;

    goto :goto_0
.end method


# virtual methods
.method public build()Lcom/didi/frame/protobuffer/InstantMessageMessage;
    .locals 2

    .prologue
    .line 191
    invoke-virtual {p0}, Lcom/didi/frame/protobuffer/InstantMessageMessage$Builder;->checkRequiredFields()V

    .line 192
    new-instance v0, Lcom/didi/frame/protobuffer/InstantMessageMessage;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/didi/frame/protobuffer/InstantMessageMessage;-><init>(Lcom/didi/frame/protobuffer/InstantMessageMessage$Builder;Lcom/didi/frame/protobuffer/InstantMessageMessage$1;)V

    return-object v0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 110
    invoke-virtual {p0}, Lcom/didi/frame/protobuffer/InstantMessageMessage$Builder;->build()Lcom/didi/frame/protobuffer/InstantMessageMessage;

    move-result-object v0

    return-object v0
.end method

.method public fid(Ljava/lang/String;)Lcom/didi/frame/protobuffer/InstantMessageMessage$Builder;
    .locals 0
    .parameter "fid"

    .prologue
    .line 169
    iput-object p1, p0, Lcom/didi/frame/protobuffer/InstantMessageMessage$Builder;->fid:Ljava/lang/String;

    .line 170
    return-object p0
.end method

.method public meta(Lokio/ByteString;)Lcom/didi/frame/protobuffer/InstantMessageMessage$Builder;
    .locals 0
    .parameter "meta"

    .prologue
    .line 185
    iput-object p1, p0, Lcom/didi/frame/protobuffer/InstantMessageMessage$Builder;->meta:Lokio/ByteString;

    .line 186
    return-object p0
.end method

.method public mid(Ljava/lang/Long;)Lcom/didi/frame/protobuffer/InstantMessageMessage$Builder;
    .locals 0
    .parameter "mid"

    .prologue
    .line 138
    iput-object p1, p0, Lcom/didi/frame/protobuffer/InstantMessageMessage$Builder;->mid:Ljava/lang/Long;

    .line 139
    return-object p0
.end method

.method public request_id(Ljava/lang/Long;)Lcom/didi/frame/protobuffer/InstantMessageMessage$Builder;
    .locals 0
    .parameter "request_id"

    .prologue
    .line 177
    iput-object p1, p0, Lcom/didi/frame/protobuffer/InstantMessageMessage$Builder;->request_id:Ljava/lang/Long;

    .line 178
    return-object p0
.end method

.method public text(Ljava/lang/String;)Lcom/didi/frame/protobuffer/InstantMessageMessage$Builder;
    .locals 0
    .parameter "text"

    .prologue
    .line 164
    iput-object p1, p0, Lcom/didi/frame/protobuffer/InstantMessageMessage$Builder;->text:Ljava/lang/String;

    .line 165
    return-object p0
.end method

.method public time(Ljava/lang/Long;)Lcom/didi/frame/protobuffer/InstantMessageMessage$Builder;
    .locals 0
    .parameter "time"

    .prologue
    .line 151
    iput-object p1, p0, Lcom/didi/frame/protobuffer/InstantMessageMessage$Builder;->time:Ljava/lang/Long;

    .line 152
    return-object p0
.end method

.method public type(Ljava/lang/Integer;)Lcom/didi/frame/protobuffer/InstantMessageMessage$Builder;
    .locals 0
    .parameter "type"

    .prologue
    .line 143
    iput-object p1, p0, Lcom/didi/frame/protobuffer/InstantMessageMessage$Builder;->type:Ljava/lang/Integer;

    .line 144
    return-object p0
.end method

.method public uid(Ljava/lang/Long;)Lcom/didi/frame/protobuffer/InstantMessageMessage$Builder;
    .locals 0
    .parameter "uid"

    .prologue
    .line 159
    iput-object p1, p0, Lcom/didi/frame/protobuffer/InstantMessageMessage$Builder;->uid:Ljava/lang/Long;

    .line 160
    return-object p0
.end method
