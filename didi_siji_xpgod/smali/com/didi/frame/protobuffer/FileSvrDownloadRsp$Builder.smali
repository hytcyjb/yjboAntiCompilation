.class public final Lcom/didi/frame/protobuffer/FileSvrDownloadRsp$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "FileSvrDownloadRsp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/frame/protobuffer/FileSvrDownloadRsp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/didi/frame/protobuffer/FileSvrDownloadRsp;",
        ">;"
    }
.end annotation


# instance fields
.field public content:Lokio/ByteString;

.field public rc:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 60
    return-void
.end method

.method public constructor <init>(Lcom/didi/frame/protobuffer/FileSvrDownloadRsp;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    .line 64
    if-nez p1, :cond_0

    .line 67
    :goto_0
    return-void

    .line 65
    :cond_0
    iget-object v0, p1, Lcom/didi/frame/protobuffer/FileSvrDownloadRsp;->rc:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/FileSvrDownloadRsp$Builder;->rc:Ljava/lang/Integer;

    .line 66
    iget-object v0, p1, Lcom/didi/frame/protobuffer/FileSvrDownloadRsp;->content:Lokio/ByteString;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/FileSvrDownloadRsp$Builder;->content:Lokio/ByteString;

    goto :goto_0
.end method


# virtual methods
.method public build()Lcom/didi/frame/protobuffer/FileSvrDownloadRsp;
    .locals 2

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/didi/frame/protobuffer/FileSvrDownloadRsp$Builder;->checkRequiredFields()V

    .line 82
    new-instance v0, Lcom/didi/frame/protobuffer/FileSvrDownloadRsp;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/didi/frame/protobuffer/FileSvrDownloadRsp;-><init>(Lcom/didi/frame/protobuffer/FileSvrDownloadRsp$Builder;Lcom/didi/frame/protobuffer/FileSvrDownloadRsp$1;)V

    return-object v0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/didi/frame/protobuffer/FileSvrDownloadRsp$Builder;->build()Lcom/didi/frame/protobuffer/FileSvrDownloadRsp;

    move-result-object v0

    return-object v0
.end method

.method public content(Lokio/ByteString;)Lcom/didi/frame/protobuffer/FileSvrDownloadRsp$Builder;
    .locals 0
    .parameter "content"

    .prologue
    .line 75
    iput-object p1, p0, Lcom/didi/frame/protobuffer/FileSvrDownloadRsp$Builder;->content:Lokio/ByteString;

    .line 76
    return-object p0
.end method

.method public rc(Ljava/lang/Integer;)Lcom/didi/frame/protobuffer/FileSvrDownloadRsp$Builder;
    .locals 0
    .parameter "rc"

    .prologue
    .line 70
    iput-object p1, p0, Lcom/didi/frame/protobuffer/FileSvrDownloadRsp$Builder;->rc:Ljava/lang/Integer;

    .line 71
    return-object p0
.end method
