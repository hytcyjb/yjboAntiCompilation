.class final Lcom/avos/avoscloud/im/v2/AVIMMessageStorage$1;
.super Ljava/lang/Object;
.source "AVIMMessageStorage.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/avos/avoscloud/im/v2/AVIMMessage;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 525
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/avos/avoscloud/im/v2/AVIMMessage;Lcom/avos/avoscloud/im/v2/AVIMMessage;)I
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 528
    invoke-virtual {p1}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->getTimestamp()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->getTimestamp()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 529
    const/4 v0, -0x1

    .line 533
    :goto_0
    return v0

    .line 530
    :cond_0
    invoke-virtual {p1}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->getTimestamp()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->getTimestamp()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 531
    const/4 v0, 0x1

    goto :goto_0

    .line 533
    :cond_1
    iget-object v0, p1, Lcom/avos/avoscloud/im/v2/AVIMMessage;->messageId:Ljava/lang/String;

    iget-object v1, p2, Lcom/avos/avoscloud/im/v2/AVIMMessage;->messageId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 525
    check-cast p1, Lcom/avos/avoscloud/im/v2/AVIMMessage;

    check-cast p2, Lcom/avos/avoscloud/im/v2/AVIMMessage;

    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage$1;->compare(Lcom/avos/avoscloud/im/v2/AVIMMessage;Lcom/avos/avoscloud/im/v2/AVIMMessage;)I

    move-result v0

    return v0
.end method
