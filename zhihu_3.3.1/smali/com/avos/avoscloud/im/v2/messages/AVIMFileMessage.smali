.class public Lcom/avos/avoscloud/im/v2/messages/AVIMFileMessage;
.super Lcom/avos/avoscloud/im/v2/AVIMTypedMessage;
.source "AVIMFileMessage.java"


# annotations
.annotation runtime Lcom/avos/avoscloud/im/v2/AVIMMessageType;
    type = -0x6
.end annotation


# static fields
.field public static final CREATOR:Lcom/avos/avoscloud/im/v2/AVIMMessageCreator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/avos/avoscloud/im/v2/AVIMMessageCreator",
            "<",
            "Lcom/avos/avoscloud/im/v2/messages/AVIMFileMessage;",
            ">;"
        }
    .end annotation
.end field

.field static final DURATION:Ljava/lang/String; = "duration"

.field static final FILE_META:Ljava/lang/String; = "metaData"

.field static final FILE_SIZE:Ljava/lang/String; = "size"

.field static final FILE_URL:Ljava/lang/String; = "url"

.field static final FORMAT:Ljava/lang/String; = "format"

.field private static final LOCAL_PATH:Ljava/lang/String; = "local_path"

.field static final OBJECT_ID:Ljava/lang/String; = "objId"


# instance fields
.field actualFile:Lcom/avos/avoscloud/AVFile;

.field attrs:Ljava/util/Map;
    .annotation runtime Lcom/avos/avoscloud/im/v2/AVIMMessageField;
        name = "_lcattrs"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected file:Ljava/util/Map;
    .annotation runtime Lcom/avos/avoscloud/im/v2/AVIMMessageField;
        name = "_lcfile"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field localFile:Ljava/io/File;

.field progressCallback:Lcom/avos/avoscloud/ProgressCallback;

.field text:Ljava/lang/String;
    .annotation runtime Lcom/avos/avoscloud/im/v2/AVIMMessageField;
        name = "_lctext"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 220
    new-instance v0, Lcom/avos/avoscloud/im/v2/AVIMMessageCreator;

    const-class v1, Lcom/avos/avoscloud/im/v2/messages/AVIMFileMessage;

    invoke-direct {v0, v1}, Lcom/avos/avoscloud/im/v2/AVIMMessageCreator;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/avos/avoscloud/im/v2/messages/AVIMFileMessage;->CREATOR:Lcom/avos/avoscloud/im/v2/AVIMMessageCreator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/avos/avoscloud/im/v2/AVIMTypedMessage;-><init>()V

    .line 41
    return-void
.end method

.method public constructor <init>(Lcom/avos/avoscloud/AVFile;)V
    .locals 0
    .parameter

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/avos/avoscloud/im/v2/AVIMTypedMessage;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMFileMessage;->actualFile:Lcom/avos/avoscloud/AVFile;

    .line 56
    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 3
    .parameter

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/avos/avoscloud/im/v2/AVIMTypedMessage;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMFileMessage;->localFile:Ljava/io/File;

    .line 49
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/avos/avoscloud/AVFile;->withFile(Ljava/lang/String;Ljava/io/File;)Lcom/avos/avoscloud/AVFile;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMFileMessage;->actualFile:Lcom/avos/avoscloud/AVFile;

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMFileMessage;->file:Ljava/util/Map;

    .line 51
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMFileMessage;->file:Ljava/util/Map;

    const-string v1, "local_path"

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 44
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/avos/avoscloud/im/v2/messages/AVIMFileMessage;-><init>(Ljava/io/File;)V

    .line 45
    return-void
.end method


