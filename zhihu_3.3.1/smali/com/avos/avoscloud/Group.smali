.class public interface abstract Lcom/avos/avoscloud/Group;
.super Ljava/lang/Object;
.source "Group.java"

# interfaces
.implements Lcom/avos/avospush/session/AVMessageCourier;


# static fields
.field public static final AV_GROUP_INTENT_ACTION:Ljava/lang/String; = "com.avoscloud.group.action"

.field public static final AV_GROUP_INTENT_GROUP_ID:Ljava/lang/String; = "AV_GROUP_INTENT_GROUP_ID"

.field public static final AV_GROUP_INTENT_MESSAGE:Ljava/lang/String; = "AV_GROUP_INTENT_MESSAGE"

.field public static final AV_GROUP_INTENT_OPERATION_KEY:Ljava/lang/String; = "AV_GROUP_INTENT_OPERATION_KEY"

.field public static final AV_GROUP_INTENT_SESSIONID:Ljava/lang/String; = "AV_GROUP_INTENT_SESSIONID"

.field public static final AV_GROUP_INTENT_STATUS_KEY:Ljava/lang/String; = "AV_GROUP_INTENT_STATUS_KEY"

.field public static final AV_GROUP_INTENT_TARGET_PEERS:Ljava/lang/String; = "AV_GROUP_INTENT_TARGET_PEERS"

.field public static final AV_GROUP_OPERATION_INVITE:I = 0x271d

.field public static final AV_GROUP_OPERATION_JOIN:I = 0x271a

.field public static final AV_GROUP_OPERATION_KICK:I = 0x271c

.field public static final AV_GROUP_OPERATION_QUIT:I = 0x271e

.field public static final AV_GROUP_OPERATION_SEND_MESSAGE:I = 0x271b

.field public static final FIELD_GROUPID:Ljava/lang/String; = "groupId"

.field public static final FIELD_PEERID:Ljava/lang/String; = "peerId"

.field public static final FIELD_VALID:Ljava/lang/String; = "valid"

.field public static final GENE_PARAM_GROUPID:Ljava/lang/String; = "groupId"

.field public static final GENE_PARAM_SESSIONID:Ljava/lang/String; = "sessionId"

.field public static final GROUP_CMD:Ljava/lang/String; = "room"

.field public static final GROUP_PARAM_FROMPEERID:Ljava/lang/String; = "GROUP_PARAM_FROMPEERID"

.field public static final GROUP_PARAM_MSG:Ljava/lang/String; = "GROUP_PARAM_MSG"

.field public static final GROUP_PARAM_OPERATION:Ljava/lang/String; = "groupOperation"

.field public static final GROUP_PARAM_ROOMID_KEY:Ljava/lang/String; = "roomId"

.field public static final GROUP_PARAM_ROOM_PEERSID:Ljava/lang/String; = "roomPeerIds"

.field public static final GROUP_TABLE_NAME:Ljava/lang/String; = "_GroupMember"

.field public static final OP_GROUP_INVITED:Ljava/lang/String; = "invited"

.field public static final OP_GROUP_JOINED:Ljava/lang/String; = "joined"

.field public static final OP_GROUP_KICKED:Ljava/lang/String; = "kicked"

.field public static final OP_GROUP_MEMBER_JOIN:Ljava/lang/String; = "members-joined"

.field public static final OP_GROUP_MEMBER_LEFT:Ljava/lang/String; = "members-left"

.field public static final OP_GROUP_QUIT:Ljava/lang/String; = "left"

.field public static final OP_GROUP_REJECT:Ljava/lang/String; = "reject"

.field public static final SESSION_BY_PEER_ID:Ljava/lang/String; = "byPeerId"

.field public static final STATUS_GROUP_INVITED:I = 0x7532

.field public static final STATUS_GROUP_JOINED:I = 0x7531

.field public static final STATUS_GROUP_KICKED:I = 0x7533

.field public static final STATUS_GROUP_ONERROR:I = 0x7538

.field public static final STATUS_GROUP_ONINVITEDTOGROUP:I = 0x753d

.field public static final STATUS_GROUP_ONMEMBERJOIN:I = 0x753b

.field public static final STATUS_GROUP_ONMEMBERLEFT:I = 0x753c

.field public static final STATUS_GROUP_ONMESSAGE:I = 0x7535

.field public static final STATUS_GROUP_ONMESSAGEFAILURE:I = 0x753a

.field public static final STATUS_GROUP_ONMESSAGESENT:I = 0x7539

.field public static final STATUS_GROUP_QUIT:I = 0x7534

.field public static final STATUS_GROUP_REJECT:I = 0x7536

.field public static final error_empty_peeridList:Ljava/lang/String; = "Null id in group peerId list"


# virtual methods
.method public abstract getGroupId()Ljava/lang/String;
.end method

.method public abstract getHistoryMessageQuery()Lcom/avos/avoscloud/AVHistoryMessageQuery;
.end method

.method public abstract getMembers()Ljava/util/List;
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

.method public abstract getMembersInBackground(Lcom/avos/avoscloud/GroupMemberQueryCallback;)V
.end method

.method public abstract getSelfId()Ljava/lang/String;
.end method

.method public abstract inviteMember(Ljava/util/List;)V
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

.method public abstract join()V
.end method

.method public abstract kickMember(Ljava/util/List;)V
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

.method public abstract quit()V
.end method
