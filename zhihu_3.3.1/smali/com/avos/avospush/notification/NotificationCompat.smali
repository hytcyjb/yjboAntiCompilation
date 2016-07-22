.class public Lcom/avos/avospush/notification/NotificationCompat;
.super Ljava/lang/Object;
.source "NotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/avos/avospush/notification/NotificationCompat$Action;,
        Lcom/avos/avospush/notification/NotificationCompat$InboxStyle;,
        Lcom/avos/avospush/notification/NotificationCompat$BigTextStyle;,
        Lcom/avos/avospush/notification/NotificationCompat$BigPictureStyle;,
        Lcom/avos/avospush/notification/NotificationCompat$Style;,
        Lcom/avos/avospush/notification/NotificationCompat$Builder;,
        Lcom/avos/avospush/notification/NotificationCompat$NotificationCompatImplJellybean;,
        Lcom/avos/avospush/notification/NotificationCompat$NotificationCompatImplIceCreamSandwich;,
        Lcom/avos/avospush/notification/NotificationCompat$NotificationCompatImplHoneycomb;,
        Lcom/avos/avospush/notification/NotificationCompat$NotificationCompatImplBase;,
        Lcom/avos/avospush/notification/NotificationCompat$NotificationCompatImpl;
    }
.end annotation


# static fields
.field public static final FLAG_HIGH_PRIORITY:I = 0x80

.field private static final IMPL:Lcom/avos/avospush/notification/NotificationCompat$NotificationCompatImpl; = null

.field public static final PRIORITY_DEFAULT:I = 0x0

.field public static final PRIORITY_HIGH:I = 0x1

.field public static final PRIORITY_LOW:I = -0x1

.field public static final PRIORITY_MAX:I = 0x2

.field public static final PRIORITY_MIN:I = -0x2


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 135
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 136
    new-instance v0, Lcom/avos/avospush/notification/NotificationCompat$NotificationCompatImplJellybean;

    invoke-direct {v0}, Lcom/avos/avospush/notification/NotificationCompat$NotificationCompatImplJellybean;-><init>()V

    sput-object v0, Lcom/avos/avospush/notification/NotificationCompat;->IMPL:Lcom/avos/avospush/notification/NotificationCompat$NotificationCompatImpl;

    .line 144
    :goto_0
    return-void

    .line 137
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_1

    .line 138
    new-instance v0, Lcom/avos/avospush/notification/NotificationCompat$NotificationCompatImplIceCreamSandwich;

    invoke-direct {v0}, Lcom/avos/avospush/notification/NotificationCompat$NotificationCompatImplIceCreamSandwich;-><init>()V

    sput-object v0, Lcom/avos/avospush/notification/NotificationCompat;->IMPL:Lcom/avos/avospush/notification/NotificationCompat$NotificationCompatImpl;

    goto :goto_0

    .line 139
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_2

    .line 140
    new-instance v0, Lcom/avos/avospush/notification/NotificationCompat$NotificationCompatImplHoneycomb;

    invoke-direct {v0}, Lcom/avos/avospush/notification/NotificationCompat$NotificationCompatImplHoneycomb;-><init>()V

    sput-object v0, Lcom/avos/avospush/notification/NotificationCompat;->IMPL:Lcom/avos/avospush/notification/NotificationCompat$NotificationCompatImpl;

    goto :goto_0

    .line 142
    :cond_2
    new-instance v0, Lcom/avos/avospush/notification/NotificationCompat$NotificationCompatImplBase;

    invoke-direct {v0}, Lcom/avos/avospush/notification/NotificationCompat$NotificationCompatImplBase;-><init>()V

    sput-object v0, Lcom/avos/avospush/notification/NotificationCompat;->IMPL:Lcom/avos/avospush/notification/NotificationCompat$NotificationCompatImpl;

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 778
    return-void
.end method

.method static synthetic access$000()Lcom/avos/avospush/notification/NotificationCompat$NotificationCompatImpl;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/avos/avospush/notification/NotificationCompat;->IMPL:Lcom/avos/avospush/notification/NotificationCompat$NotificationCompatImpl;

    return-object v0
.end method
