.class Landroid/support/v4/app/ad$k;
.super Landroid/support/v4/app/ad$j;
.source "NotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/ad;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "k"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 552
    invoke-direct {p0}, Landroid/support/v4/app/ad$j;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v4/app/ad$d;Landroid/support/v4/app/ad$e;)Landroid/app/Notification;
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 555
    iget-object v0, p1, Landroid/support/v4/app/ad$d;->B:Landroid/app/Notification;

    .line 556
    iget-object v1, p1, Landroid/support/v4/app/ad$d;->a:Landroid/content/Context;

    iget-object v2, p1, Landroid/support/v4/app/ad$d;->b:Ljava/lang/CharSequence;

    iget-object v3, p1, Landroid/support/v4/app/ad$d;->c:Ljava/lang/CharSequence;

    iget-object v4, p1, Landroid/support/v4/app/ad$d;->d:Landroid/app/PendingIntent;

    iget-object v5, p1, Landroid/support/v4/app/ad$d;->e:Landroid/app/PendingIntent;

    invoke-static/range {v0 .. v5}, Landroid/support/v4/app/ah;->a(Landroid/app/Notification;Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)Landroid/app/Notification;

    move-result-object v0

    .line 559
    iget v1, p1, Landroid/support/v4/app/ad$d;->j:I

    if-lez v1, :cond_0

    .line 560
    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/lit16 v1, v1, 0x80

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 562
    :cond_0
    return-object v0
.end method