# virtual methods
.method protected fulFillFileInfo(Lcom/avos/avoscloud/SaveCallback;)V
    .locals 3
    .parameter

    .prologue
    .line 192
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMFileMessage;->actualFile:Lcom/avos/avoscloud/AVFile;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMFileMessage;->actualFile:Lcom/avos/avoscloud/AVFile;

    invoke-virtual {v0}, Lcom/avos/avoscloud/AVFile;->getObjectId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMFileMessage;->actualFile:Lcom/avos/avoscloud/AVFile;

    invoke-virtual {v0}, Lcom/avos/avoscloud/AVFile;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 194
    invoke-virtual {p0}, Lcom/avos/avoscloud/im/v2/messages/AVIMFileMessage;->getFile()Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :goto_0
    iput-object v0, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMFileMessage;->file:Ljava/util/Map;

    .line 195
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMFileMessage;->file:Ljava/util/Map;

    const-string v1, "objId"

    iget-object v2, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMFileMessage;->actualFile:Lcom/avos/avoscloud/AVFile;

    invoke-virtual {v2}, Lcom/avos/avoscloud/AVFile;->getObjectId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMFileMessage;->file:Ljava/util/Map;

    const-string v1, "url"

    iget-object v2, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMFileMessage;->actualFile:Lcom/avos/avoscloud/AVFile;

    invoke-virtual {v2}, Lcom/avos/avoscloud/AVFile;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMFileMessage;->file:Ljava/util/Map;

    const-string v1, "local_path"

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    invoke-virtual {p0}, Lcom/avos/avoscloud/im/v2/messages/AVIMFileMessage;->getFileMetaData()Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 200
    :goto_1
    const-string v1, "size"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 201
    const-string v1, "size"

    iget-object v2, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMFileMessage;->actualFile:Lcom/avos/avoscloud/AVFile;

    invoke-virtual {v2}, Lcom/avos/avoscloud/AVFile;->getSize()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    :cond_0
    new-instance v1, Lcom/avos/avoscloud/im/v2/messages/AVIMFileMessage$2;

    invoke-direct {v1, p0, v0, p1}, Lcom/avos/avoscloud/im/v2/messages/AVIMFileMessage$2;-><init>(Lcom/avos/avoscloud/im/v2/messages/AVIMFileMessage;Ljava/util/Map;Lcom/avos/avoscloud/SaveCallback;)V

    invoke-virtual {p0, v0, v1}, Lcom/avos/avoscloud/im/v2/messages/AVIMFileMessage;->getAdditionalMetaData(Ljava/util/Map;Lcom/avos/avoscloud/SaveCallback;)V

    .line 214
    :cond_1
    return-void

    .line 194
    :cond_2
    invoke-virtual {p0}, Lcom/avos/avoscloud/im/v2/messages/AVIMFileMessage;->getFile()Ljava/util/Map;

    move-result-object v0

    goto :goto_0

    .line 198
    :cond_3
    invoke-virtual {p0}, Lcom/avos/avoscloud/im/v2/messages/AVIMFileMessage;->getFileMetaData()Ljava/util/Map;

    move-result-object v0

    goto :goto_1
.end method

.method public getAVFile()Lcom/avos/avoscloud/AVFile;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 77
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMFileMessage;->actualFile:Lcom/avos/avoscloud/AVFile;

    if-eqz v0, :cond_1

    .line 78
    iget-object v2, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMFileMessage;->actualFile:Lcom/avos/avoscloud/AVFile;

    .line 90
    :cond_0
    :goto_0
    return-object v2

    .line 79
    :cond_1
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMFileMessage;->file:Ljava/util/Map;

    const-string v1, "url"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMFileMessage;->file:Ljava/util/Map;

    const-string v1, "metaData"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 82
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMFileMessage;->file:Ljava/util/Map;

    const-string v1, "metaData"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    move-object v1, v0

    .line 84
    :goto_1
    new-instance v3, Lcom/avos/avoscloud/AVFile;

    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMFileMessage;->file:Ljava/util/Map;

    const-string v4, "url"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v3, v2, v0, v1}, Lcom/avos/avoscloud/AVFile;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 85
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMFileMessage;->file:Ljava/util/Map;

    const-string v1, "objId"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 86
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMFileMessage;->file:Ljava/util/Map;

    const-string v1, "objId"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Lcom/avos/avoscloud/AVFile;->setObjectId(Ljava/lang/String;)V

    :cond_2
    move-object v2, v3

    .line 88
    goto :goto_0

    :cond_3
    move-object v1, v2

    goto :goto_1
.end method

.method protected getAdditionalMetaData(Ljava/util/Map;Lcom/avos/avoscloud/SaveCallback;)V
    .locals 1
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
    .line 217
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/avos/avoscloud/SaveCallback;->internalDone(Lcom/avos/avoscloud/AVException;)V

    .line 218
    return-void
.end method

.method public getAttrs()Ljava/util/Map;
    .locals 1
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
    .line 183
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMFileMessage;->attrs:Ljava/util/Map;

    return-object v0
.end method

