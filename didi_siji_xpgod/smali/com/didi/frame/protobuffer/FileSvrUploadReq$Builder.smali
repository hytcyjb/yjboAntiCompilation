.class public final Lcom/didi/frame/protobuffer/FileSvrUploadReq$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "FileSvrUploadReq.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/frame/protobuffer/FileSvrUploadReq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/didi/frame/protobuffer/FileSvrUploadReq;",
        ">;"
    }
.end annotation


# instance fields
.field public content:Lokio/ByteString;

.field public fid:Ljava/lang/String;

.field public sid:Ljava/lang/Long;

.field public type:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 81
    return-void
.end method

.method public constructor <init>(Lcom/didi/frame/protobuffer/FileSvrUploadReq;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    .line 85
    if-nez p1, :cond_0

    .line 90
    :goto_0
    return-void

    .line 86
    :cond_0
    iget-object v0, p1, Lcom/didi/frame/protobuffer/FileSvrUploadReq;->fid:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/FileSvrUploadReq$Builder;->fid:Ljava/lang/String;

    .line 87
    iget-object v0, p1, Lcom/didi/frame/protobuffer/FileSvrUploadReq;->sid:Ljava/lang/Long;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/FileSvrUploadReq$Builder;->sid:Ljava/lang/Long;

    .line 88
    iget-object v0, p1, Lcom/didi/frame/protobuffer/FileSvrUploadReq;->type:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/FileSvrUploadReq$Builder;->type:Ljava/lang/Integer;

    .line 89
    iget-object v0, p1, Lcom/didi/frame/protobuffer/FileSvrUploadReq;->content:Lokio/ByteString;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/FileSvrUploadReq$Builder;->content:Lokio/ByteString;

    goto :goto_0
.end method


# virtual methods
.method public build()Lcom/didi/frame/protobuffer/FileSvrUploadReq;
    .locals 2

    .prologue
    .line 117
    invoke-virtual {p0}, Lcom/didi/frame/protobuffer/FileSvrUploadReq$Builder;->checkRequiredFields()V

    .line 118
    new-instance v0, Lcom/didi/frame/protobuffer/FileSvrUploadReq;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/didi/frame/protobuffer/FileSvrUploadReq;-><init>(Lcom/didi/frame/protobuffer/FileSvrUploadReq$Builder;Lcom/didi/frame/protobuffer/FileSvrUploadReq$1;)V

    return-object v0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/didi/frame/protobuffer/FileSvrUploadReq$Builder;->build()Lcom/didi/frame/protobuffer/FileSvrUploadReq;

    move-result-object v0

    return-object v0
.end method

.method public content(Lokio/ByteString;)Lcom/didi/frame/protobuffer/FileSvrUploadReq$Builder;
    .locals 0
    .parameter "content"

    .prologue
    .line 111
    iput-object p1, p0, Lcom/didi/frame/protobuffer/FileSvrUploadReq$Builder;->content:Lokio/ByteString;

    .line 112
    return-object p0
.end method

.method public fid(Ljava/lang/String;)Lcom/didi/frame/protobuffer/FileSvrUploadReq$Builder;
    .locals 0
    .parameter "fid"

    .prologue
    .line 93
    iput-object p1, p0, Lcom/didi/frame/protobuffer/FileSvrUploadReq$Builder;->fid:Ljava/lang/String;

    .line 94
    return-object p0
.end method

.method public sid(Ljava/lang/Long;)Lcom/didi/frame/protobuffer/FileSvrUploadReq$Builder;
    .locals 0
    .parameter "sid"

    .prologue
    .line 98
    iput-object p1, p0, Lcom/didi/frame/protobuffer/FileSvrUploadReq$Builder;->sid:Ljava/lang/Long;

    .line 99
    return-object p0
.end method

.method public type(Ljava/lang/Integer;)Lcom/didi/frame/protobuffer/FileSvrUploadReq$Builder;
    .locals 0
    .parameter "type"

    .prologue
    .line 106
    iput-object p1, p0, Lcom/didi/frame/protobuffer/FileSvrUploadReq$Builder;->type:Ljava/lang/Integer;

    .line 107
    return-object p0
.end method
