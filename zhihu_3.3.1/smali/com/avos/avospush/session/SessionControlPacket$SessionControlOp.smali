.class public Lcom/avos/avospush/session/SessionControlPacket$SessionControlOp;
.super Ljava/lang/Object;
.source "SessionControlPacket.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avos/avospush/session/SessionControlPacket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SessionControlOp"
.end annotation


# static fields
.field public static final ADD:Ljava/lang/String; = "add"

.field public static final ADDED:Ljava/lang/String; = "added"

.field public static final CLOSE:Ljava/lang/String; = "close"

.field public static final CLOSED:Ljava/lang/String; = "closed"

.field public static final OPEN:Ljava/lang/String; = "open"

.field public static final OPENED:Ljava/lang/String; = "opened"

.field public static final QUERY:Ljava/lang/String; = "query"

.field public static final QUERY_RESULT:Ljava/lang/String; = "query-result"

.field public static final REMOVE:Ljava/lang/String; = "remove"

.field public static final REMOVED:Ljava/lang/String; = "removed"

.field public static final SESSION_TOKEN:Ljava/lang/String; = "st"

.field public static final SESSION_TOKEN_TTL:Ljava/lang/String; = "stTtl"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
