.class Landroid/support/v4/app/ad$l;
.super Landroid/support/v4/app/ad$j;
.source "NotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/ad;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "l"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 566
    invoke-direct {p0}, Landroid/support/v4/app/ad$j;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v4/app/ad$d;Landroid/support/v4/app/ad$e;)Landroid/app/Notification;
    .locals 10
    .parameter
    .parameter

    .prologue
    .line 569
    iget-object v0, p1, Landroid/support/v4/app/ad$d;->a:Landroid/content/Context;

    iget-object v1, p1, Landroid/support/v4/app/ad$d;->B:Landroid/app/Notification;

    iget-object v2, p1, Landroid/support/v4/app/ad$d;->b:Ljava/lang/CharSequence;

    iget-object v3, p1, Landroid/support/v4/app/ad$d;->c:Ljava/lang/CharSequence;

    iget-object v4, p1, Landroid/support/v4/app/ad$d;->h:Ljava/lang/CharSequence;

    iget-object v5, p1, Landroid/support/v4/app/ad$d;->f:Landroid/widget/RemoteViews;

    iget v6, p1, Landroid/support/v4/app/ad$d;->i:I

    iget-object v7, p1, Landroid/support/v4/app/ad$d;->d:Landroid/app/PendingIntent;

    iget-object v8, p1, Landroid/support/v4/app/ad$d;->e:Landroid/app/PendingIntent;

    iget-object v9, p1, Landroid/support/v4/app/ad$d;->g:Landroid/graphics/Bitmap;

    invoke-static/range {v0 .. v9}, Landroid/support/v4/app/ai;->a(Landroid/content/Context;Landroid/app/Notification;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/widget/RemoteViews;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/graphics/Bitmap;)Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method
