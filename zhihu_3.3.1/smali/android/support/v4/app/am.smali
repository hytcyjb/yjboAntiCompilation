.class public final Landroid/support/v4/app/am;
.super Ljava/lang/Object;
.source "NotificationManagerCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/app/am$a;,
        Landroid/support/v4/app/am$f;,
        Landroid/support/v4/app/am$i;,
        Landroid/support/v4/app/am$g;,
        Landroid/support/v4/app/am$h;,
        Landroid/support/v4/app/am$e;,
        Landroid/support/v4/app/am$d;,
        Landroid/support/v4/app/am$c;,
        Landroid/support/v4/app/am$b;
    }
.end annotation


# static fields
.field private static final a:I

.field private static final b:Ljava/lang/Object;

.field private static c:Ljava/lang/String;

.field private static d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final g:Ljava/lang/Object;

.field private static h:Landroid/support/v4/app/am$h;

.field private static final i:Landroid/support/v4/app/am$b;


# instance fields
.field private final e:Landroid/content/Context;

.field private final f:Landroid/app/NotificationManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 88
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/support/v4/app/am;->b:Ljava/lang/Object;

    .line 92
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Landroid/support/v4/app/am;->d:Ljava/util/Set;

    .line 97
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/support/v4/app/am;->g:Ljava/lang/Object;

    .line 165
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 166
    new-instance v0, Landroid/support/v4/app/am$e;

    invoke-direct {v0}, Landroid/support/v4/app/am$e;-><init>()V

    sput-object v0, Landroid/support/v4/app/am;->i:Landroid/support/v4/app/am$b;

    .line 172
    :goto_0
    sget-object v0, Landroid/support/v4/app/am;->i:Landroid/support/v4/app/am$b;

    invoke-interface {v0}, Landroid/support/v4/app/am$b;->a()I

    move-result v0

    sput v0, Landroid/support/v4/app/am;->a:I

    .line 173
    return-void

    .line 167
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_1

    .line 168
    new-instance v0, Landroid/support/v4/app/am$d;

    invoke-direct {v0}, Landroid/support/v4/app/am$d;-><init>()V

    sput-object v0, Landroid/support/v4/app/am;->i:Landroid/support/v4/app/am$b;

    goto :goto_0

    .line 170
    :cond_1
    new-instance v0, Landroid/support/v4/app/am$c;

    invoke-direct {v0}, Landroid/support/v4/app/am$c;-><init>()V

    sput-object v0, Landroid/support/v4/app/am;->i:Landroid/support/v4/app/am$b;

    goto :goto_0
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    iput-object p1, p0, Landroid/support/v4/app/am;->e:Landroid/content/Context;

    .line 108
    iget-object v0, p0, Landroid/support/v4/app/am;->e:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Landroid/support/v4/app/am;->f:Landroid/app/NotificationManager;

    .line 110
    return-void
.end method

.method static synthetic a()I
    .locals 1

    .prologue
    .line 54
    sget v0, Landroid/support/v4/app/am;->a:I

    return v0
.end method

