.class public Lcom/avos/avospush/session/ConversationControlPacket$ConversationResponseKey;
.super Ljava/lang/Object;
.source "ConversationControlPacket.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avos/avospush/session/ConversationControlPacket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConversationResponseKey"
.end annotation


# static fields
.field public static final APP_ERROR_CODE:Ljava/lang/String; = "appCode"

.field public static final CONVERSATION_ID:Ljava/lang/String; = "cid"

.field public static final CONVERSATION_MEMBERS:Ljava/lang/String; = "m"

.field public static final ERROR_CODE:Ljava/lang/String; = "code"

.field public static final ERROR_REASON:Ljava/lang/String; = "reason"

.field public static final MEMBER_COUNT:Ljava/lang/String; = "count"

.field public static final MESSAGE_QUERY_RESULT:Ljava/lang/String; = "logs"

.field public static final OPERATION:Ljava/lang/String; = "op"

.field public static final OPERATIOR:Ljava/lang/String; = "initBy"

.field public static final QUERY_RESULT:Ljava/lang/String; = "results"

.field public static final REQUEST_ID:Ljava/lang/String; = "i"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
