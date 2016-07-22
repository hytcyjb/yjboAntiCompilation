.class Landroid/support/v4/app/am$g;
.super Ljava/lang/Object;
.source "NotificationManagerCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/am;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "g"
.end annotation


# instance fields
.field final a:Landroid/content/ComponentName;

.field final b:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 551
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 552
    iput-object p1, p0, Landroid/support/v4/app/am$g;->a:Landroid/content/ComponentName;

    .line 553
    iput-object p2, p0, Landroid/support/v4/app/am$g;->b:Landroid/os/IBinder;

    .line 554
    return-void
.end method
