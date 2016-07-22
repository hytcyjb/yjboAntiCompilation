.class public Lcom/avos/avospush/session/ConversationControlPacket$ConversationControlOp;
.super Ljava/lang/Object;
.source "ConversationControlPacket.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avos/avospush/session/ConversationControlPacket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConversationControlOp"
.end annotation


# static fields
.field public static final ADD:Ljava/lang/String; = "add"

.field public static final ADDED:Ljava/lang/String; = "added"

.field public static final COUNT:Ljava/lang/String; = "count"

.field public static final JOINED:Ljava/lang/String; = "joined"

.field public static final LEFT:Ljava/lang/String; = "left"

.field public static final MEMBER_COUNT_QUERY_RESULT:Ljava/lang/String; = "result"

.field public static final MEMBER_JOINED:Ljava/lang/String; = "members-joined"

.field public static final MEMBER_LEFTED:Ljava/lang/String; = "members-left"

.field public static final MUTE:Ljava/lang/String; = "mute"

.field public static final QUERY:Ljava/lang/String; = "query"

.field public static final QUERY_RESULT:Ljava/lang/String; = "results"

.field public static final REMOVE:Ljava/lang/String; = "remove"

.field public static final REMOVED:Ljava/lang/String; = "removed"

.field public static final START:Ljava/lang/String; = "start"

.field public static final STARTED:Ljava/lang/String; = "started"

.field public static final UNMUTE:Ljava/lang/String; = "unmute"

.field public static final UPDATE:Ljava/lang/String; = "update"

.field public static final UPDATED:Ljava/lang/String; = "updated"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