.method public static a(Landroid/content/Context;)Landroid/support/v4/app/am;
    .locals 1
    .parameter

    .prologue
    .line 103
    new-instance v0, Landroid/support/v4/app/am;

    invoke-direct {v0, p0}, Landroid/support/v4/app/am;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private a(Landroid/support/v4/app/am$i;)V
    .locals 3
    .parameter

    .prologue
    .line 267
    sget-object v1, Landroid/support/v4/app/am;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 268
    :try_start_0
    sget-object v0, Landroid/support/v4/app/am;->h:Landroid/support/v4/app/am$h;

    if-nez v0, :cond_0

    .line 269
    new-instance v0, Landroid/support/v4/app/am$h;

    iget-object v2, p0, Landroid/support/v4/app/am;->e:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/support/v4/app/am$h;-><init>(Landroid/content/Context;)V

    sput-object v0, Landroid/support/v4/app/am;->h:Landroid/support/v4/app/am$h;

    .line 271
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 272
    sget-object v0, Landroid/support/v4/app/am;->h:Landroid/support/v4/app/am$h;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/am$h;->a(Landroid/support/v4/app/am$i;)V

    .line 273
    return-void

    .line 271
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private static a(Landroid/app/Notification;)Z
    .locals 2
    .parameter

    .prologue
    .line 259
    invoke-static {p0}, Landroid/support/v4/app/ad;->a(Landroid/app/Notification;)Landroid/os/Bundle;

    move-result-object v0

    .line 260
    if-eqz v0, :cond_0

    const-string v1, "android.support.useSideChannel"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)Ljava/util/Set;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 233
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "enabled_notification_listeners"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 237
    if-eqz v1, :cond_2

    sget-object v0, Landroid/support/v4/app/am;->c:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 239
    const-string v0, ":"

    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 240
    new-instance v3, Ljava/util/HashSet;

    array-length v0, v2

    invoke-direct {v3, v0}, Ljava/util/HashSet;-><init>(I)V

    .line 241
    array-length v4, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v4, :cond_1

    aget-object v5, v2, v0

    .line 242
    invoke-static {v5}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v5

    .line 243
    if-eqz v5, :cond_0

    .line 244
    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 241
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 247
    :cond_1
    sget-object v2, Landroid/support/v4/app/am;->b:Ljava/lang/Object;

    monitor-enter v2

    .line 248
    :try_start_0
    sput-object v3, Landroid/support/v4/app/am;->d:Ljava/util/Set;

    .line 249
    sput-object v1, Landroid/support/v4/app/am;->c:Ljava/lang/String;

    .line 250
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 252
    :cond_2
    sget-object v0, Landroid/support/v4/app/am;->d:Ljava/util/Set;

    return-object v0

    .line 250
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public a(I)V
    .locals 1
    .parameter

    .prologue
    .line 180
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/support/v4/app/am;->a(Ljava/lang/String;I)V

    .line 181
    return-void
.end method

.method public a(ILandroid/app/Notification;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 209
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Landroid/support/v4/app/am;->a(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 210
    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 189
    sget-object v0, Landroid/support/v4/app/am;->i:Landroid/support/v4/app/am$b;

    iget-object v1, p0, Landroid/support/v4/app/am;->f:Landroid/app/NotificationManager;

    invoke-interface {v0, v1, p1, p2}, Landroid/support/v4/app/am$b;->a(Landroid/app/NotificationManager;Ljava/lang/String;I)V

    .line 190
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-gt v0, v1, :cond_0

    .line 191
    new-instance v0, Landroid/support/v4/app/am$a;

    iget-object v1, p0, Landroid/support/v4/app/am;->e:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p2, p1}, Landroid/support/v4/app/am$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-direct {p0, v0}, Landroid/support/v4/app/am;->a(Landroid/support/v4/app/am$i;)V

    .line 193
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;ILandroid/app/Notification;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 219
    invoke-static {p3}, Landroid/support/v4/app/am;->a(Landroid/app/Notification;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 220
    new-instance v0, Landroid/support/v4/app/am$f;

    iget-object v1, p0, Landroid/support/v4/app/am;->e:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p2, p1, p3}, Landroid/support/v4/app/am$f;-><init>(Ljava/lang/String;ILjava/lang/String;Landroid/app/Notification;)V

    invoke-direct {p0, v0}, Landroid/support/v4/app/am;->a(Landroid/support/v4/app/am$i;)V

    .line 223
    sget-object v0, Landroid/support/v4/app/am;->i:Landroid/support/v4/app/am$b;

    iget-object v1, p0, Landroid/support/v4/app/am;->f:Landroid/app/NotificationManager;

    invoke-interface {v0, v1, p1, p2}, Landroid/support/v4/app/am$b;->a(Landroid/app/NotificationManager;Ljava/lang/String;I)V

    .line 227
    :goto_0
    return-void

    .line 225
    :cond_0
    sget-object v0, Landroid/support/v4/app/am;->i:Landroid/support/v4/app/am$b;

    iget-object v1, p0, Landroid/support/v4/app/am;->f:Landroid/app/NotificationManager;

    invoke-interface {v0, v1, p1, p2, p3}, Landroid/support/v4/app/am$b;->a(Landroid/app/NotificationManager;Ljava/lang/String;ILandroid/app/Notification;)V

    goto :goto_0
.end method
