.class public Lcom/avos/avospush/notification/NotificationCompat$Builder;
.super Ljava/lang/Object;
.source "NotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avos/avospush/notification/NotificationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field mActions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/avos/avospush/notification/NotificationCompat$Action;",
            ">;"
        }
    .end annotation
.end field

.field mContentInfo:Ljava/lang/CharSequence;

.field mContentIntent:Landroid/app/PendingIntent;

.field mContentText:Ljava/lang/CharSequence;

.field mContentTitle:Ljava/lang/CharSequence;

.field mContext:Landroid/content/Context;

.field mFullScreenIntent:Landroid/app/PendingIntent;

.field mLargeIcon:Landroid/graphics/Bitmap;

.field mNotification:Landroid/app/Notification;

.field mNumber:I

.field mPriority:I

.field mProgress:I

.field mProgressIndeterminate:Z

.field mProgressMax:I

.field mStyle:Lcom/avos/avospush/notification/NotificationCompat$Style;

.field mSubText:Ljava/lang/CharSequence;

.field mTickerView:Landroid/widget/RemoteViews;

.field mUseChronometer:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter

    .prologue
    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 182
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/avos/avospush/notification/NotificationCompat$Builder;->mActions:Ljava/util/ArrayList;

    .line 184
    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    iput-object v0, p0, Lcom/avos/avospush/notification/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    .line 196
    iput-object p1, p0, Lcom/avos/avospush/notification/NotificationCompat$Builder;->mContext:Landroid/content/Context;

    .line 199
    iget-object v0, p0, Lcom/avos/avospush/notification/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Landroid/app/Notification;->when:J

    .line 200
    iget-object v0, p0, Lcom/avos/avospush/notification/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    const/4 v1, -0x1

    iput v1, v0, Landroid/app/Notification;->audioStreamType:I

    .line 201
    const/4 v0, 0x0

    iput v0, p0, Lcom/avos/avospush/notification/NotificationCompat$Builder;->mPriority:I

    .line 202
    return-void
.end method

.method private setFlag(IZ)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 488
    if-eqz p2, :cond_0

    .line 489
    iget-object v0, p0, Lcom/avos/avospush/notification/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/2addr v1, p1

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 493
    :goto_0
    return-void

    .line 491
    :cond_0
    iget-object v0, p0, Lcom/avos/avospush/notification/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iget v1, v0, Landroid/app/Notification;->flags:I

    xor-int/lit8 v2, p1, -0x1

    and-int/2addr v1, v2

    iput v1, v0, Landroid/app/Notification;->flags:I

    goto :goto_0
.end method


# virtual methods
.method public addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Lcom/avos/avospush/notification/NotificationCompat$Builder;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 524
    iget-object v0, p0, Lcom/avos/avospush/notification/NotificationCompat$Builder;->mActions:Ljava/util/ArrayList;

    new-instance v1, Lcom/avos/avospush/notification/NotificationCompat$Action;

    invoke-direct {v1, p1, p2, p3}, Lcom/avos/avospush/notification/NotificationCompat$Action;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 525
    return-object p0
.end method

.method public build()Landroid/app/Notification;
    .locals 1

    .prologue
    .line 557
    invoke-static {}, Lcom/avos/avospush/notification/NotificationCompat;->access$000()Lcom/avos/avospush/notification/NotificationCompat$NotificationCompatImpl;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/avos/avospush/notification/NotificationCompat$NotificationCompatImpl;->build(Lcom/avos/avospush/notification/NotificationCompat$Builder;)Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method public getNotification()Landroid/app/Notification;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 550
    invoke-static {}, Lcom/avos/avospush/notification/NotificationCompat;->access$000()Lcom/avos/avospush/notification/NotificationCompat$NotificationCompatImpl;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/avos/avospush/notification/NotificationCompat$NotificationCompatImpl;->build(Lcom/avos/avospush/notification/NotificationCompat$Builder;)Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method public setAutoCancel(Z)Lcom/avos/avospush/notification/NotificationCompat$Builder;
    .locals 1
    .parameter

    .prologue
    .line 466
    const/16 v0, 0x10

    invoke-direct {p0, v0, p1}, Lcom/avos/avospush/notification/NotificationCompat$Builder;->setFlag(IZ)V

    .line 467
    return-object p0
