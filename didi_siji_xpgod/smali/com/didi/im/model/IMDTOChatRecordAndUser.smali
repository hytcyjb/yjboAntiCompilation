.class public Lcom/didi/im/model/IMDTOChatRecordAndUser;
.super Ljava/lang/Object;
.source "IMDTOChatRecordAndUser.java"


# instance fields
.field private chatRecord:Lcom/didi/im/model/IMChatRecord;

.field private user:Lcom/didi/im/model/IMUser;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getChatRecord()Lcom/didi/im/model/IMChatRecord;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/didi/im/model/IMDTOChatRecordAndUser;->chatRecord:Lcom/didi/im/model/IMChatRecord;

    return-object v0
.end method

.method public getUser()Lcom/didi/im/model/IMUser;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/didi/im/model/IMDTOChatRecordAndUser;->user:Lcom/didi/im/model/IMUser;

    return-object v0
.end method

.method public setChatRecord(Lcom/didi/im/model/IMChatRecord;)V
    .locals 0
    .parameter "chatRecord"

    .prologue
    .line 26
    iput-object p1, p0, Lcom/didi/im/model/IMDTOChatRecordAndUser;->chatRecord:Lcom/didi/im/model/IMChatRecord;

    .line 27
    return-void
.end method

.method public setUser(Lcom/didi/im/model/IMUser;)V
    .locals 0
    .parameter "user"

    .prologue
    .line 41
    iput-object p1, p0, Lcom/didi/im/model/IMDTOChatRecordAndUser;->user:Lcom/didi/im/model/IMUser;

    .line 42
    return-void
.end method
