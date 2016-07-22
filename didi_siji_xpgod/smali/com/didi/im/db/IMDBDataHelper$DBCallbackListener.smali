.class public interface abstract Lcom/didi/im/db/IMDBDataHelper$DBCallbackListener;
.super Ljava/lang/Object;
.source "IMDBDataHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/im/db/IMDBDataHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DBCallbackListener"
.end annotation


# virtual methods
.method public abstract failed(Ljava/lang/Exception;)V
.end method

.method public abstract successed([Landroid/content/ContentProviderResult;Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/content/ContentProviderResult;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/didi/im/model/IMDTOChatRecordAndUser;",
            ">;)V"
        }
    .end annotation
.end method
