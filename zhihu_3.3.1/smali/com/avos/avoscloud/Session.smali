.class public interface abstract Lcom/avos/avoscloud/Session;
.super Ljava/lang/Object;
.source "Session.java"

# interfaces
.implements Lcom/avos/avospush/session/AVMessageCourier;


# static fields
.field public static final AV_SESSION_INTENT_ACTION:Ljava/lang/String; = "com.avoscloud.session.action"

.field public static final AV_SESSION_INTENT_DATA_KEY:Ljava/lang/String; = "AV_SESSION_INTENT_DATA_KEY"

.field public static final AV_SESSION_INTENT_OPERATION_KEY:Ljava/lang/String; = "AV_SESSION_INTENT_OPERATION_KEY"

.field public static final AV_SESSION_INTENT_SELFID_KEY:Ljava/lang/String; = "AV_SESSION_INTENT_SELFID_KEY"

.field public static final AV_SESSION_INTENT_STATUS_KEY:Ljava/lang/String; = "AV_SESSION_INTENT_STATUS_KEY"

.field public static final AV_SESSION_INTENT_THROWABLE_KEY:Ljava/lang/String; = "AV_SESSION_INTENT_THROWABLE_KEY"

.field public static final AV_SESSION_PREFERENCE_MESSAGE_KEY:Ljava/lang/String; = "AV_SESSION_PREFERENCE_MESSAGE_KEY"

.field public static final AV_SESSION_PREFERENCE_OFFLINE_KEY:Ljava/lang/String; = "AV_SESSION_PREFERENCE_OFFLINE_KEY"

.field public static final AV_SESSION_PREFERENCE_ONLINE_KEY:Ljava/lang/String; = "AV_SESSION_INTENT_SELFID_KEY"

.field public static final AV_SESSION_PREFERENCE_PEERIDS_KEY:Ljava/lang/String; = "AV_SESSION_PREFERENCE_PEERIDS_KEY"

.field public static final DEFAULT_SESSION_TIMEOUT_SECS:I = 0xf

.field public static final ERROR_INVALID_SESSION_ID:Ljava/lang/String; = "Null id in session id list."

.field public static final OPERATION_CLOSE_SESSION:I = 0x2715

.field public static final OPERATION_ONLINE_QUERY:I = 0x2716

.field public static final OPERATION_OPEN_SESSION:I = 0x2714

.field public static final OPERATION_SEND_MESSAGE:I = 0x2710

.field public static final OPERATION_SET_TIMEOUT:I = 0x2713

.field public static final OPERATION_UNKNOW:I = -0x1

.field public static final OPERATION_UNWATCH_PEERS:I = 0x2712

.field public static final OPERATION_WATCH_PEERS:I = 0x2711

.field public static final PARAM_SESSION_PEERIDS:Ljava/lang/String; = "PARAM_SESSION_PEERIDS"

.field public static final PARAM_SESSION_TAG:Ljava/lang/String; = "PARAM_SESSION_TAG"

.field public static final SESSION_PACKET_MAX_LENGTH:I = 0x1388

.field public static final SESSION_PEERID_MAX_SIZE:I = 0x64

.field public static final STATUS_SESSION_CLOSE:I = 0x4e2d

.field public static final STATUS_SESSION_ONERROR:I = 0x4e28

.field public static final STATUS_SESSION_ONMESSAGE:I = 0x4e23

.field public static final STATUS_SESSION_ONMESSAGEFAILURE:I = 0x4e25

.field public static final STATUS_SESSION_ONMESSAGESEND:I = 0x4e24

.field public static final STATUS_SESSION_ONMESSGEDELIVERED:I = 0x4e2c

.field public static final STATUS_SESSION_ONPEERSUNWATCHED:I = 0x4e2b

.field public static final STATUS_SESSION_ONPEERSWATCHED:I = 0x4e2a

.field public static final STATUS_SESSION_ONSTATUSOFFLINE:I = 0x4e27

.field public static final STATUS_SESSION_ONSTATUSONLINE:I = 0x4e26

.field public static final STATUS_SESSION_OPEN:I = 0x4e20

.field public static final STATUS_SESSION_PAUSE:I = 0x4e21

.field public static final STATUS_SESSION_QUERY_CALLBACK:I = 0x4e29

.field public static final STATUS_SESSION_RESUME:I = 0x4e22


# virtual methods
.method public abstract close()V
.end method

.method public abstract getAllPeers()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getGroup()Lcom/avos/avoscloud/Group;
.end method

.method public abstract getGroup(Ljava/lang/String;)Lcom/avos/avoscloud/Group;
.end method

.method public abstract getHistoryMessageQuery()Lcom/avos/avoscloud/AVHistoryMessageQuery;
.end method

.method public abstract getOnlinePeers()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSelfPeerId()Ljava/lang/String;
.end method

.method public abstract getSignatureFactory()Lcom/avos/avoscloud/SignatureFactory;
.end method

.method public abstract isOnline(Ljava/lang/String;)Z
.end method

.method public abstract isOpen()Z
.end method

.method public abstract isWatching(Ljava/lang/String;)Z
.end method

.method public abstract open(Ljava/lang/String;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract open(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract queryOnlinePeers(Ljava/util/List;Lcom/avos/avoscloud/OnlinePeerQueryListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/avos/avoscloud/OnlinePeerQueryListener;",
            ")V"
        }
    .end annotation
.end method

.method public abstract setMessageTimeout(I)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract unwatchPeers(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract watchPeers(Ljava/util/List;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation
.end method
