.class public Lcom/didi/beatles/im/BtsConversationAdapter$ChatRecordComparator;
.super Ljava/lang/Object;
.source "BtsConversationAdapter.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/beatles/im/BtsConversationAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ChatRecordComparator"
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
.field final synthetic this$0:Lcom/didi/beatles/im/BtsConversationAdapter;


# direct methods
.method public constructor <init>(Lcom/didi/beatles/im/BtsConversationAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 676
    iput-object p1, p0, Lcom/didi/beatles/im/BtsConversationAdapter$ChatRecordComparator;->this$0:Lcom/didi/beatles/im/BtsConversationAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/didi/im/model/IMDTOChatRecordAndUser;Lcom/didi/im/model/IMDTOChatRecordAndUser;)I
    .locals 2
    .parameter "o1"
    .parameter "o2"

    .prologue
    .line 679
    invoke-virtual {p1}, Lcom/didi/im/model/IMDTOChatRecordAndUser;->getChatRecord()Lcom/didi/im/model/IMChatRecord;

    move-result-object v0

    iget v0, v0, Lcom/didi/im/model/IMChatRecord;->MID:I

    invoke-virtual {p2}, Lcom/didi/im/model/IMDTOChatRecordAndUser;->getChatRecord()Lcom/didi/im/model/IMChatRecord;

    move-result-object v1

    iget v1, v1, Lcom/didi/im/model/IMChatRecord;->MID:I

    if-le v0, v1, :cond_0

    .line 680
    const/4 v0, 0x1

    .line 684
    :goto_0
    return v0

    .line 681
    :cond_0
    invoke-virtual {p1}, Lcom/didi/im/model/IMDTOChatRecordAndUser;->getChatRecord()Lcom/didi/im/model/IMChatRecord;

    move-result-object v0

    iget v0, v0, Lcom/didi/im/model/IMChatRecord;->MID:I

    invoke-virtual {p2}, Lcom/didi/im/model/IMDTOChatRecordAndUser;->getChatRecord()Lcom/didi/im/model/IMChatRecord;

    move-result-object v1

    iget v1, v1, Lcom/didi/im/model/IMChatRecord;->MID:I

    if-ge v0, v1, :cond_1

    .line 682
    const/4 v0, -0x1

    goto :goto_0

    .line 684
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 676
    check-cast p1, Lcom/didi/im/model/IMDTOChatRecordAndUser;

    .end local p1
    check-cast p2, Lcom/didi/im/model/IMDTOChatRecordAndUser;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/didi/beatles/im/BtsConversationAdapter$ChatRecordComparator;->compare(Lcom/didi/im/model/IMDTOChatRecordAndUser;Lcom/didi/im/model/IMDTOChatRecordAndUser;)I

    move-result v0

    return v0
.end method
