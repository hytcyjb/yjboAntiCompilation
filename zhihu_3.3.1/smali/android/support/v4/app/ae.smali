.class Landroid/support/v4/app/ae;
.super Ljava/lang/Object;
.source "NotificationCompatApi20.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/app/ae$a;
    }
.end annotation


# direct methods
.method public static a(Landroid/app/Notification$Builder;Landroid/support/v4/app/ag$a;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 102
    new-instance v1, Landroid/app/Notification$Action$Builder;

    invoke-virtual {p1}, Landroid/support/v4/app/ag$a;->a()I

    move-result v0

    invoke-virtual {p1}, Landroid/support/v4/app/ag$a;->b()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p1}, Landroid/support/v4/app/ag$a;->c()Landroid/app/PendingIntent;

    move-result-object v3

    invoke-direct {v1, v0, v2, v3}, Landroid/app/Notification$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 104
    invoke-virtual {p1}, Landroid/support/v4/app/ag$a;->f()[Landroid/support/v4/app/aq$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 105
    invoke-virtual {p1}, Landroid/support/v4/app/ag$a;->f()[Landroid/support/v4/app/aq$a;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/app/ap;->a([Landroid/support/v4/app/aq$a;)[Landroid/app/RemoteInput;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 107
    invoke-virtual {v1, v4}, Landroid/app/Notification$Action$Builder;->addRemoteInput(Landroid/app/RemoteInput;)Landroid/app/Notification$Action$Builder;

    .line 105
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 110
    :cond_0
    invoke-virtual {p1}, Landroid/support/v4/app/ag$a;->d()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 111
    invoke-virtual {p1}, Landroid/support/v4/app/ag$a;->d()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/Notification$Action$Builder;->addExtras(Landroid/os/Bundle;)Landroid/app/Notification$Action$Builder;

    .line 113
    :cond_1
    invoke-virtual {v1}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    .line 114
    return-void
.end method
