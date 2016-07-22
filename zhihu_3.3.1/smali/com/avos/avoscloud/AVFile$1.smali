.class final Lcom/avos/avoscloud/AVFile$1;
.super Lcom/avos/avoscloud/GetCallback;
.source "AVFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/AVFile;->withObjectIdInBackground(Ljava/lang/String;Lcom/avos/avoscloud/GetFileCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/avos/avoscloud/GetCallback",
        "<",
        "Lcom/avos/avoscloud/AVObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$cb:Lcom/avos/avoscloud/GetFileCallback;

.field final synthetic val$objectId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/GetFileCallback;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 198
    iput-object p1, p0, Lcom/avos/avoscloud/AVFile$1;->val$cb:Lcom/avos/avoscloud/GetFileCallback;

    iput-object p2, p0, Lcom/avos/avoscloud/AVFile$1;->val$objectId:Ljava/lang/String;

    invoke-direct {p0}, Lcom/avos/avoscloud/GetCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public done(Lcom/avos/avoscloud/AVObject;Lcom/avos/avoscloud/AVException;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 202
    if-eqz p2, :cond_1

    .line 203
    iget-object v0, p0, Lcom/avos/avoscloud/AVFile$1;->val$cb:Lcom/avos/avoscloud/GetFileCallback;

    invoke-virtual {v0, v5, p2}, Lcom/avos/avoscloud/GetFileCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    .line 215
    :cond_0
    :goto_0
    return-void

    .line 206
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/avos/avoscloud/AVObject;->getObjectId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 207
    #calls: Lcom/avos/avoscloud/AVFile;->createFileFromAVObject(Lcom/avos/avoscloud/AVObject;)Lcom/avos/avoscloud/AVFile;
    invoke-static {p1}, Lcom/avos/avoscloud/AVFile;->access$000(Lcom/avos/avoscloud/AVObject;)Lcom/avos/avoscloud/AVFile;

    move-result-object v0

    .line 208
    iget-object v1, p0, Lcom/avos/avoscloud/AVFile$1;->val$cb:Lcom/avos/avoscloud/GetFileCallback;

    if-eqz v1, :cond_0

    .line 209
    iget-object v1, p0, Lcom/avos/avoscloud/AVFile$1;->val$cb:Lcom/avos/avoscloud/GetFileCallback;

    invoke-virtual {v1, v0, v5}, Lcom/avos/avoscloud/GetFileCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    goto :goto_0

    .line 212
    :cond_2
    iget-object v0, p0, Lcom/avos/avoscloud/AVFile$1;->val$cb:Lcom/avos/avoscloud/GetFileCallback;

    new-instance v1, Lcom/avos/avoscloud/AVException;

    const/16 v2, 0x65

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not find file object by id:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/avos/avoscloud/AVFile$1;->val$objectId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/avos/avoscloud/AVException;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v5, v1}, Lcom/avos/avoscloud/GetFileCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    goto :goto_0
.end method
