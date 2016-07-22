.class Lcom/avos/avoscloud/im/v2/AVIMMessageStorage$SQL;
.super Ljava/lang/Object;
.source "AVIMMessageStorage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SQL"
.end annotation


# static fields
.field static final ORDER_BY_TIMESTAMP_ASC_THEN_MESSAGE_ID_ASC:Ljava/lang/String; = "timestamp , message_id"

.field static final ORDER_BY_TIMESTAMP_DESC_THEN_MESSAGE_ID_DESC:Ljava/lang/String; = "timestamp desc, message_id desc"

.field static final TIMESTAMP_LESS_AND_CONVERSATION_ID:Ljava/lang/String; = "timestamp < ? and conversation_id = ? "

.field static final TIMESTAMP_LESS_OR_TIMESTAMP_EQUAL_BUT_MESSAGE_ID_LESS_AND_CONVERSATION_ID:Ljava/lang/String; = " ( timestamp < ? or (timestamp = ? and message_id < ? )) and conversation_id = ? "

.field static final TIMESTAMP_MORE_OR_TIMESTAMP_EQUAL_BUT_MESSAGE_ID_MORE_AND_CONVERSATION_ID:Ljava/lang/String; = " ( timestamp > ? or (timestamp = ? and message_id > ? )) and conversation_id = ? "


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
