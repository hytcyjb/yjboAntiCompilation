.class public final Lcom/didi/im/db/IMDBHelper$UsersColumns;
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
    name = "UsersColumns"
.end annotation


# static fields
.field public static final AVATAR_URL:Ljava/lang/String; = "avatar_url"

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final ROLE:Ljava/lang/String; = "role"

.field public static final SID:Ljava/lang/String; = "sid"

.field public static final TABLE_NAME:Ljava/lang/String; = "users"

.field public static final UID:Ljava/lang/String; = "uid"

.field public static final UNAME:Ljava/lang/String; = "uname"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 76
    const-string v0, "content://com.diditaxi.psnger.im/users"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/didi/im/db/IMDBHelper$UsersColumns;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