.method public getFile()Ljava/util/Map;
    .locals 1
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
    .line 59
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMFileMessage;->file:Ljava/util/Map;

    return-object v0
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
    .line 122
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMFileMessage;->file:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 123
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMFileMessage;->file:Ljava/util/Map;

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMFileMessage;->file:Ljava/util/Map;

    const-string v1, "metaData"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 127
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 128
    const-string v1, "size"

    iget-object v2, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMFileMessage;->actualFile:Lcom/avos/avoscloud/AVFile;

    invoke-virtual {v2}, Lcom/avos/avoscloud/AVFile;->getSize()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    :goto_0
    return-object v0

    .line 130
    :cond_1
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMFileMessage;->file:Ljava/util/Map;

    const-string v1, "metaData"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    goto :goto_0
.end method

.method public getFileUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMFileMessage;->file:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMFileMessage;->file:Ljava/util/Map;

    const-string v1, "url"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 112
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLocalFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMFileMessage;->localFile:Ljava/io/File;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMFileMessage;->localFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMFileMessage;->localFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSize()J
    .locals 2

    .prologue
    .line 141
    invoke-virtual {p0}, Lcom/avos/avoscloud/im/v2/messages/AVIMFileMessage;->getFileMetaData()Ljava/util/Map;

    move-result-object v0

    .line 142
    if-eqz v0, :cond_0

    .line 143
    const-string v1, "size"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 145
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMFileMessage;->text:Ljava/lang/String;

    return-object v0
.end method

.method public setAttrs(Ljava/util/Map;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 187
    iput-object p1, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMFileMessage;->attrs:Ljava/util/Map;

    .line 188
    return-void
.end method

.method protected setFile(Ljava/util/Map;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 94
    iput-object p1, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMFileMessage;->file:Ljava/util/Map;

    .line 95
    const-string v0, "metaData"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 96
    new-instance v2, Lcom/avos/avoscloud/AVFile;

    const/4 v3, 0x0

    const-string v1, "url"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v2, v3, v1, v0}, Lcom/avos/avoscloud/AVFile;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    iput-object v2, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMFileMessage;->actualFile:Lcom/avos/avoscloud/AVFile;

    .line 97
    iget-object v1, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMFileMessage;->actualFile:Lcom/avos/avoscloud/AVFile;

    const-string v0, "objId"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/avos/avoscloud/AVFile;->setObjectId(Ljava/lang/String;)V

    .line 98
    const-string v0, "local_path"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    new-instance v1, Ljava/io/File;

    const-string v0, "local_path"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMFileMessage;->localFile:Ljava/io/File;

    .line 101
    :cond_0
    return-void
.end method

.method public setProgressCallback(Lcom/avos/avoscloud/ProgressCallback;)V
    .locals 0
    .parameter

    .prologue
    .line 171
    iput-object p1, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMFileMessage;->progressCallback:Lcom/avos/avoscloud/ProgressCallback;

    .line 172
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 179
    iput-object p1, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMFileMessage;->text:Ljava/lang/String;

    .line 180
    return-void
.end method

.method protected upload(Lcom/avos/avoscloud/SaveCallback;)V
    .locals 3
    .parameter

    .prologue
    .line 149
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMFileMessage;->actualFile:Lcom/avos/avoscloud/AVFile;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMFileMessage;->actualFile:Lcom/avos/avoscloud/AVFile;

    invoke-virtual {v0}, Lcom/avos/avoscloud/AVFile;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMFileMessage;->actualFile:Lcom/avos/avoscloud/AVFile;

    new-instance v1, Lcom/avos/avoscloud/im/v2/messages/AVIMFileMessage$1;

    invoke-direct {v1, p0, p1}, Lcom/avos/avoscloud/im/v2/messages/AVIMFileMessage$1;-><init>(Lcom/avos/avoscloud/im/v2/messages/AVIMFileMessage;Lcom/avos/avoscloud/SaveCallback;)V

    iget-object v2, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMFileMessage;->progressCallback:Lcom/avos/avoscloud/ProgressCallback;

    invoke-virtual {v0, v1, v2}, Lcom/avos/avoscloud/AVFile;->saveInBackground(Lcom/avos/avoscloud/SaveCallback;Lcom/avos/avoscloud/ProgressCallback;)V

    .line 163
    :goto_0
    return-void

    .line 161
    :cond_0
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/im/v2/messages/AVIMFileMessage;->fulFillFileInfo(Lcom/avos/avoscloud/SaveCallback;)V

    goto :goto_0
.end method