.end method

.method public setContent(Landroid/widget/RemoteViews;)Lcom/avos/avospush/notification/NotificationCompat$Builder;
    .locals 1
    .parameter

    .prologue
    .line 316
    iget-object v0, p0, Lcom/avos/avospush/notification/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 317
    return-object p0
.end method

.method public setContentInfo(Ljava/lang/CharSequence;)Lcom/avos/avospush/notification/NotificationCompat$Builder;
    .locals 0
    .parameter

    .prologue
    .line 297
    iput-object p1, p0, Lcom/avos/avospush/notification/NotificationCompat$Builder;->mContentInfo:Ljava/lang/CharSequence;

    .line 298
    return-object p0
.end method

.method public setContentIntent(Landroid/app/PendingIntent;)Lcom/avos/avospush/notification/NotificationCompat$Builder;
    .locals 0
    .parameter

    .prologue
    .line 328
    iput-object p1, p0, Lcom/avos/avospush/notification/NotificationCompat$Builder;->mContentIntent:Landroid/app/PendingIntent;

    .line 329
    return-object p0
.end method

.method public setContentText(Ljava/lang/CharSequence;)Lcom/avos/avospush/notification/NotificationCompat$Builder;
    .locals 0
    .parameter

    .prologue
    .line 268
    iput-object p1, p0, Lcom/avos/avospush/notification/NotificationCompat$Builder;->mContentText:Ljava/lang/CharSequence;

    .line 269
    return-object p0
.end method

.method public setContentTitle(Ljava/lang/CharSequence;)Lcom/avos/avospush/notification/NotificationCompat$Builder;
    .locals 0
    .parameter

    .prologue
    .line 260
    iput-object p1, p0, Lcom/avos/avospush/notification/NotificationCompat$Builder;->mContentTitle:Ljava/lang/CharSequence;

    .line 261
    return-object p0
.end method

.method public setDefaults(I)Lcom/avos/avospush/notification/NotificationCompat$Builder;
    .locals 2
    .parameter

    .prologue
    .line 480
    iget-object v0, p0, Lcom/avos/avospush/notification/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iput p1, v0, Landroid/app/Notification;->defaults:I

    .line 481
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_0

    .line 482
    iget-object v0, p0, Lcom/avos/avospush/notification/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 484
    :cond_0
    return-object p0
.end method

.method public setDeleteIntent(Landroid/app/PendingIntent;)Lcom/avos/avospush/notification/NotificationCompat$Builder;
    .locals 1
    .parameter

    .prologue
    .line 340
    iget-object v0, p0, Lcom/avos/avospush/notification/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 341
    return-object p0
.end method

.method public setFullScreenIntent(Landroid/app/PendingIntent;Z)Lcom/avos/avospush/notification/NotificationCompat$Builder;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 356
    iput-object p1, p0, Lcom/avos/avospush/notification/NotificationCompat$Builder;->mFullScreenIntent:Landroid/app/PendingIntent;

    .line 357
    const/16 v0, 0x80

    invoke-direct {p0, v0, p2}, Lcom/avos/avospush/notification/NotificationCompat$Builder;->setFlag(IZ)V

    .line 358
    return-object p0
.end method

.method public setLargeIcon(Landroid/graphics/Bitmap;)Lcom/avos/avospush/notification/NotificationCompat$Builder;
    .locals 0
    .parameter

    .prologue
    .line 383
    iput-object p1, p0, Lcom/avos/avospush/notification/NotificationCompat$Builder;->mLargeIcon:Landroid/graphics/Bitmap;

    .line 384
    return-object p0
.end method

