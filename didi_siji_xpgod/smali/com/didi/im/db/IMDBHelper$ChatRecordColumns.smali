.class public final Lcom/didi/im/db/IMDBHelper$ChatRecordColumns;
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
    name = "ChatRecordColumns"
.end annotation


# static fields
.field public static final CONTENT:Ljava/lang/String; = "content"

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final CREATE_TIME:Ljava/lang/String; = "create_time"

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "mid asc"

.field public static final MID:Ljava/lang/String; = "mid"

.field public static final OID:Ljava/lang/String; = "oid"

.field public static final ORIGINAL_PIC:Ljava/lang/String; = "original_pic"

.field public static final SID:Ljava/lang/String; = "sid"

.field public static final STATUS:Ljava/lang/String; = "status"

.field public static final TABLE_NAME:Ljava/lang/String; = "chat_record"

.field public static final TYPE:Ljava/lang/String; = "type"

.field public static final UID:Ljava/lang/String; = "uid"

.field public static final VOICE_STATUS:Ljava/lang/String; = "voice_status"

.field public static final VOICE_TIME:Ljava/lang/String; = "voice_time"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 122
    const-string v0, "content://com.diditaxi.psnger.im/chat_record"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/didi/im/db/IMDBHelper$ChatRecordColumns;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
