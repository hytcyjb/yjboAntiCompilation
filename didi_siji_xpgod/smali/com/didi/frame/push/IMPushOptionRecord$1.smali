.class Lcom/didi/frame/push/IMPushOptionRecord$1;
.super Ljava/lang/Object;
.source "IMPushOptionRecord.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/frame/push/IMPushOptionRecord;->parseGetMessageResponse([B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/didi/im/model/IMDTOChatRecordAndUser;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/frame/push/IMPushOptionRecord;


# direct methods
.method constructor <init>(Lcom/didi/frame/push/IMPushOptionRecord;)V
    .locals 0
    .parameter

    .prologue
    .line 132
    iput-object p1, p0, Lcom/didi/frame/push/IMPushOptionRecord$1;->this$0:Lcom/didi/frame/push/IMPushOptionRecord;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/didi/im/model/IMDTOChatRecordAndUser;Lcom/didi/im/model/IMDTOChatRecordAndUser;)I
    .locals 2
    .parameter "lhs"
    .parameter "rhs"

    .prologue
    .line 136
    invoke-virtual {p1}, Lcom/didi/im/model/IMDTOChatRecordAndUser;->getChatRecord()Lcom/didi/im/model/IMChatRecord;

    move-result-object v0

    iget v0, v0, Lcom/didi/im/model/IMChatRecord;->MID:I

    invoke-virtual {p2}, Lcom/didi/im/model/IMDTOChatRecordAndUser;->getChatRecord()Lcom/didi/im/model/IMChatRecord;

    move-result-object v1

    iget v1, v1, Lcom/didi/im/model/IMChatRecord;->MID:I

    if-ge v0, v1, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 132
    check-cast p1, Lcom/didi/im/model/IMDTOChatRecordAndUser;

    .end local p1
    check-cast p2, Lcom/didi/im/model/IMDTOChatRecordAndUser;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/didi/frame/push/IMPushOptionRecord$1;->compare(Lcom/didi/im/model/IMDTOChatRecordAndUser;Lcom/didi/im/model/IMDTOChatRecordAndUser;)I

    move-result v0

    return v0
.end method
