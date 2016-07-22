.class public Lcom/avos/avoscloud/AVMessage;
.super Ljava/lang/Object;
.source "AVMessage.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/avos/avoscloud/AVMessage;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field fromPeerId:Ljava/lang/String;

.field groupId:Ljava/lang/String;

.field isRequestReceipt:Z

.field isTransient:Z

.field message:Ljava/lang/String;

.field receiptTimestamp:J

.field timestamp:J

.field private toPeerIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 145
    new-instance v0, Lcom/avos/avoscloud/AVMessage$1;

    invoke-direct {v0}, Lcom/avos/avoscloud/AVMessage$1;-><init>()V

    sput-object v0, Lcom/avos/avoscloud/AVMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 6
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/AVMessage;->message:Ljava/lang/String;

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/avos/avoscloud/AVMessage;->timestamp:J

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/AVMessage;->fromPeerId:Ljava/lang/String;

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/avos/avoscloud/AVMessage;->isTransient:Z

    .line 45
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/avos/avoscloud/AVMessage;->toPeerIds:Ljava/util/List;

    .line 46
    iget-object v0, p0, Lcom/avos/avoscloud/AVMessage;->toPeerIds:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/AVMessage;->groupId:Ljava/lang/String;

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/avos/avoscloud/AVMessage;->isRequestReceipt:Z

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/avos/avoscloud/AVMessage;->receiptTimestamp:J

    .line 50
    return-void

    :cond_0
    move v0, v2

    .line 44
    goto :goto_0

    :cond_1
    move v1, v2

    .line 48
    goto :goto_1
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/avos/avoscloud/AVMessage;->message:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/avos/avoscloud/AVMessage;->message:Ljava/lang/String;

    .line 31
    iput-object p2, p0, Lcom/avos/avoscloud/AVMessage;->toPeerIds:Ljava/util/List;

    .line 32
    iput-boolean p3, p0, Lcom/avos/avoscloud/AVMessage;->isTransient:Z

    .line 33
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/avos/avoscloud/AVMessage;->message:Ljava/lang/String;

    .line 37
    iput-boolean p2, p0, Lcom/avos/avoscloud/AVMessage;->isTransient:Z

    .line 38
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 130
    const/4 v0, 0x0

    return v0
.end method

.method public getFromPeerId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/avos/avoscloud/AVMessage;->fromPeerId:Ljava/lang/String;

    return-object v0
.end method

.method public getGroupId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/avos/avoscloud/AVMessage;->groupId:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/avos/avoscloud/AVMessage;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getReceiptTimestamp()J
    .locals 2

    .prologue
    .line 121
    iget-wide v0, p0, Lcom/avos/avoscloud/AVMessage;->receiptTimestamp:J

    return-wide v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 77
    iget-wide v0, p0, Lcom/avos/avoscloud/AVMessage;->timestamp:J

    return-wide v0
.end method

.method public getToPeerIds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 53
    iget-object v0, p0, Lcom/avos/avoscloud/AVMessage;->toPeerIds:Ljava/util/List;

    return-object v0
.end method

.method public isRequestReceipt()Z
    .locals 1

    .prologue
    .line 101
    iget-boolean v0, p0, Lcom/avos/avoscloud/AVMessage;->isRequestReceipt:Z

    return v0
.end method

.method public isTransient()Z
    .locals 1

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/avos/avoscloud/AVMessage;->isTransient:Z

    return v0
.end method

.method public setFromPeerId(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 97
    iput-object p1, p0, Lcom/avos/avoscloud/AVMessage;->fromPeerId:Ljava/lang/String;

    .line 98
    return-void
.end method

.method public setGroupId(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 65
    iput-object p1, p0, Lcom/avos/avoscloud/AVMessage;->groupId:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 73
    iput-object p1, p0, Lcom/avos/avoscloud/AVMessage;->message:Ljava/lang/String;

    .line 74
    return-void
.end method

.method protected setReceiptTimestamp(J)V
    .locals 1
    .parameter

    .prologue
    .line 125
    iput-wide p1, p0, Lcom/avos/avoscloud/AVMessage;->receiptTimestamp:J

    .line 126
    return-void
.end method

.method public setRequestReceipt(Z)V
    .locals 0
    .parameter

    .prologue
    .line 112
    iput-boolean p1, p0, Lcom/avos/avoscloud/AVMessage;->isRequestReceipt:Z

    .line 113
    return-void
.end method

.method public setTimestamp(J)V
    .locals 1
    .parameter

    .prologue
    .line 81
    iput-wide p1, p0, Lcom/avos/avoscloud/AVMessage;->timestamp:J

    .line 82
    return-void
.end method

.method public setToPeerIds(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 57
    iput-object p1, p0, Lcom/avos/avoscloud/AVMessage;->toPeerIds:Ljava/util/List;

    .line 58
    return-void
.end method

.method public setTransient(Z)V
    .locals 0
    .parameter

    .prologue
    .line 89
    iput-boolean p1, p0, Lcom/avos/avoscloud/AVMessage;->isTransient:Z

    .line 90
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 135
    iget-object v0, p0, Lcom/avos/avoscloud/AVMessage;->message:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 136
    iget-wide v4, p0, Lcom/avos/avoscloud/AVMessage;->timestamp:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 137
    iget-object v0, p0, Lcom/avos/avoscloud/AVMessage;->fromPeerId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 138
    iget-boolean v0, p0, Lcom/avos/avoscloud/AVMessage;->isTransient:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 139
    iget-object v0, p0, Lcom/avos/avoscloud/AVMessage;->toPeerIds:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 140
    iget-object v0, p0, Lcom/avos/avoscloud/AVMessage;->groupId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 141
    iget-boolean v0, p0, Lcom/avos/avoscloud/AVMessage;->isRequestReceipt:Z

    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 142
    iget-wide v0, p0, Lcom/avos/avoscloud/AVMessage;->receiptTimestamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 143
    return-void

    :cond_0
    move v0, v2

    .line 138
    goto :goto_0

    :cond_1
    move v1, v2

    .line 141
    goto :goto_1
.end method
