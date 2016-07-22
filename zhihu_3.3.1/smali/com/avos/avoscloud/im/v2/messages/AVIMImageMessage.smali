.class public Lcom/avos/avoscloud/im/v2/messages/AVIMImageMessage;
.super Lcom/avos/avoscloud/im/v2/messages/AVIMFileMessage;
.source "AVIMImageMessage.java"


# annotations
.annotation runtime Lcom/avos/avoscloud/im/v2/AVIMMessageType;
    type = -0x2
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/avos/avoscloud/im/v2/messages/AVIMImageMessage;",
            ">;"
        }
    .end annotation
.end field

.field static final IMAGE_HEIGHT:Ljava/lang/String; = "height"

.field static final IMAGE_WIDTH:Ljava/lang/String; = "width"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 124
    new-instance v0, Lcom/avos/avoscloud/im/v2/AVIMMessageCreator;

    const-class v1, Lcom/avos/avoscloud/im/v2/messages/AVIMImageMessage;

    invoke-direct {v0, v1}, Lcom/avos/avoscloud/im/v2/AVIMMessageCreator;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/avos/avoscloud/im/v2/messages/AVIMImageMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/avos/avoscloud/im/v2/messages/AVIMFileMessage;-><init>()V

    .line 26
    return-void
.end method

.method public constructor <init>(Lcom/avos/avoscloud/AVFile;)V
    .locals 0
    .parameter

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/im/v2/messages/AVIMFileMessage;-><init>(Lcom/avos/avoscloud/AVFile;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 0
    .parameter

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/im/v2/messages/AVIMFileMessage;-><init>(Ljava/io/File;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/im/v2/messages/AVIMFileMessage;-><init>(Ljava/lang/String;)V

    .line 30
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
    .line 90
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMImageMessage;->actualFile:Lcom/avos/avoscloud/AVFile;

    invoke-virtual {v0}, Lcom/avos/avoscloud/AVFile;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMImageMessage;->localFile:Ljava/io/File;

    if-nez v0, :cond_0

    .line 91
    invoke-static {}, Lcom/avos/avoscloud/AVUtils;->getDirectlyClientForUse()Lcom/avos/avoscloud/PaasClient$AVHttpClient;

    move-result-object v0

    .line 92
    new-instance v1, Lcom/avos/avoscloud/okhttp/Request$Builder;

    invoke-direct {v1}, Lcom/avos/avoscloud/okhttp/Request$Builder;-><init>()V

    .line 93
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMImageMessage;->actualFile:Lcom/avos/avoscloud/AVFile;

    invoke-virtual {v3}, Lcom/avos/avoscloud/AVFile;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "?imageInfo"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/avos/avoscloud/okhttp/Request$Builder;->url(Ljava/lang/String;)Lcom/avos/avoscloud/okhttp/Request$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/avos/avoscloud/okhttp/Request$Builder;->get()Lcom/avos/avoscloud/okhttp/Request$Builder;

    .line 94
    invoke-virtual {v1}, Lcom/avos/avoscloud/okhttp/Request$Builder;->build()Lcom/avos/avoscloud/okhttp/Request;

    move-result-object v1

    const/4 v2, 0x0

    new-instance v3, Lcom/avos/avoscloud/GetHttpResponseHandler;

    new-instance v4, Lcom/avos/avoscloud/im/v2/messages/AVIMImageMessage$1;

    invoke-direct {v4, p0, p1, p2}, Lcom/avos/avoscloud/im/v2/messages/AVIMImageMessage$1;-><init>(Lcom/avos/avoscloud/im/v2/messages/AVIMImageMessage;Ljava/util/Map;Lcom/avos/avoscloud/SaveCallback;)V

    invoke-direct {v3, v4}, Lcom/avos/avoscloud/GetHttpResponseHandler;-><init>(Lcom/avos/avoscloud/GenericObjectCallback;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/avos/avoscloud/PaasClient$AVHttpClient;->execute(Lcom/avos/avoscloud/okhttp/Request;ZLcom/avos/avoscloud/AsyncHttpResponseHandler;)V

    .line 122
    :goto_0
    return-void

    .line 120
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/avos/avoscloud/SaveCallback;->internalDone(Lcom/avos/avoscloud/AVException;)V

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
    .line 47
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMImageMessage;->file:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMImageMessage;->file:Ljava/util/Map;

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMImageMessage;->file:Ljava/util/Map;

    const-string v1, "metaData"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 51
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMImageMessage;->file:Ljava/util/Map;

    const-string v1, "metaData"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 59
    :goto_0
    return-object v0

    .line 53
    :cond_1
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMImageMessage;->localFile:Ljava/io/File;

    if-eqz v0, :cond_2

    .line 54
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMImageMessage;->localFile:Ljava/io/File;

    invoke-static {v0}, Lcom/avos/avoscloud/im/v2/messages/AVIMFileMessageAccessor;->getImageMeta(Ljava/io/File;)Ljava/util/Map;

    move-result-object v0

    .line 55
    const-string v1, "size"

    iget-object v2, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMImageMessage;->actualFile:Lcom/avos/avoscloud/AVFile;

    invoke-virtual {v2}, Lcom/avos/avoscloud/AVFile;->getSize()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    iget-object v1, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMImageMessage;->file:Ljava/util/Map;

    const-string v2, "metaData"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 59
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getHeight()I
    .locals 2

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/avos/avoscloud/im/v2/messages/AVIMImageMessage;->getFileMetaData()Ljava/util/Map;

    move-result-object v0

    .line 69
    if-eqz v0, :cond_0

    .line 70
    const-string v1, "height"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 72
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getWidth()I
    .locals 2

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/avos/avoscloud/im/v2/messages/AVIMImageMessage;->getFileMetaData()Ljava/util/Map;

    move-result-object v0

    .line 82
    if-eqz v0, :cond_0

    .line 83
    const-string v1, "width"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 85
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
