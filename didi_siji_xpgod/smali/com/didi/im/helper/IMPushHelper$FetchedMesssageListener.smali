.class public interface abstract Lcom/didi/im/helper/IMPushHelper$FetchedMesssageListener;
.super Ljava/lang/Object;
.source "IMPushHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/im/helper/IMPushHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "FetchedMesssageListener"
.end annotation


# virtual methods
.method public abstract onFetchedMessageReceived(ZLjava/util/List;J)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List",
            "<",
            "Lcom/didi/im/model/IMDTOChatRecordAndUser;",
            ">;J)V"
        }
    .end annotation
.end method
