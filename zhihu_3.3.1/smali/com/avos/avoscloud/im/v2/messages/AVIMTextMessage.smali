.class public Lcom/avos/avoscloud/im/v2/messages/AVIMTextMessage;
.super Lcom/avos/avoscloud/im/v2/AVIMTypedMessage;
.source "AVIMTextMessage.java"


# annotations
.annotation runtime Lcom/avos/avoscloud/im/v2/AVIMMessageType;
    type = -0x1
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/avos/avoscloud/im/v2/messages/AVIMTextMessage;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field attrs:Ljava/util/Map;
    .annotation runtime Lcom/avos/avoscloud/im/v2/AVIMMessageField;
        name = "_lcattrs"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field text:Ljava/lang/String;
    .annotation runtime Lcom/avos/avoscloud/im/v2/AVIMMessageField;
        name = "_lctext"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 38
    new-instance v0, Lcom/avos/avoscloud/im/v2/AVIMMessageCreator;

    const-class v1, Lcom/avos/avoscloud/im/v2/messages/AVIMTextMessage;

    invoke-direct {v0, v1}, Lcom/avos/avoscloud/im/v2/AVIMMessageCreator;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/avos/avoscloud/im/v2/messages/AVIMTextMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/avos/avoscloud/im/v2/AVIMTypedMessage;-><init>()V

    .line 15
    return-void
.end method


# virtual methods
.method public getAttrs()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 31
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMTextMessage;->attrs:Ljava/util/Map;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMTextMessage;->text:Ljava/lang/String;

    return-object v0
.end method

.method public setAttrs(Ljava/util/Map;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 35
    iput-object p1, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMTextMessage;->attrs:Ljava/util/Map;

    .line 36
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 27
    iput-object p1, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMTextMessage;->text:Ljava/lang/String;

    .line 28
    return-void
.end method