.method public setLights(III)Lcom/avos/avospush/notification/NotificationCompat$Builder;
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 424
    iget-object v0, p0, Lcom/avos/avospush/notification/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iput p1, v0, Landroid/app/Notification;->ledARGB:I

    .line 425
    iget-object v0, p0, Lcom/avos/avospush/notification/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iput p2, v0, Landroid/app/Notification;->ledOnMS:I

    .line 426
    iget-object v0, p0, Lcom/avos/avospush/notification/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iput p3, v0, Landroid/app/Notification;->ledOffMS:I

    .line 427
    iget-object v0, p0, Lcom/avos/avospush/notification/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iget v0, v0, Landroid/app/Notification;->ledOnMS:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/avos/avospush/notification/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iget v0, v0, Landroid/app/Notification;->ledOffMS:I

    if-eqz v0, :cond_0

    move v0, v1

    .line 428
    :goto_0
    iget-object v3, p0, Lcom/avos/avospush/notification/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iget-object v4, p0, Lcom/avos/avospush/notification/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iget v4, v4, Landroid/app/Notification;->flags:I

    and-int/lit8 v4, v4, -0x2

    if-eqz v0, :cond_1

    :goto_1
    or-int v0, v4, v1

    iput v0, v3, Landroid/app/Notification;->flags:I

    .line 431
    return-object p0

    :cond_0
    move v0, v2

    .line 427
    goto :goto_0

    :cond_1
    move v1, v2

    .line 428
    goto :goto_1
.end method

.method public setNumber(I)Lcom/avos/avospush/notification/NotificationCompat$Builder;
    .locals 0
    .parameter

    .prologue
    .line 289
    iput p1, p0, Lcom/avos/avospush/notification/NotificationCompat$Builder;->mNumber:I

    .line 290
    return-object p0
.end method

.method public setOngoing(Z)Lcom/avos/avospush/notification/NotificationCompat$Builder;
    .locals 1
    .parameter

    .prologue
    .line 447
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lcom/avos/avospush/notification/NotificationCompat$Builder;->setFlag(IZ)V

    .line 448
    return-object p0
.end method

.method public setOnlyAlertOnce(Z)Lcom/avos/avospush/notification/NotificationCompat$Builder;
    .locals 1
    .parameter

    .prologue
    .line 456
    const/16 v0, 0x8

    invoke-direct {p0, v0, p1}, Lcom/avos/avospush/notification/NotificationCompat$Builder;->setFlag(IZ)V

    .line 457
    return-object p0
.end method

.method public setPriority(I)Lcom/avos/avospush/notification/NotificationCompat$Builder;
    .locals 0
    .parameter

    .prologue
    .line 505
    iput p1, p0, Lcom/avos/avospush/notification/NotificationCompat$Builder;->mPriority:I

    .line 506
    return-object p0
.end method

.method public setProgress(IIZ)Lcom/avos/avospush/notification/NotificationCompat$Builder;
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 306
    iput p1, p0, Lcom/avos/avospush/notification/NotificationCompat$Builder;->mProgressMax:I

    .line 307
    iput p2, p0, Lcom/avos/avospush/notification/NotificationCompat$Builder;->mProgress:I

    .line 308
    iput-boolean p3, p0, Lcom/avos/avospush/notification/NotificationCompat$Builder;->mProgressIndeterminate:Z

    .line 309
    return-object p0
.end method

.method public setSmallIcon(I)Lcom/avos/avospush/notification/NotificationCompat$Builder;
    .locals 1
    .parameter

    .prologue
    .line 236
    iget-object v0, p0, Lcom/avos/avospush/notification/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iput p1, v0, Landroid/app/Notification;->icon:I

    .line 237
    return-object p0
.end method

.method public setSmallIcon(II)Lcom/avos/avospush/notification/NotificationCompat$Builder;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 251
    iget-object v0, p0, Lcom/avos/avospush/notification/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iput p1, v0, Landroid/app/Notification;->icon:I

    .line 252
    iget-object v0, p0, Lcom/avos/avospush/notification/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iput p2, v0, Landroid/app/Notification;->iconLevel:I

    .line 253
    return-object p0
.end method

