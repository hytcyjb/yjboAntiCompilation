.class public final Lcom/didi/im/db/IMDBHelper$SessionOrderColumns;
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
    name = "SessionOrderColumns"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final ORDERID:Ljava/lang/String; = "oid"

.field public static final SID:Ljava/lang/String; = "sid"

.field public static final TABLE_NAME:Ljava/lang/String; = "sessions_order"

.field public static final TITLE:Ljava/lang/String; = "title"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 101
    const-string v0, "content://com.diditaxi.psnger.im/sessions_order"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/didi/im/db/IMDBHelper$SessionOrderColumns;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
