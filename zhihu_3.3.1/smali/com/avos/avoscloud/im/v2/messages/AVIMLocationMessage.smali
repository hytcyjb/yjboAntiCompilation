.class public Lcom/avos/avoscloud/im/v2/messages/AVIMLocationMessage;
.super Lcom/avos/avoscloud/im/v2/AVIMTypedMessage;
.source "AVIMLocationMessage.java"


# annotations
.annotation runtime Lcom/avos/avoscloud/im/v2/AVIMMessageType;
    type = -0x5
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/avos/avoscloud/im/v2/messages/AVIMLocationMessage;",
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

.field location:Lcom/avos/avoscloud/AVGeoPoint;
    .annotation runtime Lcom/avos/avoscloud/im/v2/AVIMMessageField;
        name = "_lcloc"
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
    .line 52
    new-instance v0, Lcom/avos/avoscloud/im/v2/AVIMMessageCreator;

    const-class v1, Lcom/avos/avoscloud/im/v2/messages/AVIMLocationMessage;

    invoke-direct {v0, v1}, Lcom/avos/avoscloud/im/v2/AVIMMessageCreator;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/avos/avoscloud/im/v2/messages/AVIMLocationMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/avos/avoscloud/im/v2/AVIMTypedMessage;-><init>()V

    .line 18
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
    .line 37
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMLocationMessage;->attrs:Ljava/util/Map;

    return-object v0
.end method

.method public getLocation()Lcom/avos/avoscloud/AVGeoPoint;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMLocationMessage;->location:Lcom/avos/avoscloud/AVGeoPoint;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMLocationMessage;->text:Ljava/lang/String;

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
    .line 41
    iput-object p1, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMLocationMessage;->attrs:Ljava/util/Map;

    .line 42
    return-void
.end method

.method public setLocation(Lcom/avos/avoscloud/AVGeoPoint;)V
    .locals 0
    .parameter

    .prologue
    .line 49
    iput-object p1, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMLocationMessage;->location:Lcom/avos/avoscloud/AVGeoPoint;

    .line 50
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 33
    iput-object p1, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMLocationMessage;->text:Ljava/lang/String;

    .line 34
    return-void
.end method