.method public setSound(Landroid/net/Uri;)Lcom/avos/avospush/notification/NotificationCompat$Builder;
    .locals 2
    .parameter

    .prologue
    .line 391
    iget-object v0, p0, Lcom/avos/avospush/notification/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 392
    iget-object v0, p0, Lcom/avos/avospush/notification/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    const/4 v1, -0x1

    iput v1, v0, Landroid/app/Notification;->audioStreamType:I

    .line 393
    return-object p0
.end method

.method public setSound(Landroid/net/Uri;I)Lcom/avos/avospush/notification/NotificationCompat$Builder;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 403
    iget-object v0, p0, Lcom/avos/avospush/notification/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 404
    iget-object v0, p0, Lcom/avos/avospush/notification/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iput p2, v0, Landroid/app/Notification;->audioStreamType:I

    .line 405
    return-object p0
.end method

.method public setStyle(Lcom/avos/avospush/notification/NotificationCompat$Style;)Lcom/avos/avospush/notification/NotificationCompat$Builder;
    .locals 1
    .parameter

    .prologue
    .line 536
    iget-object v0, p0, Lcom/avos/avospush/notification/NotificationCompat$Builder;->mStyle:Lcom/avos/avospush/notification/NotificationCompat$Style;

    if-eq v0, p1, :cond_0

    .line 537
    iput-object p1, p0, Lcom/avos/avospush/notification/NotificationCompat$Builder;->mStyle:Lcom/avos/avospush/notification/NotificationCompat$Style;

    .line 538
    iget-object v0, p0, Lcom/avos/avospush/notification/NotificationCompat$Builder;->mStyle:Lcom/avos/avospush/notification/NotificationCompat$Style;

    if-eqz v0, :cond_0

    .line 539
    iget-object v0, p0, Lcom/avos/avospush/notification/NotificationCompat$Builder;->mStyle:Lcom/avos/avospush/notification/NotificationCompat$Style;

    invoke-virtual {v0, p0}, Lcom/avos/avospush/notification/NotificationCompat$Style;->setBuilder(Lcom/avos/avospush/notification/NotificationCompat$Builder;)V

    .line 542
    :cond_0
    return-object p0
.end method

.method public setSubText(Ljava/lang/CharSequence;)Lcom/avos/avospush/notification/NotificationCompat$Builder;
    .locals 0
    .parameter

    .prologue
    .line 280
    iput-object p1, p0, Lcom/avos/avospush/notification/NotificationCompat$Builder;->mSubText:Ljava/lang/CharSequence;

    .line 281
    return-object p0
.end method

.method public setTicker(Ljava/lang/CharSequence;)Lcom/avos/avospush/notification/NotificationCompat$Builder;
    .locals 1
    .parameter

    .prologue
    .line 365
    iget-object v0, p0, Lcom/avos/avospush/notification/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 366
    return-object p0
.end method

.method public setTicker(Ljava/lang/CharSequence;Landroid/widget/RemoteViews;)Lcom/avos/avospush/notification/NotificationCompat$Builder;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 374
    iget-object v0, p0, Lcom/avos/avospush/notification/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 375
    iput-object p2, p0, Lcom/avos/avospush/notification/NotificationCompat$Builder;->mTickerView:Landroid/widget/RemoteViews;

    .line 376
    return-object p0
.end method

.method public setUsesChronometer(Z)Lcom/avos/avospush/notification/NotificationCompat$Builder;
    .locals 0
    .parameter

    .prologue
    .line 224
    iput-boolean p1, p0, Lcom/avos/avospush/notification/NotificationCompat$Builder;->mUseChronometer:Z

    .line 225
    return-object p0
.end method

.method public setVibrate([J)Lcom/avos/avospush/notification/NotificationCompat$Builder;
    .locals 1
    .parameter

    .prologue
    .line 414
    iget-object v0, p0, Lcom/avos/avospush/notification/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->vibrate:[J

    .line 415
    return-object p0
.end method

.method public setWhen(J)Lcom/avos/avospush/notification/NotificationCompat$Builder;
    .locals 1
    .parameter

    .prologue
    .line 208
    iget-object v0, p0, Lcom/avos/avospush/notification/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iput-wide p1, v0, Landroid/app/Notification;->when:J

    .line 209
    return-object p0
.end method
