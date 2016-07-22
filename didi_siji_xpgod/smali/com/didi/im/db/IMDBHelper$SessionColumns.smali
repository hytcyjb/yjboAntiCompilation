.class public final Lcom/didi/im/db/IMDBHelper$SessionColumns;
.super Ljava/lang/Object;
.source "IMDBHelper.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/im/db/IMDBHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SessionColumns"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final CREATE_TIME:Ljava/lang/String; = "create_time"

.field public static final DRAFT:Ljava/lang/String; = "draft"

.field public static final MAX_SERVICE_MID:Ljava/lang/String; = "mid"

.field public static final ROOM_NAME:Ljava/lang/String; = "room_name"

.field public static final SID:Ljava/lang/String; = "sid"

.field public static final SUMMARY:Ljava/lang/String; = "summary"

.field public static final TABLE_NAME:Ljava/lang/String; = "sessions"

.field public static final TITLE:Ljava/lang/String; = "title"

.field public static final TYPE:Ljava/lang/String; = "type"

.field public static final UNREAD_CNT:Ljava/lang/String; = "unread_cnt"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 93
    const-string v0, "content://com.diditaxi.psnger.im/sessions"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/didi/im/db/IMDBHelper$SessionColumns;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
