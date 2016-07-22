.class public Lcom/avos/avoscloud/im/v2/AVIMMessage;
.super Ljava/lang/Object;
.source "AVIMMessage.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageIOType;,
        Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;
    }
.end annotation


# static fields
.field public static final CREATOR:Lcom/avos/avoscloud/im/v2/AVIMMessageCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/avos/avoscloud/im/v2/AVIMMessageCreator",
            "<",
            "Lcom/avos/avoscloud/im/v2/AVIMMessage;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field content:Ljava/lang/String;

.field conversationId:Ljava/lang/String;

.field from:Ljava/lang/String;

.field ioType:Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageIOType;

.field messageId:Ljava/lang/String;

.field receiptTimestamp:J

.field status:Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;

.field timestamp:J

.field uniqueToken:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 239
    new-instance v0, Lcom/avos/avoscloud/im/v2/AVIMMessageCreator;

    const-class v1, Lcom/avos/avoscloud/im/v2/AVIMMessage;

    invoke-direct {v0, v1}, Lcom/avos/avoscloud/im/v2/AVIMMessageCreator;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/avos/avoscloud/im/v2/AVIMMessage;->CREATOR:Lcom/avos/avoscloud/im/v2/AVIMMessageCreator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 13
    invoke-direct {p0, v0, v0}, Lcom/avos/avoscloud/im/v2/AVIMMessage;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter

    .prologue
    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 206
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMMessage;->conversationId:Ljava/lang/String;

    .line 207
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->setContent(Ljava/lang/String;)V

    .line 208
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->setFrom(Ljava/lang/String;)V

    .line 209
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->setTimestamp(J)V

    .line 210
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->setReceiptTimestamp(J)V

    .line 211
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->setMessageId(Ljava/lang/String;)V

    .line 212
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;->getMessageStatus(I)Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMMessage;->status:Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;

    .line 213
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageIOType;->getMessageIOType(I)Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageIOType;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMMessage;->ioType:Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageIOType;

    .line 214
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMMessage;->uniqueToken:Ljava/lang/String;

    .line 215
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->initMessage(Landroid/os/Parcel;)V

    .line 216
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter
    .parameter

    .prologue
    const-wide/16 v4, 0x0

    .line 17
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v6, v4

    invoke-direct/range {v1 .. v7}, Lcom/avos/avoscloud/im/v2/AVIMMessage;-><init>(Ljava/lang/String;Ljava/lang/String;JJ)V

    .line 18
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JJ)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    sget-object v0, Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageIOType;->AVIMMessageIOTypeOut:Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageIOType;

    iput-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMMessage;->ioType:Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageIOType;

    .line 22
    sget-object v0, Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;->AVIMMessageStatusNone:Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;

    iput-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMMessage;->status:Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;

    .line 23
    iput-object p1, p0, Lcom/avos/avoscloud/im/v2/AVIMMessage;->conversationId:Ljava/lang/String;

    .line 24
    iput-object p2, p0, Lcom/avos/avoscloud/im/v2/AVIMMessage;->from:Ljava/lang/String;

    .line 25
    iput-wide p3, p0, Lcom/avos/avoscloud/im/v2/AVIMMessage;->timestamp:J

    .line 26
    iput-wide p5, p0, Lcom/avos/avoscloud/im/v2/AVIMMessage;->receiptTimestamp:J

    .line 27
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 176
    const/4 v0, 0x0

    return v0
.end method

.method protected declared-synchronized genUniqueToken()V
    .locals 1

    .prologue
    .line 229
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMMessage;->uniqueToken:Ljava/lang/String;

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 230
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMMessage;->uniqueToken:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 232
    :cond_0
    monitor-exit p0

    return-void

    .line 229
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMMessage;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getConversationId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMMessage;->conversationId:Ljava/lang/String;

    return-object v0
.end method

.method public getFrom()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMMessage;->from:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageIOType()Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageIOType;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMMessage;->ioType:Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageIOType;

    return-object v0
.end method

.method public getMessageId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMMessage;->messageId:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageStatus()Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMMessage;->status:Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;

    return-object v0
.end method

.method public getReceiptTimestamp()J
    .locals 2

    .prologue
    .line 110
    iget-wide v0, p0, Lcom/avos/avoscloud/im/v2/AVIMMessage;->receiptTimestamp:J

    return-wide v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 95
    iget-wide v0, p0, Lcom/avos/avoscloud/im/v2/AVIMMessage;->timestamp:J

    return-wide v0
.end method

.method protected getUniqueToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMMessage;->uniqueToken:Ljava/lang/String;

    return-object v0
.end method

.method protected initMessage(Landroid/os/Parcel;)V
    .locals 0
    .parameter

    .prologue
    .line 226
    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 67
    iput-object p1, p0, Lcom/avos/avoscloud/im/v2/AVIMMessage;->content:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public setConversationId(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 47
    iput-object p1, p0, Lcom/avos/avoscloud/im/v2/AVIMMessage;->conversationId:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public setFrom(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 86
    iput-object p1, p0, Lcom/avos/avoscloud/im/v2/AVIMMessage;->from:Ljava/lang/String;

    .line 87
    return-void
.end method

.method public setMessageIOType(Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageIOType;)V
    .locals 0
    .parameter

    .prologue
    .line 151
    iput-object p1, p0, Lcom/avos/avoscloud/im/v2/AVIMMessage;->ioType:Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageIOType;

    .line 152
    return-void
.end method

.method public setMessageId(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 171
    iput-object p1, p0, Lcom/avos/avoscloud/im/v2/AVIMMessage;->messageId:Ljava/lang/String;

    .line 172
    return-void
.end method

.method public setMessageStatus(Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;)V
    .locals 0
    .parameter

    .prologue
    .line 123
    iput-object p1, p0, Lcom/avos/avoscloud/im/v2/AVIMMessage;->status:Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;

    .line 124
    return-void
.end method

.method public setReceiptTimestamp(J)V
    .locals 1
    .parameter

    .prologue
    .line 114
    iput-wide p1, p0, Lcom/avos/avoscloud/im/v2/AVIMMessage;->receiptTimestamp:J

    .line 115
    return-void
.end method

.method public setTimestamp(J)V
    .locals 1
    .parameter

    .prologue
    .line 99
    iput-wide p1, p0, Lcom/avos/avoscloud/im/v2/AVIMMessage;->timestamp:J

    .line 100
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 193
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMMessage;->conversationId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 194
    invoke-virtual {p0}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 195
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMMessage;->from:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 196
    iget-wide v0, p0, Lcom/avos/avoscloud/im/v2/AVIMMessage;->timestamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 197
    iget-wide v0, p0, Lcom/avos/avoscloud/im/v2/AVIMMessage;->receiptTimestamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 198
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMMessage;->messageId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 199
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMMessage;->status:Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;

    invoke-virtual {v0}, Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;->getStatusCode()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 200
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMMessage;->ioType:Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageIOType;

    invoke-virtual {v0}, Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageIOType;->getIOType()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 201
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMMessage;->uniqueToken:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 202
    return-void
.end method
