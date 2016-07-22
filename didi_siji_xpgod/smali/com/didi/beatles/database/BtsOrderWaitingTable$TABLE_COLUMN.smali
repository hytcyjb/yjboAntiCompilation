.class public Lcom/didi/beatles/database/BtsOrderWaitingTable$TABLE_COLUMN;
.super Ljava/lang/Object;
.source "BtsOrderWaitingTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/beatles/database/BtsOrderWaitingTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TABLE_COLUMN"
.end annotation


# static fields
.field public static final COL_BASE_ID:Ljava/lang/String; = "_id"

.field public static final COL_CREATE_TIME:Ljava/lang/String; = "create_time"

.field public static final COL_ORDER_ID:Ljava/lang/String; = "order_id"

.field public static final COL_STATUS:Ljava/lang/String; = "status"

.field public static final COL_TIMEOUT:Ljava/lang/String; = "time_out"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
