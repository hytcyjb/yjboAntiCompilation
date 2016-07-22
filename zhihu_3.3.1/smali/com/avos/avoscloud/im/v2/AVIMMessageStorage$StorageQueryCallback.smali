.class public interface abstract Lcom/avos/avoscloud/im/v2/AVIMMessageStorage$StorageQueryCallback;
.super Ljava/lang/Object;
.source "AVIMMessageStorage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "StorageQueryCallback"
.end annotation


# virtual methods
.method public abstract done(Ljava/util/List;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/avos/avoscloud/im/v2/AVIMMessage;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation
.end method
