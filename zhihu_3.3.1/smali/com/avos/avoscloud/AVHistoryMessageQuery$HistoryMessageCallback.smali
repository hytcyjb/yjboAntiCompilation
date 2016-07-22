.class public interface abstract Lcom/avos/avoscloud/AVHistoryMessageQuery$HistoryMessageCallback;
.super Ljava/lang/Object;
.source "AVHistoryMessageQuery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avos/avoscloud/AVHistoryMessageQuery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "HistoryMessageCallback"
.end annotation


# virtual methods
.method public abstract done(Ljava/util/List;Lcom/avos/avoscloud/AVException;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/avos/avoscloud/AVHistoryMessage;",
            ">;",
            "Lcom/avos/avoscloud/AVException;",
            ")V"
        }
    .end annotation
.end method
