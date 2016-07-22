.class public Lcom/avos/avoscloud/im/v2/AVIMMessageCreator;
.super Ljava/lang/Object;
.source "AVIMMessageCreator.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/avos/avoscloud/im/v2/AVIMMessage;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field mClazz:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/avos/avoscloud/im/v2/AVIMMessageCreator;->mClazz:Ljava/lang/Class;

    .line 17
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/avos/avoscloud/im/v2/AVIMMessage;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 21
    new-instance v0, Lcom/avos/avoscloud/im/v2/AVIMMessage;

    invoke-direct {v0, p1}, Lcom/avos/avoscloud/im/v2/AVIMMessage;-><init>(Landroid/os/Parcel;)V

    .line 22
    invoke-static {v0}, Lcom/avos/avoscloud/im/v2/AVIMMessageManager;->parseTypedMessage(Lcom/avos/avoscloud/im/v2/AVIMMessage;)Lcom/avos/avoscloud/im/v2/AVIMMessage;

    move-result-object v0

    .line 23
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 11
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/im/v2/AVIMMessageCreator;->createFromParcel(Landroid/os/Parcel;)Lcom/avos/avoscloud/im/v2/AVIMMessage;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/avos/avoscloud/im/v2/AVIMMessage;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[TT;"
        }
    .end annotation

    .prologue
    .line 28
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMMessageCreator;->mClazz:Ljava/lang/Class;

    invoke-static {v0, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/avos/avoscloud/im/v2/AVIMMessage;

    check-cast v0, [Lcom/avos/avoscloud/im/v2/AVIMMessage;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 11
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/im/v2/AVIMMessageCreator;->newArray(I)[Lcom/avos/avoscloud/im/v2/AVIMMessage;

    move-result-object v0

    return-object v0
.end method
