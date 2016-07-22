.class public Lcom/avos/avoscloud/im/v2/messages/AVIMVideoMessage;
.super Lcom/avos/avoscloud/im/v2/messages/AVIMFileMessage;
.source "AVIMVideoMessage.java"


# annotations
.annotation runtime Lcom/avos/avoscloud/im/v2/AVIMMessageType;
    type = -0x4
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/avos/avoscloud/im/v2/messages/AVIMVideoMessage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 108
    new-instance v0, Lcom/avos/avoscloud/im/v2/AVIMMessageCreator;

    const-class v1, Lcom/avos/avoscloud/im/v2/messages/AVIMVideoMessage;

    invoke-direct {v0, v1}, Lcom/avos/avoscloud/im/v2/AVIMMessageCreator;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/avos/avoscloud/im/v2/messages/AVIMVideoMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/avos/avoscloud/im/v2/messages/AVIMFileMessage;-><init>()V

    .line 24
    return-void
.end method

.method public constructor <init>(Lcom/avos/avoscloud/AVFile;)V
    .locals 0
    .parameter

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/im/v2/messages/AVIMFileMessage;-><init>(Lcom/avos/avoscloud/AVFile;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 0
    .parameter

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/im/v2/messages/AVIMFileMessage;-><init>(Ljava/io/File;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/im/v2/messages/AVIMFileMessage;-><init>(Ljava/lang/String;)V

    .line 28
    return-void
.end method


# virtual methods
.method protected getAdditionalMetaData(Ljava/util/Map;Lcom/avos/avoscloud/SaveCallback;)V
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/avos/avoscloud/SaveCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 75
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMVideoMessage;->actualFile:Lcom/avos/avoscloud/AVFile;

    invoke-virtual {v0}, Lcom/avos/avoscloud/AVFile;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMVideoMessage;->localFile:Ljava/io/File;

    if-nez v0, :cond_0

    .line 76
    invoke-static {}, Lcom/avos/avoscloud/AVUtils;->getDirectlyClientForUse()Lcom/avos/avoscloud/PaasClient$AVHttpClient;

    move-result-object v0

    .line 77
    new-instance v1, Lcom/avos/avoscloud/okhttp/Request$Builder;

    invoke-direct {v1}, Lcom/avos/avoscloud/okhttp/Request$Builder;-><init>()V

    .line 78
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMVideoMessage;->actualFile:Lcom/avos/avoscloud/AVFile;

    invoke-virtual {v3}, Lcom/avos/avoscloud/AVFile;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "?avinfo"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/avos/avoscloud/okhttp/Request$Builder;->url(Ljava/lang/String;)Lcom/avos/avoscloud/okhttp/Request$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/avos/avoscloud/okhttp/Request$Builder;->get()Lcom/avos/avoscloud/okhttp/Request$Builder;

    .line 79
    invoke-virtual {v1}, Lcom/avos/avoscloud/okhttp/Request$Builder;->build()Lcom/avos/avoscloud/okhttp/Request;

    move-result-object v1

    const/4 v2, 0x0

    new-instance v3, Lcom/avos/avoscloud/GetHttpResponseHandler;

    new-instance v4, Lcom/avos/avoscloud/im/v2/messages/AVIMVideoMessage$1;

    invoke-direct {v4, p0, p1, p2}, Lcom/avos/avoscloud/im/v2/messages/AVIMVideoMessage$1;-><init>(Lcom/avos/avoscloud/im/v2/messages/AVIMVideoMessage;Ljava/util/Map;Lcom/avos/avoscloud/SaveCallback;)V

    invoke-direct {v3, v4}, Lcom/avos/avoscloud/GetHttpResponseHandler;-><init>(Lcom/avos/avoscloud/GenericObjectCallback;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/avos/avoscloud/PaasClient$AVHttpClient;->execute(Lcom/avos/avoscloud/okhttp/Request;ZLcom/avos/avoscloud/AsyncHttpResponseHandler;)V

    .line 106
    :goto_0
    return-void

    .line 104
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/avos/avoscloud/SaveCallback;->internalDone(Lcom/avos/avoscloud/AVException;)V

    goto :goto_0
.end method

.method public getDuration()D
    .locals 2

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/avos/avoscloud/im/v2/messages/AVIMVideoMessage;->getFileMetaData()Ljava/util/Map;

    move-result-object v0

    .line 67
    if-eqz v0, :cond_0

    .line 68
    const-string v1, "duration"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    .line 70
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getFileMetaData()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 45
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMVideoMessage;->file:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMVideoMessage;->file:Ljava/util/Map;

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMVideoMessage;->file:Ljava/util/Map;

    const-string v1, "metaData"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 49
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMVideoMessage;->file:Ljava/util/Map;

    const-string v1, "metaData"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 57
    :goto_0
    return-object v0

    .line 51
    :cond_1
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMVideoMessage;->localFile:Ljava/io/File;

    if-eqz v0, :cond_2

    .line 52
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMVideoMessage;->localFile:Ljava/io/File;

    invoke-static {v0}, Lcom/avos/avoscloud/im/v2/messages/AVIMFileMessageAccessor;->mediaInfo(Ljava/io/File;)Ljava/util/Map;

    move-result-object v0

    .line 53
    const-string v1, "size"

    iget-object v2, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMVideoMessage;->actualFile:Lcom/avos/avoscloud/AVFile;

    invoke-virtual {v2}, Lcom/avos/avoscloud/AVFile;->getSize()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    iget-object v1, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMVideoMessage;->file:Ljava/util/Map;

    const-string v2, "metaData"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 57
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
